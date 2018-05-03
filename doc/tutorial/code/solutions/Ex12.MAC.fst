(* This file implements message authentication codes based on keyed
   hashes, namely HMAC-SHA1, and their idealization under the INT-CMA
   computational assumption *)

module Ex12.MAC

open Ex12.SHA1
open FStar.IO
module SEM = FStar.StrongExcludedMiddle
open FStar.Classical
open FStar.Squash

open FStar.Preorder
open FStar.Heap
open FStar.ST
open FStar.MRef

module SHA1 = Ex12.SHA1
module SEM = FStar.StrongExcludedMiddle
open FStar.List.Tot


(* Transforming an arbitrary predicate into a decidable ghost boolean-valued *)
(* function. Used to lower the universe level of predicates when stored in the heap *)
let pred_to_dec_ghost (#a:Type) (p:a -> Tot Type0)
  : a -> GTot bool
= fun x -> SEM.strong_excluded_middle (p x)

(* And the converse (which is actually not used here) *)
let dec_ghost_to_pred (#a:Type) (p:a -> GTot bool)
  : a -> Tot Type0
= fun x -> b2t (p x)


(* ---- specification *)


(* We make the MAC.key abstract so that it cannot be accessed by
    the adversary *)

abstract type key = SHA1.key

(* key log *)
private
let unique_registry_order' (#a:eqtype) (#b:Type) (l1 l2:list (a * b))
  = (forall x. x `memP` l1 ==> x `memP` l2) /\ (noRepeats (map fst l1) ==> noRepeats (map fst l2))
let unique_registry_order (#a:eqtype) (#b:Type) : Tot (preorder (l:list (a * b))) =
  unique_registry_order' #a #b

type key_entry = key * (text -> GTot bool)
type key_lref = mref (l:list key_entry) unique_registry_order

(** returns the no repeats predicate with a type expressing that it is stable under the unique_registry_order. The unit function is due to a known encoding issue: https://github.com/FStarLang/FStar/issues/1150 *)

let unicity ()
  : Tot (p:(l:list key_entry -> Type0){Preorder.stable p (unique_registry_order)})
= fun keys -> noRepeats (map fst keys)

(** allocates the global key log and witnesses its no repeats property *)
let key_log : lr:key_lref{token lr (unicity ())} =
  let lr = alloc [] in
  witness_token lr (unicity ()) ;
  lr

(** a property of the key_log, which states that key k is associated to predicate p *)
private
let associated_to' (k:key) (p:text -> GTot bool)  =
  fun keys -> (k,p) `memP` keys
let associated_to k p
  : Tot (p:(l:list key_entry -> Type0){Preorder.stable p (unique_registry_order)})
= associated_to' k p

(* we attach an authenticated properties to each key,
   used as a pre-condition for MACing and
   a postcondition of MAC verification *)
type pkey (p:text -> Type) = k:key{token key_log (associated_to k (pred_to_dec_ghost p))}

(* `key_prop k t` holds if k has been generated by `keygen` (see below) *)
(* and if the associated property hold of the text t *)
let key_prop k t =  exists p. token key_log (associated_to k p) /\ p t
 

(* Lifting exists on stable predicates *)
private
let spred_exists' (#a #b:Type) (p: b -> a -> Type0) = fun (y:a) -> exists (x:b). p x y

(* bound term variable not found (after unmangling) : 'a#... *)
//let spred_exists_stable' (#a:Type) (rel:preorder a) (p:a -> a -> Type0) (w : squash (forall x. Preorder.stable (p x) rel)) (y1 y2:a) : Lemma (requires spred_exists' #a #a p y1 /\ y1 `rel` y2) (ensures spred_exists' #a #a p y2) = give_proof w


private
let spred_exists_stable' (rel:preorder _) p (w : squash (forall x. Preorder.stable (p x) rel)) y1 y2 : Lemma (requires spred_exists' p y1 /\ y1 `rel` y2) (ensures spred_exists' p y2) = give_proof w

private
let spred_exists_stable (rel:preorder _) p : Lemma (requires (forall x. Preorder.stable (p x) rel))
    (ensures (Preorder.stable (spred_exists' p) rel))
=
  forall_intro_2 (fun y1 y2 ->
    move_requires (spred_exists_stable' rel p (get_proof (forall x. Preorder.stable (p x) rel)) y1) y2
    <: Lemma (spred_exists' p y1 /\ y1 `rel` y2 ==> spred_exists' p y2))

let spred_exists (#a #b:Type) (#rel:preorder a) (p:(b -> a -> Type0){forall (x:b). Preorder.stable (p x) rel})
  : spred rel
= spred_exists_stable rel p ; spred_exists' p


(* Lifting /\ on stable predicates *)
private
let spred_and' #rel (p q : spred rel) = fun x -> p x /\ q x
let spred_and #rel (p q : spred rel) : spred rel = spred_and' p q

let token_intro_and #a #rel (r:mref a rel) (p q : spred rel)
  : ST unit (requires (fun _ -> token r p /\ token r q))
    (ensures (fun _ _ _ -> token r (spred_and p q)))
= recall_token r p ; recall_token r q ; witness_token r(spred_and p q)


(* Proofs about key_prop *)

let rec mem_assoc_unique (#a:eqtype) (#b:Type) (x:a) (l:list (a * b)) (y1 y2:b)
  : Lemma (requires ((x, y1) `memP` l /\ (x,y2) `memP` l /\ noRepeats (map fst l)))
          (ensures (y1 == y2))
= match l with
  | [] -> ()
  | x0 :: xs ->
    if x = fst x0 then begin
        mem_memP x (map fst xs) ;
        memP_map_intro fst (x, y1) xs ;
        memP_map_intro fst (x,y2) xs
      end
    else
      mem_assoc_unique x xs y1 y2

let key_cipher_text k t (p:text -> GTot bool) x : Tot Type0 = associated_to k p x /\ p t
let key_cipher_text_spred k t : spred unique_registry_order =
  spred_exists (key_cipher_text k t)

let key_cipher_text_spred_unfold k t x
  : Lemma (key_cipher_text_spred k t x <==> (exists (p:text -> GTot bool). associated_to k p x /\ p t))
= assert_norm (key_cipher_text_spred k t x ==> (exists (p:text -> GTot bool). associated_to k p x /\ p t))

let key_prop_entails_key_cipher_text_token k t
  : Lemma (requires (key_prop k t)) (ensures (token key_log (key_cipher_text_spred k t))) =
  let aux p : Lemma (requires (token key_log (associated_to k p) /\ p t))
              (ensures (token key_log (key_cipher_text_spred k t)))
      = lemma_functoriality key_log (associated_to k p) (key_cipher_text_spred k t)
  in
  let aux p : Lemma (token key_log (associated_to k p) /\ p t ==> token key_log (key_cipher_text_spred k t)) =
    move_requires aux p
  in
  forall_to_exists aux

let key_prop_unicity (k:key) (p:text -> GTot bool) (t:text) keys
 : Lemma
  (requires ((unicity () `spred_and` (associated_to k p `spred_and` key_cipher_text_spred k t)) keys))
  (ensures (p t))
  =
  let aux p' : Lemma (requires associated_to k p' keys /\ p' t) (ensures p t) =
    mem_assoc_unique k keys p p'
  in
  assert (key_cipher_text_spred k t keys) ;
  key_cipher_text_spred_unfold k t keys ;
  assert( exists p. associated_to k p keys /\ p t ) ;
  forall_to_exists (move_requires aux)

let key_prop_unicity' (k:key) (p:text -> GTot bool) (t:text)
  : Lemma (forall keys. (unicity () `spred_and` (associated_to k p `spred_and` key_cipher_text_spred k t)) keys ==> p t)
= forall_intro (move_requires (key_prop_unicity k p t))


let to_key_prop #p (k:pkey p) : Lemma (forall x. p x ==> key_prop k x) = ()
let from_key_prop #p (k:pkey p) t : ST unit (requires (fun _ -> key_prop k t)) (ensures (fun _ _ _ -> p t)) =
  key_prop_entails_key_cipher_text_token k t ;
  let p = pred_to_dec_ghost p in
  token_intro_and key_log (associated_to k p) (key_cipher_text_spred k t) ;
  token_intro_and key_log (unicity ()) (associated_to k p `spred_and` key_cipher_text_spred k t) ;
  key_prop_unicity' k p t ;
  lemma_functoriality key_log (unicity () `spred_and` (associated_to k p `spred_and` key_cipher_text_spred k t)) (fun _ -> p t) ;
  recall_token key_log (fun _ -> p t)

(* to model authentication, we log all genuine calls
   to MACs; the ideal implementation below uses the
   log to correct errors. *)

type tag = SHA1.tag

noeq
type entry =
  | Entry : k:key
         -> t:text{key_prop k t}
         -> m:tag
         -> entry

(** the log needs to be private so the adversary cannot
    add or remove entries *)
private type log_t = ref (list entry)
let log:log_t = FStar.ST.alloc []

open FStar.All

// BEGIN: MacSpec
val keygen: p:(text -> Type0) -> ML (pkey p)
val mac:    k:key -> t:text{key_prop k t} -> ST tag
  (requires (fun h -> True))
  (ensures (fun h x h' -> modifies (Set.singleton (addr_of log)) h h'))
val verify: k:key -> t:text -> tag -> ST (b:bool{b ==> key_prop k t})
  (requires (fun h -> True))
  (ensures (fun h x h' -> (x ==> key_prop k t) /\ modifies Set.empty h h'))
// END: MacSpec

(* ---- implementation *)

let keygen (p: (text -> Type)) =
  let p = pred_to_dec_ghost p in
  let k:key = sample keysize in
  if k `mem` map fst !key_log
  then failwith "Not a valid key"
  else begin
    key_log := (k,p) :: !key_log ;
    witness_token key_log (associated_to k p) ;
    k
  end

let mac k t =
  let m = hmac_sha1 k t in
  log := Entry k t m :: !log;
  m

let verify k text tag =
  (* to verify, we simply recompute & compare *)
  let m = hmac_sha1 k text in
  let verified = (Platform.Bytes.equalBytes m tag) in
  let equal_entry (Entry k' text' tag') =
    Platform.Bytes.equalBytes k k' && Platform.Bytes.equalBytes text text'
  in
  let entry_opt = List.Tot.find equal_entry !log in
  let found = Some? entry_opt in
  // begin match entry_opt with
  //   | None -> ()
  //   | Some (Entry k' text' _) -> ()
  //   //assert (k == k' /\ text == text' /\ key_prop k' text')
  // end ;

  (* plain, concrete implementation (ignoring the log) *)
//verified

  (* ideal, error-correcting implementation *)
  verified && found
//  found

  (* error-detecting implementation for the INT-CMA game *)
//(if verified && not found then win := Some(k,text,tag));
//verified

(* VARIANT CTXT vs CPA: is the tag authenticated?
   otherwise do not include m:tag in the entry *)

//      (fun (Entry k' text' tag') -> k=k' && text=text' && tag=tag')
