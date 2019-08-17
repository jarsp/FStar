open Prims
type step =
  | Beta 
  | Iota 
  | Zeta 
  | Exclude of step 
  | Weak 
  | HNF 
  | Primops 
  | Eager_unfolding 
  | Inlining 
  | DoNotUnfoldPureLets 
  | UnfoldUntil of FStar_Syntax_Syntax.delta_depth 
  | UnfoldOnly of FStar_Ident.lid Prims.list 
  | UnfoldFully of FStar_Ident.lid Prims.list 
  | UnfoldAttr of FStar_Ident.lid Prims.list 
  | UnfoldTac 
  | PureSubtermsWithinComputations 
  | Simplify 
  | EraseUniverses 
  | AllowUnboundUniverses 
  | Reify 
  | CompressUvars 
  | NoFullNorm 
  | CheckNoUvars 
  | Unmeta 
  | Unascribe 
  | NBE 
  | ForExtraction 
let (uu___is_Beta : step -> Prims.bool) =
  fun projectee  -> match projectee with | Beta  -> true | uu____103 -> false 
let (uu___is_Iota : step -> Prims.bool) =
  fun projectee  -> match projectee with | Iota  -> true | uu____114 -> false 
let (uu___is_Zeta : step -> Prims.bool) =
  fun projectee  -> match projectee with | Zeta  -> true | uu____125 -> false 
let (uu___is_Exclude : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | Exclude _0 -> true | uu____137 -> false
  
let (__proj__Exclude__item___0 : step -> step) =
  fun projectee  -> match projectee with | Exclude _0 -> _0 
let (uu___is_Weak : step -> Prims.bool) =
  fun projectee  -> match projectee with | Weak  -> true | uu____155 -> false 
let (uu___is_HNF : step -> Prims.bool) =
  fun projectee  -> match projectee with | HNF  -> true | uu____166 -> false 
let (uu___is_Primops : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | Primops  -> true | uu____177 -> false
  
let (uu___is_Eager_unfolding : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | Eager_unfolding  -> true | uu____188 -> false
  
let (uu___is_Inlining : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | Inlining  -> true | uu____199 -> false
  
let (uu___is_DoNotUnfoldPureLets : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | DoNotUnfoldPureLets  -> true | uu____210 -> false
  
let (uu___is_UnfoldUntil : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | UnfoldUntil _0 -> true | uu____222 -> false
  
let (__proj__UnfoldUntil__item___0 : step -> FStar_Syntax_Syntax.delta_depth)
  = fun projectee  -> match projectee with | UnfoldUntil _0 -> _0 
let (uu___is_UnfoldOnly : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | UnfoldOnly _0 -> true | uu____243 -> false
  
let (__proj__UnfoldOnly__item___0 : step -> FStar_Ident.lid Prims.list) =
  fun projectee  -> match projectee with | UnfoldOnly _0 -> _0 
let (uu___is_UnfoldFully : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | UnfoldFully _0 -> true | uu____270 -> false
  
let (__proj__UnfoldFully__item___0 : step -> FStar_Ident.lid Prims.list) =
  fun projectee  -> match projectee with | UnfoldFully _0 -> _0 
let (uu___is_UnfoldAttr : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | UnfoldAttr _0 -> true | uu____297 -> false
  
let (__proj__UnfoldAttr__item___0 : step -> FStar_Ident.lid Prims.list) =
  fun projectee  -> match projectee with | UnfoldAttr _0 -> _0 
let (uu___is_UnfoldTac : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | UnfoldTac  -> true | uu____321 -> false
  
let (uu___is_PureSubtermsWithinComputations : step -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | PureSubtermsWithinComputations  -> true
    | uu____332 -> false
  
let (uu___is_Simplify : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | Simplify  -> true | uu____343 -> false
  
let (uu___is_EraseUniverses : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | EraseUniverses  -> true | uu____354 -> false
  
let (uu___is_AllowUnboundUniverses : step -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | AllowUnboundUniverses  -> true
    | uu____365 -> false
  
let (uu___is_Reify : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | Reify  -> true | uu____376 -> false
  
let (uu___is_CompressUvars : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | CompressUvars  -> true | uu____387 -> false
  
let (uu___is_NoFullNorm : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | NoFullNorm  -> true | uu____398 -> false
  
let (uu___is_CheckNoUvars : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | CheckNoUvars  -> true | uu____409 -> false
  
let (uu___is_Unmeta : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | Unmeta  -> true | uu____420 -> false
  
let (uu___is_Unascribe : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | Unascribe  -> true | uu____431 -> false
  
let (uu___is_NBE : step -> Prims.bool) =
  fun projectee  -> match projectee with | NBE  -> true | uu____442 -> false 
let (uu___is_ForExtraction : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | ForExtraction  -> true | uu____453 -> false
  
type steps = step Prims.list
let rec (eq_step : step -> step -> Prims.bool) =
  fun s1  ->
    fun s2  ->
      match (s1, s2) with
      | (Beta ,Beta ) -> true
      | (Iota ,Iota ) -> true
      | (Zeta ,Zeta ) -> true
      | (Weak ,Weak ) -> true
      | (HNF ,HNF ) -> true
      | (Primops ,Primops ) -> true
      | (Eager_unfolding ,Eager_unfolding ) -> true
      | (Inlining ,Inlining ) -> true
      | (DoNotUnfoldPureLets ,DoNotUnfoldPureLets ) -> true
      | (UnfoldTac ,UnfoldTac ) -> true
      | (PureSubtermsWithinComputations ,PureSubtermsWithinComputations ) ->
          true
      | (Simplify ,Simplify ) -> true
      | (EraseUniverses ,EraseUniverses ) -> true
      | (AllowUnboundUniverses ,AllowUnboundUniverses ) -> true
      | (Reify ,Reify ) -> true
      | (CompressUvars ,CompressUvars ) -> true
      | (NoFullNorm ,NoFullNorm ) -> true
      | (CheckNoUvars ,CheckNoUvars ) -> true
      | (Unmeta ,Unmeta ) -> true
      | (Unascribe ,Unascribe ) -> true
      | (NBE ,NBE ) -> true
      | (Exclude s11,Exclude s21) -> eq_step s11 s21
      | (UnfoldUntil s11,UnfoldUntil s21) -> s11 = s21
      | (UnfoldOnly lids1,UnfoldOnly lids2) ->
          ((FStar_List.length lids1) = (FStar_List.length lids2)) &&
            (FStar_List.forall2 FStar_Ident.lid_equals lids1 lids2)
      | (UnfoldFully lids1,UnfoldFully lids2) ->
          ((FStar_List.length lids1) = (FStar_List.length lids2)) &&
            (FStar_List.forall2 FStar_Ident.lid_equals lids1 lids2)
      | (UnfoldAttr lids1,UnfoldAttr lids2) ->
          ((FStar_List.length lids1) = (FStar_List.length lids2)) &&
            (FStar_List.forall2 FStar_Ident.lid_equals lids1 lids2)
      | uu____513 -> false
  
type sig_binding =
  (FStar_Ident.lident Prims.list * FStar_Syntax_Syntax.sigelt)
type delta_level =
  | NoDelta 
  | InliningDelta 
  | Eager_unfolding_only 
  | Unfold of FStar_Syntax_Syntax.delta_depth 
let (uu___is_NoDelta : delta_level -> Prims.bool) =
  fun projectee  ->
    match projectee with | NoDelta  -> true | uu____539 -> false
  
let (uu___is_InliningDelta : delta_level -> Prims.bool) =
  fun projectee  ->
    match projectee with | InliningDelta  -> true | uu____550 -> false
  
let (uu___is_Eager_unfolding_only : delta_level -> Prims.bool) =
  fun projectee  ->
    match projectee with | Eager_unfolding_only  -> true | uu____561 -> false
  
let (uu___is_Unfold : delta_level -> Prims.bool) =
  fun projectee  ->
    match projectee with | Unfold _0 -> true | uu____573 -> false
  
let (__proj__Unfold__item___0 :
  delta_level -> FStar_Syntax_Syntax.delta_depth) =
  fun projectee  -> match projectee with | Unfold _0 -> _0 
type mlift =
  {
  mlift_t: FStar_Syntax_Syntax.tscheme FStar_Pervasives_Native.option ;
  mlift_wp:
    FStar_Syntax_Syntax.universe ->
      FStar_Syntax_Syntax.typ ->
        FStar_Syntax_Syntax.typ -> FStar_Syntax_Syntax.typ
    ;
  mlift_term:
    (FStar_Syntax_Syntax.universe ->
       FStar_Syntax_Syntax.typ ->
         FStar_Syntax_Syntax.typ ->
           FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
      FStar_Pervasives_Native.option
    }
let (__proj__Mkmlift__item__mlift_t :
  mlift -> FStar_Syntax_Syntax.tscheme FStar_Pervasives_Native.option) =
  fun projectee  ->
    match projectee with | { mlift_t; mlift_wp; mlift_term;_} -> mlift_t
  
let (__proj__Mkmlift__item__mlift_wp :
  mlift ->
    FStar_Syntax_Syntax.universe ->
      FStar_Syntax_Syntax.typ ->
        FStar_Syntax_Syntax.typ -> FStar_Syntax_Syntax.typ)
  =
  fun projectee  ->
    match projectee with | { mlift_t; mlift_wp; mlift_term;_} -> mlift_wp
  
let (__proj__Mkmlift__item__mlift_term :
  mlift ->
    (FStar_Syntax_Syntax.universe ->
       FStar_Syntax_Syntax.typ ->
         FStar_Syntax_Syntax.typ ->
           FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
      FStar_Pervasives_Native.option)
  =
  fun projectee  ->
    match projectee with | { mlift_t; mlift_wp; mlift_term;_} -> mlift_term
  
type edge =
  {
  msource: FStar_Ident.lident ;
  mtarget: FStar_Ident.lident ;
  mlift: mlift }
let (__proj__Mkedge__item__msource : edge -> FStar_Ident.lident) =
  fun projectee  ->
    match projectee with | { msource; mtarget; mlift;_} -> msource
  
let (__proj__Mkedge__item__mtarget : edge -> FStar_Ident.lident) =
  fun projectee  ->
    match projectee with | { msource; mtarget; mlift;_} -> mtarget
  
let (__proj__Mkedge__item__mlift : edge -> mlift) =
  fun projectee  ->
    match projectee with | { msource; mtarget; mlift;_} -> mlift
  
type effects =
  {
  decls:
    (FStar_Syntax_Syntax.eff_decl * FStar_Syntax_Syntax.qualifier Prims.list)
      Prims.list
    ;
  order: edge Prims.list ;
  joins:
    (FStar_Ident.lident * FStar_Ident.lident * FStar_Ident.lident * mlift *
      mlift) Prims.list
    }
let (__proj__Mkeffects__item__decls :
  effects ->
    (FStar_Syntax_Syntax.eff_decl * FStar_Syntax_Syntax.qualifier Prims.list)
      Prims.list)
  =
  fun projectee  -> match projectee with | { decls; order; joins;_} -> decls 
let (__proj__Mkeffects__item__order : effects -> edge Prims.list) =
  fun projectee  -> match projectee with | { decls; order; joins;_} -> order 
let (__proj__Mkeffects__item__joins :
  effects ->
    (FStar_Ident.lident * FStar_Ident.lident * FStar_Ident.lident * mlift *
      mlift) Prims.list)
  =
  fun projectee  -> match projectee with | { decls; order; joins;_} -> joins 
type name_prefix = Prims.string Prims.list
type proof_namespace = (name_prefix * Prims.bool) Prims.list
type cached_elt =
  (((FStar_Syntax_Syntax.universes * FStar_Syntax_Syntax.typ),(FStar_Syntax_Syntax.sigelt
                                                                *
                                                                FStar_Syntax_Syntax.universes
                                                                FStar_Pervasives_Native.option))
    FStar_Util.either * FStar_Range.range)
type goal = FStar_Syntax_Syntax.term
type env =
  {
  solver: solver_t ;
  range: FStar_Range.range ;
  curmodule: FStar_Ident.lident ;
  gamma: FStar_Syntax_Syntax.binding Prims.list ;
  gamma_sig: sig_binding Prims.list ;
  gamma_cache: cached_elt FStar_Util.smap ;
  modules: FStar_Syntax_Syntax.modul Prims.list ;
  expected_typ: FStar_Syntax_Syntax.typ FStar_Pervasives_Native.option ;
  sigtab: FStar_Syntax_Syntax.sigelt FStar_Util.smap ;
  attrtab: FStar_Syntax_Syntax.sigelt Prims.list FStar_Util.smap ;
  is_pattern: Prims.bool ;
  instantiate_imp: Prims.bool ;
  effects: effects ;
  generalize: Prims.bool ;
  letrecs:
    (FStar_Syntax_Syntax.lbname * FStar_Syntax_Syntax.typ *
      FStar_Syntax_Syntax.univ_names) Prims.list
    ;
  top_level: Prims.bool ;
  check_uvars: Prims.bool ;
  use_eq: Prims.bool ;
  is_iface: Prims.bool ;
  admit: Prims.bool ;
  lax: Prims.bool ;
  lax_universes: Prims.bool ;
  phase1: Prims.bool ;
  failhard: Prims.bool ;
  nosynth: Prims.bool ;
  uvar_subtyping: Prims.bool ;
  tc_term:
    env ->
      FStar_Syntax_Syntax.term ->
        (FStar_Syntax_Syntax.term * FStar_TypeChecker_Common.lcomp *
          FStar_TypeChecker_Common.guard_t)
    ;
  type_of:
    env ->
      FStar_Syntax_Syntax.term ->
        (FStar_Syntax_Syntax.term * FStar_Syntax_Syntax.typ *
          FStar_TypeChecker_Common.guard_t)
    ;
  universe_of:
    env -> FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.universe ;
  check_type_of:
    Prims.bool ->
      env ->
        FStar_Syntax_Syntax.term ->
          FStar_Syntax_Syntax.typ -> FStar_TypeChecker_Common.guard_t
    ;
  use_bv_sorts: Prims.bool ;
  qtbl_name_and_index:
    (Prims.int FStar_Util.smap * (FStar_Ident.lident * Prims.int)
      FStar_Pervasives_Native.option)
    ;
  normalized_eff_names: FStar_Ident.lident FStar_Util.smap ;
  fv_delta_depths: FStar_Syntax_Syntax.delta_depth FStar_Util.smap ;
  proof_ns: proof_namespace ;
  synth_hook:
    env ->
      FStar_Syntax_Syntax.typ ->
        FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term
    ;
  splice:
    env -> FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.sigelt Prims.list ;
  postprocess:
    env ->
      FStar_Syntax_Syntax.term ->
        FStar_Syntax_Syntax.typ ->
          FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term
    ;
  is_native_tactic: FStar_Ident.lid -> Prims.bool ;
  identifier_info: FStar_TypeChecker_Common.id_info_table FStar_ST.ref ;
  tc_hooks: tcenv_hooks ;
  dsenv: FStar_Syntax_DsEnv.env ;
  nbe:
    step Prims.list ->
      env -> FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term
    ;
  strict_args_tab:
    Prims.int Prims.list FStar_Pervasives_Native.option FStar_Util.smap }
and solver_t =
  {
  init: env -> unit ;
  push: Prims.string -> unit ;
  pop: Prims.string -> unit ;
  snapshot: Prims.string -> ((Prims.int * Prims.int * Prims.int) * unit) ;
  rollback:
    Prims.string ->
      (Prims.int * Prims.int * Prims.int) FStar_Pervasives_Native.option ->
        unit
    ;
  encode_sig: env -> FStar_Syntax_Syntax.sigelt -> unit ;
  preprocess:
    env -> goal -> (env * goal * FStar_Options.optionstate) Prims.list ;
  solve:
    (unit -> Prims.string) FStar_Pervasives_Native.option ->
      env -> FStar_Syntax_Syntax.typ -> unit
    ;
  finish: unit -> unit ;
  refresh: unit -> unit }
and tcenv_hooks =
  {
  tc_push_in_gamma_hook:
    env ->
      (FStar_Syntax_Syntax.binding,sig_binding) FStar_Util.either -> unit
    }
let (__proj__Mkenv__item__solver : env -> solver_t) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> solver
  
let (__proj__Mkenv__item__range : env -> FStar_Range.range) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> range
  
let (__proj__Mkenv__item__curmodule : env -> FStar_Ident.lident) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> curmodule
  
let (__proj__Mkenv__item__gamma :
  env -> FStar_Syntax_Syntax.binding Prims.list) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> gamma
  
let (__proj__Mkenv__item__gamma_sig : env -> sig_binding Prims.list) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> gamma_sig
  
let (__proj__Mkenv__item__gamma_cache : env -> cached_elt FStar_Util.smap) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> gamma_cache
  
let (__proj__Mkenv__item__modules :
  env -> FStar_Syntax_Syntax.modul Prims.list) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> modules
  
let (__proj__Mkenv__item__expected_typ :
  env -> FStar_Syntax_Syntax.typ FStar_Pervasives_Native.option) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> expected_typ
  
let (__proj__Mkenv__item__sigtab :
  env -> FStar_Syntax_Syntax.sigelt FStar_Util.smap) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> sigtab
  
let (__proj__Mkenv__item__attrtab :
  env -> FStar_Syntax_Syntax.sigelt Prims.list FStar_Util.smap) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> attrtab
  
let (__proj__Mkenv__item__is_pattern : env -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> is_pattern
  
let (__proj__Mkenv__item__instantiate_imp : env -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> instantiate_imp
  
let (__proj__Mkenv__item__effects : env -> effects) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> effects
  
let (__proj__Mkenv__item__generalize : env -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> generalize
  
let (__proj__Mkenv__item__letrecs :
  env ->
    (FStar_Syntax_Syntax.lbname * FStar_Syntax_Syntax.typ *
      FStar_Syntax_Syntax.univ_names) Prims.list)
  =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> letrecs
  
let (__proj__Mkenv__item__top_level : env -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> top_level
  
let (__proj__Mkenv__item__check_uvars : env -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> check_uvars
  
let (__proj__Mkenv__item__use_eq : env -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> use_eq
  
let (__proj__Mkenv__item__is_iface : env -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> is_iface
  
let (__proj__Mkenv__item__admit : env -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> admit1
  
let (__proj__Mkenv__item__lax : env -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> lax1
  
let (__proj__Mkenv__item__lax_universes : env -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> lax_universes
  
let (__proj__Mkenv__item__phase1 : env -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> phase1
  
let (__proj__Mkenv__item__failhard : env -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> failhard
  
let (__proj__Mkenv__item__nosynth : env -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> nosynth
  
let (__proj__Mkenv__item__uvar_subtyping : env -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> uvar_subtyping
  
let (__proj__Mkenv__item__tc_term :
  env ->
    env ->
      FStar_Syntax_Syntax.term ->
        (FStar_Syntax_Syntax.term * FStar_TypeChecker_Common.lcomp *
          FStar_TypeChecker_Common.guard_t))
  =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> tc_term
  
let (__proj__Mkenv__item__type_of :
  env ->
    env ->
      FStar_Syntax_Syntax.term ->
        (FStar_Syntax_Syntax.term * FStar_Syntax_Syntax.typ *
          FStar_TypeChecker_Common.guard_t))
  =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> type_of
  
let (__proj__Mkenv__item__universe_of :
  env -> env -> FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.universe) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> universe_of
  
let (__proj__Mkenv__item__check_type_of :
  env ->
    Prims.bool ->
      env ->
        FStar_Syntax_Syntax.term ->
          FStar_Syntax_Syntax.typ -> FStar_TypeChecker_Common.guard_t)
  =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> check_type_of
  
let (__proj__Mkenv__item__use_bv_sorts : env -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> use_bv_sorts
  
let (__proj__Mkenv__item__qtbl_name_and_index :
  env ->
    (Prims.int FStar_Util.smap * (FStar_Ident.lident * Prims.int)
      FStar_Pervasives_Native.option))
  =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} ->
        qtbl_name_and_index
  
let (__proj__Mkenv__item__normalized_eff_names :
  env -> FStar_Ident.lident FStar_Util.smap) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} ->
        normalized_eff_names
  
let (__proj__Mkenv__item__fv_delta_depths :
  env -> FStar_Syntax_Syntax.delta_depth FStar_Util.smap) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> fv_delta_depths
  
let (__proj__Mkenv__item__proof_ns : env -> proof_namespace) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> proof_ns
  
let (__proj__Mkenv__item__synth_hook :
  env ->
    env ->
      FStar_Syntax_Syntax.typ ->
        FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
  =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> synth_hook
  
let (__proj__Mkenv__item__splice :
  env ->
    env -> FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.sigelt Prims.list)
  =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> splice1
  
let (__proj__Mkenv__item__postprocess :
  env ->
    env ->
      FStar_Syntax_Syntax.term ->
        FStar_Syntax_Syntax.typ ->
          FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
  =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> postprocess
  
let (__proj__Mkenv__item__is_native_tactic :
  env -> FStar_Ident.lid -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> is_native_tactic
  
let (__proj__Mkenv__item__identifier_info :
  env -> FStar_TypeChecker_Common.id_info_table FStar_ST.ref) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> identifier_info
  
let (__proj__Mkenv__item__tc_hooks : env -> tcenv_hooks) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> tc_hooks
  
let (__proj__Mkenv__item__dsenv : env -> FStar_Syntax_DsEnv.env) =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> dsenv
  
let (__proj__Mkenv__item__nbe :
  env ->
    step Prims.list ->
      env -> FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
  =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> nbe1
  
let (__proj__Mkenv__item__strict_args_tab :
  env -> Prims.int Prims.list FStar_Pervasives_Native.option FStar_Util.smap)
  =
  fun projectee  ->
    match projectee with
    | { solver; range; curmodule; gamma; gamma_sig; gamma_cache; modules;
        expected_typ; sigtab; attrtab; is_pattern; instantiate_imp; effects;
        generalize; letrecs; top_level; check_uvars; use_eq; is_iface;
        admit = admit1; lax = lax1; lax_universes; phase1; failhard; 
        nosynth; uvar_subtyping; tc_term; type_of; universe_of;
        check_type_of; use_bv_sorts; qtbl_name_and_index;
        normalized_eff_names; fv_delta_depths; proof_ns; synth_hook;
        splice = splice1; postprocess; is_native_tactic; identifier_info;
        tc_hooks; dsenv; nbe = nbe1; strict_args_tab;_} -> strict_args_tab
  
let (__proj__Mksolver_t__item__init : solver_t -> env -> unit) =
  fun projectee  ->
    match projectee with
    | { init = init1; push = push1; pop = pop1; snapshot = snapshot1;
        rollback = rollback1; encode_sig; preprocess; solve;
        finish = finish1; refresh;_} -> init1
  
let (__proj__Mksolver_t__item__push : solver_t -> Prims.string -> unit) =
  fun projectee  ->
    match projectee with
    | { init = init1; push = push1; pop = pop1; snapshot = snapshot1;
        rollback = rollback1; encode_sig; preprocess; solve;
        finish = finish1; refresh;_} -> push1
  
let (__proj__Mksolver_t__item__pop : solver_t -> Prims.string -> unit) =
  fun projectee  ->
    match projectee with
    | { init = init1; push = push1; pop = pop1; snapshot = snapshot1;
        rollback = rollback1; encode_sig; preprocess; solve;
        finish = finish1; refresh;_} -> pop1
  
let (__proj__Mksolver_t__item__snapshot :
  solver_t -> Prims.string -> ((Prims.int * Prims.int * Prims.int) * unit)) =
  fun projectee  ->
    match projectee with
    | { init = init1; push = push1; pop = pop1; snapshot = snapshot1;
        rollback = rollback1; encode_sig; preprocess; solve;
        finish = finish1; refresh;_} -> snapshot1
  
let (__proj__Mksolver_t__item__rollback :
  solver_t ->
    Prims.string ->
      (Prims.int * Prims.int * Prims.int) FStar_Pervasives_Native.option ->
        unit)
  =
  fun projectee  ->
    match projectee with
    | { init = init1; push = push1; pop = pop1; snapshot = snapshot1;
        rollback = rollback1; encode_sig; preprocess; solve;
        finish = finish1; refresh;_} -> rollback1
  
let (__proj__Mksolver_t__item__encode_sig :
  solver_t -> env -> FStar_Syntax_Syntax.sigelt -> unit) =
  fun projectee  ->
    match projectee with
    | { init = init1; push = push1; pop = pop1; snapshot = snapshot1;
        rollback = rollback1; encode_sig; preprocess; solve;
        finish = finish1; refresh;_} -> encode_sig
  
let (__proj__Mksolver_t__item__preprocess :
  solver_t ->
    env -> goal -> (env * goal * FStar_Options.optionstate) Prims.list)
  =
  fun projectee  ->
    match projectee with
    | { init = init1; push = push1; pop = pop1; snapshot = snapshot1;
        rollback = rollback1; encode_sig; preprocess; solve;
        finish = finish1; refresh;_} -> preprocess
  
let (__proj__Mksolver_t__item__solve :
  solver_t ->
    (unit -> Prims.string) FStar_Pervasives_Native.option ->
      env -> FStar_Syntax_Syntax.typ -> unit)
  =
  fun projectee  ->
    match projectee with
    | { init = init1; push = push1; pop = pop1; snapshot = snapshot1;
        rollback = rollback1; encode_sig; preprocess; solve;
        finish = finish1; refresh;_} -> solve
  
let (__proj__Mksolver_t__item__finish : solver_t -> unit -> unit) =
  fun projectee  ->
    match projectee with
    | { init = init1; push = push1; pop = pop1; snapshot = snapshot1;
        rollback = rollback1; encode_sig; preprocess; solve;
        finish = finish1; refresh;_} -> finish1
  
let (__proj__Mksolver_t__item__refresh : solver_t -> unit -> unit) =
  fun projectee  ->
    match projectee with
    | { init = init1; push = push1; pop = pop1; snapshot = snapshot1;
        rollback = rollback1; encode_sig; preprocess; solve;
        finish = finish1; refresh;_} -> refresh
  
let (__proj__Mktcenv_hooks__item__tc_push_in_gamma_hook :
  tcenv_hooks ->
    env ->
      (FStar_Syntax_Syntax.binding,sig_binding) FStar_Util.either -> unit)
  =
  fun projectee  ->
    match projectee with
    | { tc_push_in_gamma_hook;_} -> tc_push_in_gamma_hook
  
type solver_depth_t = (Prims.int * Prims.int * Prims.int)
type implicit = FStar_TypeChecker_Common.implicit
type implicits = FStar_TypeChecker_Common.implicits
type guard_t = FStar_TypeChecker_Common.guard_t
let (postprocess :
  env ->
    FStar_Syntax_Syntax.term ->
      FStar_Syntax_Syntax.typ ->
        FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
  =
  fun env  -> fun tau  -> fun ty  -> fun tm  -> env.postprocess env tau ty tm 
let (rename_gamma :
  FStar_Syntax_Syntax.subst_t ->
    FStar_Syntax_Syntax.gamma -> FStar_Syntax_Syntax.gamma)
  =
  fun subst1  ->
    fun gamma  ->
      FStar_All.pipe_right gamma
        (FStar_List.map
           (fun uu___0_12215  ->
              match uu___0_12215 with
              | FStar_Syntax_Syntax.Binding_var x ->
                  let y =
                    let uu____12218 = FStar_Syntax_Syntax.bv_to_name x  in
                    FStar_Syntax_Subst.subst subst1 uu____12218  in
                  let uu____12219 =
                    let uu____12220 = FStar_Syntax_Subst.compress y  in
                    uu____12220.FStar_Syntax_Syntax.n  in
                  (match uu____12219 with
                   | FStar_Syntax_Syntax.Tm_name y1 ->
                       let uu____12224 =
                         let uu___311_12225 = y1  in
                         let uu____12226 =
                           FStar_Syntax_Subst.subst subst1
                             x.FStar_Syntax_Syntax.sort
                            in
                         {
                           FStar_Syntax_Syntax.ppname =
                             (uu___311_12225.FStar_Syntax_Syntax.ppname);
                           FStar_Syntax_Syntax.index =
                             (uu___311_12225.FStar_Syntax_Syntax.index);
                           FStar_Syntax_Syntax.sort = uu____12226
                         }  in
                       FStar_Syntax_Syntax.Binding_var uu____12224
                   | uu____12229 -> failwith "Not a renaming")
              | b -> b))
  
let (rename_env : FStar_Syntax_Syntax.subst_t -> env -> env) =
  fun subst1  ->
    fun env  ->
      let uu___317_12243 = env  in
      let uu____12244 = rename_gamma subst1 env.gamma  in
      {
        solver = (uu___317_12243.solver);
        range = (uu___317_12243.range);
        curmodule = (uu___317_12243.curmodule);
        gamma = uu____12244;
        gamma_sig = (uu___317_12243.gamma_sig);
        gamma_cache = (uu___317_12243.gamma_cache);
        modules = (uu___317_12243.modules);
        expected_typ = (uu___317_12243.expected_typ);
        sigtab = (uu___317_12243.sigtab);
        attrtab = (uu___317_12243.attrtab);
        is_pattern = (uu___317_12243.is_pattern);
        instantiate_imp = (uu___317_12243.instantiate_imp);
        effects = (uu___317_12243.effects);
        generalize = (uu___317_12243.generalize);
        letrecs = (uu___317_12243.letrecs);
        top_level = (uu___317_12243.top_level);
        check_uvars = (uu___317_12243.check_uvars);
        use_eq = (uu___317_12243.use_eq);
        is_iface = (uu___317_12243.is_iface);
        admit = (uu___317_12243.admit);
        lax = (uu___317_12243.lax);
        lax_universes = (uu___317_12243.lax_universes);
        phase1 = (uu___317_12243.phase1);
        failhard = (uu___317_12243.failhard);
        nosynth = (uu___317_12243.nosynth);
        uvar_subtyping = (uu___317_12243.uvar_subtyping);
        tc_term = (uu___317_12243.tc_term);
        type_of = (uu___317_12243.type_of);
        universe_of = (uu___317_12243.universe_of);
        check_type_of = (uu___317_12243.check_type_of);
        use_bv_sorts = (uu___317_12243.use_bv_sorts);
        qtbl_name_and_index = (uu___317_12243.qtbl_name_and_index);
        normalized_eff_names = (uu___317_12243.normalized_eff_names);
        fv_delta_depths = (uu___317_12243.fv_delta_depths);
        proof_ns = (uu___317_12243.proof_ns);
        synth_hook = (uu___317_12243.synth_hook);
        splice = (uu___317_12243.splice);
        postprocess = (uu___317_12243.postprocess);
        is_native_tactic = (uu___317_12243.is_native_tactic);
        identifier_info = (uu___317_12243.identifier_info);
        tc_hooks = (uu___317_12243.tc_hooks);
        dsenv = (uu___317_12243.dsenv);
        nbe = (uu___317_12243.nbe);
        strict_args_tab = (uu___317_12243.strict_args_tab)
      }
  
let (default_tc_hooks : tcenv_hooks) =
  { tc_push_in_gamma_hook = (fun uu____12252  -> fun uu____12253  -> ()) } 
let (tc_hooks : env -> tcenv_hooks) = fun env  -> env.tc_hooks 
let (set_tc_hooks : env -> tcenv_hooks -> env) =
  fun env  ->
    fun hooks  ->
      let uu___324_12275 = env  in
      {
        solver = (uu___324_12275.solver);
        range = (uu___324_12275.range);
        curmodule = (uu___324_12275.curmodule);
        gamma = (uu___324_12275.gamma);
        gamma_sig = (uu___324_12275.gamma_sig);
        gamma_cache = (uu___324_12275.gamma_cache);
        modules = (uu___324_12275.modules);
        expected_typ = (uu___324_12275.expected_typ);
        sigtab = (uu___324_12275.sigtab);
        attrtab = (uu___324_12275.attrtab);
        is_pattern = (uu___324_12275.is_pattern);
        instantiate_imp = (uu___324_12275.instantiate_imp);
        effects = (uu___324_12275.effects);
        generalize = (uu___324_12275.generalize);
        letrecs = (uu___324_12275.letrecs);
        top_level = (uu___324_12275.top_level);
        check_uvars = (uu___324_12275.check_uvars);
        use_eq = (uu___324_12275.use_eq);
        is_iface = (uu___324_12275.is_iface);
        admit = (uu___324_12275.admit);
        lax = (uu___324_12275.lax);
        lax_universes = (uu___324_12275.lax_universes);
        phase1 = (uu___324_12275.phase1);
        failhard = (uu___324_12275.failhard);
        nosynth = (uu___324_12275.nosynth);
        uvar_subtyping = (uu___324_12275.uvar_subtyping);
        tc_term = (uu___324_12275.tc_term);
        type_of = (uu___324_12275.type_of);
        universe_of = (uu___324_12275.universe_of);
        check_type_of = (uu___324_12275.check_type_of);
        use_bv_sorts = (uu___324_12275.use_bv_sorts);
        qtbl_name_and_index = (uu___324_12275.qtbl_name_and_index);
        normalized_eff_names = (uu___324_12275.normalized_eff_names);
        fv_delta_depths = (uu___324_12275.fv_delta_depths);
        proof_ns = (uu___324_12275.proof_ns);
        synth_hook = (uu___324_12275.synth_hook);
        splice = (uu___324_12275.splice);
        postprocess = (uu___324_12275.postprocess);
        is_native_tactic = (uu___324_12275.is_native_tactic);
        identifier_info = (uu___324_12275.identifier_info);
        tc_hooks = hooks;
        dsenv = (uu___324_12275.dsenv);
        nbe = (uu___324_12275.nbe);
        strict_args_tab = (uu___324_12275.strict_args_tab)
      }
  
let (set_dep_graph : env -> FStar_Parser_Dep.deps -> env) =
  fun e  ->
    fun g  ->
      let uu___328_12287 = e  in
      let uu____12288 = FStar_Syntax_DsEnv.set_dep_graph e.dsenv g  in
      {
        solver = (uu___328_12287.solver);
        range = (uu___328_12287.range);
        curmodule = (uu___328_12287.curmodule);
        gamma = (uu___328_12287.gamma);
        gamma_sig = (uu___328_12287.gamma_sig);
        gamma_cache = (uu___328_12287.gamma_cache);
        modules = (uu___328_12287.modules);
        expected_typ = (uu___328_12287.expected_typ);
        sigtab = (uu___328_12287.sigtab);
        attrtab = (uu___328_12287.attrtab);
        is_pattern = (uu___328_12287.is_pattern);
        instantiate_imp = (uu___328_12287.instantiate_imp);
        effects = (uu___328_12287.effects);
        generalize = (uu___328_12287.generalize);
        letrecs = (uu___328_12287.letrecs);
        top_level = (uu___328_12287.top_level);
        check_uvars = (uu___328_12287.check_uvars);
        use_eq = (uu___328_12287.use_eq);
        is_iface = (uu___328_12287.is_iface);
        admit = (uu___328_12287.admit);
        lax = (uu___328_12287.lax);
        lax_universes = (uu___328_12287.lax_universes);
        phase1 = (uu___328_12287.phase1);
        failhard = (uu___328_12287.failhard);
        nosynth = (uu___328_12287.nosynth);
        uvar_subtyping = (uu___328_12287.uvar_subtyping);
        tc_term = (uu___328_12287.tc_term);
        type_of = (uu___328_12287.type_of);
        universe_of = (uu___328_12287.universe_of);
        check_type_of = (uu___328_12287.check_type_of);
        use_bv_sorts = (uu___328_12287.use_bv_sorts);
        qtbl_name_and_index = (uu___328_12287.qtbl_name_and_index);
        normalized_eff_names = (uu___328_12287.normalized_eff_names);
        fv_delta_depths = (uu___328_12287.fv_delta_depths);
        proof_ns = (uu___328_12287.proof_ns);
        synth_hook = (uu___328_12287.synth_hook);
        splice = (uu___328_12287.splice);
        postprocess = (uu___328_12287.postprocess);
        is_native_tactic = (uu___328_12287.is_native_tactic);
        identifier_info = (uu___328_12287.identifier_info);
        tc_hooks = (uu___328_12287.tc_hooks);
        dsenv = uu____12288;
        nbe = (uu___328_12287.nbe);
        strict_args_tab = (uu___328_12287.strict_args_tab)
      }
  
let (dep_graph : env -> FStar_Parser_Dep.deps) =
  fun e  -> FStar_Syntax_DsEnv.dep_graph e.dsenv 
type env_t = env
type sigtable = FStar_Syntax_Syntax.sigelt FStar_Util.smap
let (should_verify : env -> Prims.bool) =
  fun env  ->
    ((Prims.op_Negation env.lax) && (Prims.op_Negation env.admit)) &&
      (FStar_Options.should_verify (env.curmodule).FStar_Ident.str)
  
let (visible_at : delta_level -> FStar_Syntax_Syntax.qualifier -> Prims.bool)
  =
  fun d  ->
    fun q  ->
      match (d, q) with
      | (NoDelta ,uu____12317) -> true
      | (Eager_unfolding_only
         ,FStar_Syntax_Syntax.Unfold_for_unification_and_vcgen ) -> true
      | (Unfold
         uu____12320,FStar_Syntax_Syntax.Unfold_for_unification_and_vcgen )
          -> true
      | (Unfold uu____12322,FStar_Syntax_Syntax.Visible_default ) -> true
      | (InliningDelta ,FStar_Syntax_Syntax.Inline_for_extraction ) -> true
      | uu____12325 -> false
  
let (default_table_size : Prims.int) = (Prims.of_int (200)) 
let new_sigtab : 'Auu____12339 . unit -> 'Auu____12339 FStar_Util.smap =
  fun uu____12346  -> FStar_Util.smap_create default_table_size 
let new_gamma_cache : 'Auu____12352 . unit -> 'Auu____12352 FStar_Util.smap =
  fun uu____12359  -> FStar_Util.smap_create (Prims.of_int (100)) 
let (initial_env :
  FStar_Parser_Dep.deps ->
    (env ->
       FStar_Syntax_Syntax.term ->
         (FStar_Syntax_Syntax.term * FStar_TypeChecker_Common.lcomp *
           guard_t))
      ->
      (env ->
         FStar_Syntax_Syntax.term ->
           (FStar_Syntax_Syntax.term * FStar_Syntax_Syntax.typ * guard_t))
        ->
        (env -> FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.universe) ->
          (Prims.bool ->
             env ->
               FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.typ -> guard_t)
            ->
            solver_t ->
              FStar_Ident.lident ->
                (step Prims.list ->
                   env ->
                     FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
                  -> env)
  =
  fun deps  ->
    fun tc_term  ->
      fun type_of  ->
        fun universe_of  ->
          fun check_type_of  ->
            fun solver  ->
              fun module_lid  ->
                fun nbe1  ->
                  let uu____12497 = new_gamma_cache ()  in
                  let uu____12500 = new_sigtab ()  in
                  let uu____12503 = new_sigtab ()  in
                  let uu____12510 =
                    let uu____12525 =
                      FStar_Util.smap_create (Prims.of_int (10))  in
                    (uu____12525, FStar_Pervasives_Native.None)  in
                  let uu____12546 =
                    FStar_Util.smap_create (Prims.of_int (20))  in
                  let uu____12550 =
                    FStar_Util.smap_create (Prims.of_int (50))  in
                  let uu____12554 = FStar_Options.using_facts_from ()  in
                  let uu____12555 =
                    FStar_Util.mk_ref
                      FStar_TypeChecker_Common.id_info_table_empty
                     in
                  let uu____12558 = FStar_Syntax_DsEnv.empty_env deps  in
                  let uu____12559 =
                    FStar_Util.smap_create (Prims.of_int (20))  in
                  {
                    solver;
                    range = FStar_Range.dummyRange;
                    curmodule = module_lid;
                    gamma = [];
                    gamma_sig = [];
                    gamma_cache = uu____12497;
                    modules = [];
                    expected_typ = FStar_Pervasives_Native.None;
                    sigtab = uu____12500;
                    attrtab = uu____12503;
                    is_pattern = false;
                    instantiate_imp = true;
                    effects = { decls = []; order = []; joins = [] };
                    generalize = true;
                    letrecs = [];
                    top_level = false;
                    check_uvars = false;
                    use_eq = false;
                    is_iface = false;
                    admit = false;
                    lax = false;
                    lax_universes = false;
                    phase1 = false;
                    failhard = false;
                    nosynth = false;
                    uvar_subtyping = true;
                    tc_term;
                    type_of;
                    universe_of;
                    check_type_of;
                    use_bv_sorts = false;
                    qtbl_name_and_index = uu____12510;
                    normalized_eff_names = uu____12546;
                    fv_delta_depths = uu____12550;
                    proof_ns = uu____12554;
                    synth_hook =
                      (fun e  ->
                         fun g  ->
                           fun tau  -> failwith "no synthesizer available");
                    splice =
                      (fun e  -> fun tau  -> failwith "no splicer available");
                    postprocess =
                      (fun e  ->
                         fun tau  ->
                           fun typ  ->
                             fun tm  -> failwith "no postprocessor available");
                    is_native_tactic = (fun uu____12634  -> false);
                    identifier_info = uu____12555;
                    tc_hooks = default_tc_hooks;
                    dsenv = uu____12558;
                    nbe = nbe1;
                    strict_args_tab = uu____12559
                  }
  
let (dsenv : env -> FStar_Syntax_DsEnv.env) = fun env  -> env.dsenv 
let (sigtab : env -> FStar_Syntax_Syntax.sigelt FStar_Util.smap) =
  fun env  -> env.sigtab 
let (attrtab : env -> FStar_Syntax_Syntax.sigelt Prims.list FStar_Util.smap)
  = fun env  -> env.attrtab 
let (gamma_cache : env -> cached_elt FStar_Util.smap) =
  fun env  -> env.gamma_cache 
let (query_indices :
  (FStar_Ident.lident * Prims.int) Prims.list Prims.list FStar_ST.ref) =
  FStar_Util.mk_ref [[]] 
let (push_query_indices : unit -> unit) =
  fun uu____12713  ->
    let uu____12714 = FStar_ST.op_Bang query_indices  in
    match uu____12714 with
    | [] -> failwith "Empty query indices!"
    | uu____12769 ->
        let uu____12779 =
          let uu____12789 =
            let uu____12797 = FStar_ST.op_Bang query_indices  in
            FStar_List.hd uu____12797  in
          let uu____12851 = FStar_ST.op_Bang query_indices  in uu____12789 ::
            uu____12851
           in
        FStar_ST.op_Colon_Equals query_indices uu____12779
  
let (pop_query_indices : unit -> unit) =
  fun uu____12947  ->
    let uu____12948 = FStar_ST.op_Bang query_indices  in
    match uu____12948 with
    | [] -> failwith "Empty query indices!"
    | hd1::tl1 -> FStar_ST.op_Colon_Equals query_indices tl1
  
let (snapshot_query_indices : unit -> (Prims.int * unit)) =
  fun uu____13075  ->
    FStar_Common.snapshot push_query_indices query_indices ()
  
let (rollback_query_indices :
  Prims.int FStar_Pervasives_Native.option -> unit) =
  fun depth  -> FStar_Common.rollback pop_query_indices query_indices depth 
let (add_query_index : (FStar_Ident.lident * Prims.int) -> unit) =
  fun uu____13112  ->
    match uu____13112 with
    | (l,n1) ->
        let uu____13122 = FStar_ST.op_Bang query_indices  in
        (match uu____13122 with
         | hd1::tl1 ->
             FStar_ST.op_Colon_Equals query_indices (((l, n1) :: hd1) :: tl1)
         | uu____13244 -> failwith "Empty query indices")
  
let (peek_query_indices :
  unit -> (FStar_Ident.lident * Prims.int) Prims.list) =
  fun uu____13267  ->
    let uu____13268 = FStar_ST.op_Bang query_indices  in
    FStar_List.hd uu____13268
  
let (stack : env Prims.list FStar_ST.ref) = FStar_Util.mk_ref [] 
let (push_stack : env -> env) =
  fun env  ->
    (let uu____13336 =
       let uu____13339 = FStar_ST.op_Bang stack  in env :: uu____13339  in
     FStar_ST.op_Colon_Equals stack uu____13336);
    (let uu___396_13388 = env  in
     let uu____13389 = FStar_Util.smap_copy (gamma_cache env)  in
     let uu____13392 = FStar_Util.smap_copy (sigtab env)  in
     let uu____13395 = FStar_Util.smap_copy (attrtab env)  in
     let uu____13402 =
       let uu____13417 =
         let uu____13421 =
           FStar_All.pipe_right env.qtbl_name_and_index
             FStar_Pervasives_Native.fst
            in
         FStar_Util.smap_copy uu____13421  in
       let uu____13453 =
         FStar_All.pipe_right env.qtbl_name_and_index
           FStar_Pervasives_Native.snd
          in
       (uu____13417, uu____13453)  in
     let uu____13502 = FStar_Util.smap_copy env.normalized_eff_names  in
     let uu____13505 = FStar_Util.smap_copy env.fv_delta_depths  in
     let uu____13508 =
       let uu____13511 = FStar_ST.op_Bang env.identifier_info  in
       FStar_Util.mk_ref uu____13511  in
     let uu____13531 = FStar_Util.smap_copy env.strict_args_tab  in
     {
       solver = (uu___396_13388.solver);
       range = (uu___396_13388.range);
       curmodule = (uu___396_13388.curmodule);
       gamma = (uu___396_13388.gamma);
       gamma_sig = (uu___396_13388.gamma_sig);
       gamma_cache = uu____13389;
       modules = (uu___396_13388.modules);
       expected_typ = (uu___396_13388.expected_typ);
       sigtab = uu____13392;
       attrtab = uu____13395;
       is_pattern = (uu___396_13388.is_pattern);
       instantiate_imp = (uu___396_13388.instantiate_imp);
       effects = (uu___396_13388.effects);
       generalize = (uu___396_13388.generalize);
       letrecs = (uu___396_13388.letrecs);
       top_level = (uu___396_13388.top_level);
       check_uvars = (uu___396_13388.check_uvars);
       use_eq = (uu___396_13388.use_eq);
       is_iface = (uu___396_13388.is_iface);
       admit = (uu___396_13388.admit);
       lax = (uu___396_13388.lax);
       lax_universes = (uu___396_13388.lax_universes);
       phase1 = (uu___396_13388.phase1);
       failhard = (uu___396_13388.failhard);
       nosynth = (uu___396_13388.nosynth);
       uvar_subtyping = (uu___396_13388.uvar_subtyping);
       tc_term = (uu___396_13388.tc_term);
       type_of = (uu___396_13388.type_of);
       universe_of = (uu___396_13388.universe_of);
       check_type_of = (uu___396_13388.check_type_of);
       use_bv_sorts = (uu___396_13388.use_bv_sorts);
       qtbl_name_and_index = uu____13402;
       normalized_eff_names = uu____13502;
       fv_delta_depths = uu____13505;
       proof_ns = (uu___396_13388.proof_ns);
       synth_hook = (uu___396_13388.synth_hook);
       splice = (uu___396_13388.splice);
       postprocess = (uu___396_13388.postprocess);
       is_native_tactic = (uu___396_13388.is_native_tactic);
       identifier_info = uu____13508;
       tc_hooks = (uu___396_13388.tc_hooks);
       dsenv = (uu___396_13388.dsenv);
       nbe = (uu___396_13388.nbe);
       strict_args_tab = uu____13531
     })
  
let (pop_stack : unit -> env) =
  fun uu____13549  ->
    let uu____13550 = FStar_ST.op_Bang stack  in
    match uu____13550 with
    | env::tl1 -> (FStar_ST.op_Colon_Equals stack tl1; env)
    | uu____13604 -> failwith "Impossible: Too many pops"
  
let (snapshot_stack : env -> (Prims.int * env)) =
  fun env  -> FStar_Common.snapshot push_stack stack env 
let (rollback_stack : Prims.int FStar_Pervasives_Native.option -> env) =
  fun depth  -> FStar_Common.rollback pop_stack stack depth 
type tcenv_depth_t = (Prims.int * Prims.int * solver_depth_t * Prims.int)
let (snapshot : env -> Prims.string -> (tcenv_depth_t * env)) =
  fun env  ->
    fun msg  ->
      FStar_Util.atomically
        (fun uu____13694  ->
           let uu____13695 = snapshot_stack env  in
           match uu____13695 with
           | (stack_depth,env1) ->
               let uu____13729 = snapshot_query_indices ()  in
               (match uu____13729 with
                | (query_indices_depth,()) ->
                    let uu____13762 = (env1.solver).snapshot msg  in
                    (match uu____13762 with
                     | (solver_depth,()) ->
                         let uu____13819 =
                           FStar_Syntax_DsEnv.snapshot env1.dsenv  in
                         (match uu____13819 with
                          | (dsenv_depth,dsenv1) ->
                              ((stack_depth, query_indices_depth,
                                 solver_depth, dsenv_depth),
                                (let uu___421_13886 = env1  in
                                 {
                                   solver = (uu___421_13886.solver);
                                   range = (uu___421_13886.range);
                                   curmodule = (uu___421_13886.curmodule);
                                   gamma = (uu___421_13886.gamma);
                                   gamma_sig = (uu___421_13886.gamma_sig);
                                   gamma_cache = (uu___421_13886.gamma_cache);
                                   modules = (uu___421_13886.modules);
                                   expected_typ =
                                     (uu___421_13886.expected_typ);
                                   sigtab = (uu___421_13886.sigtab);
                                   attrtab = (uu___421_13886.attrtab);
                                   is_pattern = (uu___421_13886.is_pattern);
                                   instantiate_imp =
                                     (uu___421_13886.instantiate_imp);
                                   effects = (uu___421_13886.effects);
                                   generalize = (uu___421_13886.generalize);
                                   letrecs = (uu___421_13886.letrecs);
                                   top_level = (uu___421_13886.top_level);
                                   check_uvars = (uu___421_13886.check_uvars);
                                   use_eq = (uu___421_13886.use_eq);
                                   is_iface = (uu___421_13886.is_iface);
                                   admit = (uu___421_13886.admit);
                                   lax = (uu___421_13886.lax);
                                   lax_universes =
                                     (uu___421_13886.lax_universes);
                                   phase1 = (uu___421_13886.phase1);
                                   failhard = (uu___421_13886.failhard);
                                   nosynth = (uu___421_13886.nosynth);
                                   uvar_subtyping =
                                     (uu___421_13886.uvar_subtyping);
                                   tc_term = (uu___421_13886.tc_term);
                                   type_of = (uu___421_13886.type_of);
                                   universe_of = (uu___421_13886.universe_of);
                                   check_type_of =
                                     (uu___421_13886.check_type_of);
                                   use_bv_sorts =
                                     (uu___421_13886.use_bv_sorts);
                                   qtbl_name_and_index =
                                     (uu___421_13886.qtbl_name_and_index);
                                   normalized_eff_names =
                                     (uu___421_13886.normalized_eff_names);
                                   fv_delta_depths =
                                     (uu___421_13886.fv_delta_depths);
                                   proof_ns = (uu___421_13886.proof_ns);
                                   synth_hook = (uu___421_13886.synth_hook);
                                   splice = (uu___421_13886.splice);
                                   postprocess = (uu___421_13886.postprocess);
                                   is_native_tactic =
                                     (uu___421_13886.is_native_tactic);
                                   identifier_info =
                                     (uu___421_13886.identifier_info);
                                   tc_hooks = (uu___421_13886.tc_hooks);
                                   dsenv = dsenv1;
                                   nbe = (uu___421_13886.nbe);
                                   strict_args_tab =
                                     (uu___421_13886.strict_args_tab)
                                 }))))))
  
let (rollback :
  solver_t ->
    Prims.string -> tcenv_depth_t FStar_Pervasives_Native.option -> env)
  =
  fun solver  ->
    fun msg  ->
      fun depth  ->
        FStar_Util.atomically
          (fun uu____13920  ->
             let uu____13921 =
               match depth with
               | FStar_Pervasives_Native.Some (s1,s2,s3,s4) ->
                   ((FStar_Pervasives_Native.Some s1),
                     (FStar_Pervasives_Native.Some s2),
                     (FStar_Pervasives_Native.Some s3),
                     (FStar_Pervasives_Native.Some s4))
               | FStar_Pervasives_Native.None  ->
                   (FStar_Pervasives_Native.None,
                     FStar_Pervasives_Native.None,
                     FStar_Pervasives_Native.None,
                     FStar_Pervasives_Native.None)
                in
             match uu____13921 with
             | (stack_depth,query_indices_depth,solver_depth,dsenv_depth) ->
                 (solver.rollback msg solver_depth;
                  (match () with
                   | () ->
                       (rollback_query_indices query_indices_depth;
                        (match () with
                         | () ->
                             let tcenv = rollback_stack stack_depth  in
                             let dsenv1 =
                               FStar_Syntax_DsEnv.rollback dsenv_depth  in
                             ((let uu____14101 =
                                 FStar_Util.physical_equality tcenv.dsenv
                                   dsenv1
                                  in
                               FStar_Common.runtime_assert uu____14101
                                 "Inconsistent stack state");
                              tcenv))))))
  
let (push : env -> Prims.string -> env) =
  fun env  ->
    fun msg  ->
      let uu____14117 = snapshot env msg  in
      FStar_Pervasives_Native.snd uu____14117
  
let (pop : env -> Prims.string -> env) =
  fun env  ->
    fun msg  -> rollback env.solver msg FStar_Pervasives_Native.None
  
let (incr_query_index : env -> env) =
  fun env  ->
    let qix = peek_query_indices ()  in
    match env.qtbl_name_and_index with
    | (uu____14149,FStar_Pervasives_Native.None ) -> env
    | (tbl,FStar_Pervasives_Native.Some (l,n1)) ->
        let uu____14191 =
          FStar_All.pipe_right qix
            (FStar_List.tryFind
               (fun uu____14221  ->
                  match uu____14221 with
                  | (m,uu____14229) -> FStar_Ident.lid_equals l m))
           in
        (match uu____14191 with
         | FStar_Pervasives_Native.None  ->
             let next = n1 + Prims.int_one  in
             (add_query_index (l, next);
              FStar_Util.smap_add tbl l.FStar_Ident.str next;
              (let uu___466_14244 = env  in
               {
                 solver = (uu___466_14244.solver);
                 range = (uu___466_14244.range);
                 curmodule = (uu___466_14244.curmodule);
                 gamma = (uu___466_14244.gamma);
                 gamma_sig = (uu___466_14244.gamma_sig);
                 gamma_cache = (uu___466_14244.gamma_cache);
                 modules = (uu___466_14244.modules);
                 expected_typ = (uu___466_14244.expected_typ);
                 sigtab = (uu___466_14244.sigtab);
                 attrtab = (uu___466_14244.attrtab);
                 is_pattern = (uu___466_14244.is_pattern);
                 instantiate_imp = (uu___466_14244.instantiate_imp);
                 effects = (uu___466_14244.effects);
                 generalize = (uu___466_14244.generalize);
                 letrecs = (uu___466_14244.letrecs);
                 top_level = (uu___466_14244.top_level);
                 check_uvars = (uu___466_14244.check_uvars);
                 use_eq = (uu___466_14244.use_eq);
                 is_iface = (uu___466_14244.is_iface);
                 admit = (uu___466_14244.admit);
                 lax = (uu___466_14244.lax);
                 lax_universes = (uu___466_14244.lax_universes);
                 phase1 = (uu___466_14244.phase1);
                 failhard = (uu___466_14244.failhard);
                 nosynth = (uu___466_14244.nosynth);
                 uvar_subtyping = (uu___466_14244.uvar_subtyping);
                 tc_term = (uu___466_14244.tc_term);
                 type_of = (uu___466_14244.type_of);
                 universe_of = (uu___466_14244.universe_of);
                 check_type_of = (uu___466_14244.check_type_of);
                 use_bv_sorts = (uu___466_14244.use_bv_sorts);
                 qtbl_name_and_index =
                   (tbl, (FStar_Pervasives_Native.Some (l, next)));
                 normalized_eff_names = (uu___466_14244.normalized_eff_names);
                 fv_delta_depths = (uu___466_14244.fv_delta_depths);
                 proof_ns = (uu___466_14244.proof_ns);
                 synth_hook = (uu___466_14244.synth_hook);
                 splice = (uu___466_14244.splice);
                 postprocess = (uu___466_14244.postprocess);
                 is_native_tactic = (uu___466_14244.is_native_tactic);
                 identifier_info = (uu___466_14244.identifier_info);
                 tc_hooks = (uu___466_14244.tc_hooks);
                 dsenv = (uu___466_14244.dsenv);
                 nbe = (uu___466_14244.nbe);
                 strict_args_tab = (uu___466_14244.strict_args_tab)
               }))
         | FStar_Pervasives_Native.Some (uu____14261,m) ->
             let next = m + Prims.int_one  in
             (add_query_index (l, next);
              FStar_Util.smap_add tbl l.FStar_Ident.str next;
              (let uu___475_14277 = env  in
               {
                 solver = (uu___475_14277.solver);
                 range = (uu___475_14277.range);
                 curmodule = (uu___475_14277.curmodule);
                 gamma = (uu___475_14277.gamma);
                 gamma_sig = (uu___475_14277.gamma_sig);
                 gamma_cache = (uu___475_14277.gamma_cache);
                 modules = (uu___475_14277.modules);
                 expected_typ = (uu___475_14277.expected_typ);
                 sigtab = (uu___475_14277.sigtab);
                 attrtab = (uu___475_14277.attrtab);
                 is_pattern = (uu___475_14277.is_pattern);
                 instantiate_imp = (uu___475_14277.instantiate_imp);
                 effects = (uu___475_14277.effects);
                 generalize = (uu___475_14277.generalize);
                 letrecs = (uu___475_14277.letrecs);
                 top_level = (uu___475_14277.top_level);
                 check_uvars = (uu___475_14277.check_uvars);
                 use_eq = (uu___475_14277.use_eq);
                 is_iface = (uu___475_14277.is_iface);
                 admit = (uu___475_14277.admit);
                 lax = (uu___475_14277.lax);
                 lax_universes = (uu___475_14277.lax_universes);
                 phase1 = (uu___475_14277.phase1);
                 failhard = (uu___475_14277.failhard);
                 nosynth = (uu___475_14277.nosynth);
                 uvar_subtyping = (uu___475_14277.uvar_subtyping);
                 tc_term = (uu___475_14277.tc_term);
                 type_of = (uu___475_14277.type_of);
                 universe_of = (uu___475_14277.universe_of);
                 check_type_of = (uu___475_14277.check_type_of);
                 use_bv_sorts = (uu___475_14277.use_bv_sorts);
                 qtbl_name_and_index =
                   (tbl, (FStar_Pervasives_Native.Some (l, next)));
                 normalized_eff_names = (uu___475_14277.normalized_eff_names);
                 fv_delta_depths = (uu___475_14277.fv_delta_depths);
                 proof_ns = (uu___475_14277.proof_ns);
                 synth_hook = (uu___475_14277.synth_hook);
                 splice = (uu___475_14277.splice);
                 postprocess = (uu___475_14277.postprocess);
                 is_native_tactic = (uu___475_14277.is_native_tactic);
                 identifier_info = (uu___475_14277.identifier_info);
                 tc_hooks = (uu___475_14277.tc_hooks);
                 dsenv = (uu___475_14277.dsenv);
                 nbe = (uu___475_14277.nbe);
                 strict_args_tab = (uu___475_14277.strict_args_tab)
               })))
  
let (debug : env -> FStar_Options.debug_level_t -> Prims.bool) =
  fun env  ->
    fun l  -> FStar_Options.debug_at_level (env.curmodule).FStar_Ident.str l
  
let (set_range : env -> FStar_Range.range -> env) =
  fun e  ->
    fun r  ->
      if r = FStar_Range.dummyRange
      then e
      else
        (let uu___482_14320 = e  in
         {
           solver = (uu___482_14320.solver);
           range = r;
           curmodule = (uu___482_14320.curmodule);
           gamma = (uu___482_14320.gamma);
           gamma_sig = (uu___482_14320.gamma_sig);
           gamma_cache = (uu___482_14320.gamma_cache);
           modules = (uu___482_14320.modules);
           expected_typ = (uu___482_14320.expected_typ);
           sigtab = (uu___482_14320.sigtab);
           attrtab = (uu___482_14320.attrtab);
           is_pattern = (uu___482_14320.is_pattern);
           instantiate_imp = (uu___482_14320.instantiate_imp);
           effects = (uu___482_14320.effects);
           generalize = (uu___482_14320.generalize);
           letrecs = (uu___482_14320.letrecs);
           top_level = (uu___482_14320.top_level);
           check_uvars = (uu___482_14320.check_uvars);
           use_eq = (uu___482_14320.use_eq);
           is_iface = (uu___482_14320.is_iface);
           admit = (uu___482_14320.admit);
           lax = (uu___482_14320.lax);
           lax_universes = (uu___482_14320.lax_universes);
           phase1 = (uu___482_14320.phase1);
           failhard = (uu___482_14320.failhard);
           nosynth = (uu___482_14320.nosynth);
           uvar_subtyping = (uu___482_14320.uvar_subtyping);
           tc_term = (uu___482_14320.tc_term);
           type_of = (uu___482_14320.type_of);
           universe_of = (uu___482_14320.universe_of);
           check_type_of = (uu___482_14320.check_type_of);
           use_bv_sorts = (uu___482_14320.use_bv_sorts);
           qtbl_name_and_index = (uu___482_14320.qtbl_name_and_index);
           normalized_eff_names = (uu___482_14320.normalized_eff_names);
           fv_delta_depths = (uu___482_14320.fv_delta_depths);
           proof_ns = (uu___482_14320.proof_ns);
           synth_hook = (uu___482_14320.synth_hook);
           splice = (uu___482_14320.splice);
           postprocess = (uu___482_14320.postprocess);
           is_native_tactic = (uu___482_14320.is_native_tactic);
           identifier_info = (uu___482_14320.identifier_info);
           tc_hooks = (uu___482_14320.tc_hooks);
           dsenv = (uu___482_14320.dsenv);
           nbe = (uu___482_14320.nbe);
           strict_args_tab = (uu___482_14320.strict_args_tab)
         })
  
let (get_range : env -> FStar_Range.range) = fun e  -> e.range 
let (toggle_id_info : env -> Prims.bool -> unit) =
  fun env  ->
    fun enabled  ->
      let uu____14340 =
        let uu____14341 = FStar_ST.op_Bang env.identifier_info  in
        FStar_TypeChecker_Common.id_info_toggle uu____14341 enabled  in
      FStar_ST.op_Colon_Equals env.identifier_info uu____14340
  
let (insert_bv_info :
  env -> FStar_Syntax_Syntax.bv -> FStar_Syntax_Syntax.typ -> unit) =
  fun env  ->
    fun bv  ->
      fun ty  ->
        let uu____14396 =
          let uu____14397 = FStar_ST.op_Bang env.identifier_info  in
          FStar_TypeChecker_Common.id_info_insert_bv uu____14397 bv ty  in
        FStar_ST.op_Colon_Equals env.identifier_info uu____14396
  
let (insert_fv_info :
  env -> FStar_Syntax_Syntax.fv -> FStar_Syntax_Syntax.typ -> unit) =
  fun env  ->
    fun fv  ->
      fun ty  ->
        let uu____14452 =
          let uu____14453 = FStar_ST.op_Bang env.identifier_info  in
          FStar_TypeChecker_Common.id_info_insert_fv uu____14453 fv ty  in
        FStar_ST.op_Colon_Equals env.identifier_info uu____14452
  
let (promote_id_info :
  env -> (FStar_Syntax_Syntax.typ -> FStar_Syntax_Syntax.typ) -> unit) =
  fun env  ->
    fun ty_map  ->
      let uu____14508 =
        let uu____14509 = FStar_ST.op_Bang env.identifier_info  in
        FStar_TypeChecker_Common.id_info_promote uu____14509 ty_map  in
      FStar_ST.op_Colon_Equals env.identifier_info uu____14508
  
let (modules : env -> FStar_Syntax_Syntax.modul Prims.list) =
  fun env  -> env.modules 
let (current_module : env -> FStar_Ident.lident) = fun env  -> env.curmodule 
let (set_current_module : env -> FStar_Ident.lident -> env) =
  fun env  ->
    fun lid  ->
      let uu___499_14573 = env  in
      {
        solver = (uu___499_14573.solver);
        range = (uu___499_14573.range);
        curmodule = lid;
        gamma = (uu___499_14573.gamma);
        gamma_sig = (uu___499_14573.gamma_sig);
        gamma_cache = (uu___499_14573.gamma_cache);
        modules = (uu___499_14573.modules);
        expected_typ = (uu___499_14573.expected_typ);
        sigtab = (uu___499_14573.sigtab);
        attrtab = (uu___499_14573.attrtab);
        is_pattern = (uu___499_14573.is_pattern);
        instantiate_imp = (uu___499_14573.instantiate_imp);
        effects = (uu___499_14573.effects);
        generalize = (uu___499_14573.generalize);
        letrecs = (uu___499_14573.letrecs);
        top_level = (uu___499_14573.top_level);
        check_uvars = (uu___499_14573.check_uvars);
        use_eq = (uu___499_14573.use_eq);
        is_iface = (uu___499_14573.is_iface);
        admit = (uu___499_14573.admit);
        lax = (uu___499_14573.lax);
        lax_universes = (uu___499_14573.lax_universes);
        phase1 = (uu___499_14573.phase1);
        failhard = (uu___499_14573.failhard);
        nosynth = (uu___499_14573.nosynth);
        uvar_subtyping = (uu___499_14573.uvar_subtyping);
        tc_term = (uu___499_14573.tc_term);
        type_of = (uu___499_14573.type_of);
        universe_of = (uu___499_14573.universe_of);
        check_type_of = (uu___499_14573.check_type_of);
        use_bv_sorts = (uu___499_14573.use_bv_sorts);
        qtbl_name_and_index = (uu___499_14573.qtbl_name_and_index);
        normalized_eff_names = (uu___499_14573.normalized_eff_names);
        fv_delta_depths = (uu___499_14573.fv_delta_depths);
        proof_ns = (uu___499_14573.proof_ns);
        synth_hook = (uu___499_14573.synth_hook);
        splice = (uu___499_14573.splice);
        postprocess = (uu___499_14573.postprocess);
        is_native_tactic = (uu___499_14573.is_native_tactic);
        identifier_info = (uu___499_14573.identifier_info);
        tc_hooks = (uu___499_14573.tc_hooks);
        dsenv = (uu___499_14573.dsenv);
        nbe = (uu___499_14573.nbe);
        strict_args_tab = (uu___499_14573.strict_args_tab)
      }
  
let (has_interface : env -> FStar_Ident.lident -> Prims.bool) =
  fun env  ->
    fun l  ->
      FStar_All.pipe_right env.modules
        (FStar_Util.for_some
           (fun m  ->
              m.FStar_Syntax_Syntax.is_interface &&
                (FStar_Ident.lid_equals m.FStar_Syntax_Syntax.name l)))
  
let (find_in_sigtab :
  env ->
    FStar_Ident.lident ->
      FStar_Syntax_Syntax.sigelt FStar_Pervasives_Native.option)
  =
  fun env  ->
    fun lid  ->
      let uu____14604 = FStar_Ident.text_of_lid lid  in
      FStar_Util.smap_try_find (sigtab env) uu____14604
  
let (name_not_found :
  FStar_Ident.lid -> (FStar_Errors.raw_error * Prims.string)) =
  fun l  ->
    let uu____14617 =
      FStar_Util.format1 "Name \"%s\" not found" l.FStar_Ident.str  in
    (FStar_Errors.Fatal_NameNotFound, uu____14617)
  
let (variable_not_found :
  FStar_Syntax_Syntax.bv -> (FStar_Errors.raw_error * Prims.string)) =
  fun v1  ->
    let uu____14632 =
      let uu____14634 = FStar_Syntax_Print.bv_to_string v1  in
      FStar_Util.format1 "Variable \"%s\" not found" uu____14634  in
    (FStar_Errors.Fatal_VariableNotFound, uu____14632)
  
let (new_u_univ : unit -> FStar_Syntax_Syntax.universe) =
  fun uu____14643  ->
    let uu____14644 = FStar_Syntax_Unionfind.univ_fresh ()  in
    FStar_Syntax_Syntax.U_unif uu____14644
  
let (mk_univ_subst :
  FStar_Syntax_Syntax.univ_name Prims.list ->
    FStar_Syntax_Syntax.universes -> FStar_Syntax_Syntax.subst_elt Prims.list)
  =
  fun formals  ->
    fun us  ->
      let n1 = (FStar_List.length formals) - Prims.int_one  in
      FStar_All.pipe_right us
        (FStar_List.mapi
           (fun i  -> fun u  -> FStar_Syntax_Syntax.UN ((n1 - i), u)))
  
let (inst_tscheme_with :
  FStar_Syntax_Syntax.tscheme ->
    FStar_Syntax_Syntax.universes ->
      (FStar_Syntax_Syntax.universes * FStar_Syntax_Syntax.term))
  =
  fun ts  ->
    fun us  ->
      match (ts, us) with
      | (([],t),[]) -> ([], t)
      | ((formals,t),uu____14744) ->
          let vs = mk_univ_subst formals us  in
          let uu____14768 = FStar_Syntax_Subst.subst vs t  in
          (us, uu____14768)
  
let (inst_tscheme :
  FStar_Syntax_Syntax.tscheme ->
    (FStar_Syntax_Syntax.universes * FStar_Syntax_Syntax.term))
  =
  fun uu___1_14785  ->
    match uu___1_14785 with
    | ([],t) -> ([], t)
    | (us,t) ->
        let us' =
          FStar_All.pipe_right us
            (FStar_List.map (fun uu____14811  -> new_u_univ ()))
           in
        inst_tscheme_with (us, t) us'
  
let (inst_tscheme_with_range :
  FStar_Range.range ->
    FStar_Syntax_Syntax.tscheme ->
      (FStar_Syntax_Syntax.universes * FStar_Syntax_Syntax.term))
  =
  fun r  ->
    fun t  ->
      let uu____14831 = inst_tscheme t  in
      match uu____14831 with
      | (us,t1) ->
          let uu____14842 = FStar_Syntax_Subst.set_use_range r t1  in
          (us, uu____14842)
  
let (inst_effect_fun_with :
  FStar_Syntax_Syntax.universes ->
    env ->
      FStar_Syntax_Syntax.eff_decl ->
        FStar_Syntax_Syntax.tscheme -> FStar_Syntax_Syntax.term)
  =
  fun insts  ->
    fun env  ->
      fun ed  ->
        fun uu____14863  ->
          match uu____14863 with
          | (us,t) ->
              (match ed.FStar_Syntax_Syntax.binders with
               | [] ->
                   let univs1 =
                     FStar_List.append ed.FStar_Syntax_Syntax.univs us  in
                   (if
                      (FStar_List.length insts) <> (FStar_List.length univs1)
                    then
                      (let uu____14885 =
                         let uu____14887 =
                           FStar_All.pipe_left FStar_Util.string_of_int
                             (FStar_List.length univs1)
                            in
                         let uu____14891 =
                           FStar_All.pipe_left FStar_Util.string_of_int
                             (FStar_List.length insts)
                            in
                         let uu____14895 =
                           FStar_Syntax_Print.lid_to_string
                             ed.FStar_Syntax_Syntax.mname
                            in
                         let uu____14897 =
                           FStar_Syntax_Print.term_to_string t  in
                         FStar_Util.format4
                           "Expected %s instantiations; got %s; failed universe instantiation in effect %s\n\t%s\n"
                           uu____14887 uu____14891 uu____14895 uu____14897
                          in
                       failwith uu____14885)
                    else ();
                    (let uu____14902 =
                       inst_tscheme_with
                         ((FStar_List.append ed.FStar_Syntax_Syntax.univs us),
                           t) insts
                        in
                     FStar_Pervasives_Native.snd uu____14902))
               | uu____14911 ->
                   let uu____14912 =
                     let uu____14914 =
                       FStar_Syntax_Print.lid_to_string
                         ed.FStar_Syntax_Syntax.mname
                        in
                     FStar_Util.format1
                       "Unexpected use of an uninstantiated effect: %s\n"
                       uu____14914
                      in
                   failwith uu____14912)
  
type tri =
  | Yes 
  | No 
  | Maybe 
let (uu___is_Yes : tri -> Prims.bool) =
  fun projectee  ->
    match projectee with | Yes  -> true | uu____14926 -> false
  
let (uu___is_No : tri -> Prims.bool) =
  fun projectee  -> match projectee with | No  -> true | uu____14937 -> false 
let (uu___is_Maybe : tri -> Prims.bool) =
  fun projectee  ->
    match projectee with | Maybe  -> true | uu____14948 -> false
  
let (in_cur_mod : env -> FStar_Ident.lident -> tri) =
  fun env  ->
    fun l  ->
      let cur = current_module env  in
      if l.FStar_Ident.nsstr = cur.FStar_Ident.str
      then Yes
      else
        if FStar_Util.starts_with l.FStar_Ident.nsstr cur.FStar_Ident.str
        then
          (let lns = FStar_List.append l.FStar_Ident.ns [l.FStar_Ident.ident]
              in
           let cur1 =
             FStar_List.append cur.FStar_Ident.ns [cur.FStar_Ident.ident]  in
           let rec aux c l1 =
             match (c, l1) with
             | ([],uu____14996) -> Maybe
             | (uu____15003,[]) -> No
             | (hd1::tl1,hd'::tl') when
                 hd1.FStar_Ident.idText = hd'.FStar_Ident.idText ->
                 aux tl1 tl'
             | uu____15023 -> No  in
           aux cur1 lns)
        else No
  
type qninfo =
  (((FStar_Syntax_Syntax.universes * FStar_Syntax_Syntax.typ),(FStar_Syntax_Syntax.sigelt
                                                                *
                                                                FStar_Syntax_Syntax.universes
                                                                FStar_Pervasives_Native.option))
    FStar_Util.either * FStar_Range.range) FStar_Pervasives_Native.option
let (lookup_qname : env -> FStar_Ident.lident -> qninfo) =
  fun env  ->
    fun lid  ->
      let cur_mod = in_cur_mod env lid  in
      let cache t =
        FStar_Util.smap_add (gamma_cache env) lid.FStar_Ident.str t;
        FStar_Pervasives_Native.Some t  in
      let found =
        if cur_mod <> No
        then
          let uu____15117 =
            FStar_Util.smap_try_find (gamma_cache env) lid.FStar_Ident.str
             in
          match uu____15117 with
          | FStar_Pervasives_Native.None  ->
              let uu____15140 =
                FStar_Util.find_map env.gamma
                  (fun uu___2_15184  ->
                     match uu___2_15184 with
                     | FStar_Syntax_Syntax.Binding_lid (l,t) ->
                         let uu____15223 = FStar_Ident.lid_equals lid l  in
                         if uu____15223
                         then
                           let uu____15246 =
                             let uu____15265 =
                               let uu____15280 = inst_tscheme t  in
                               FStar_Util.Inl uu____15280  in
                             let uu____15295 = FStar_Ident.range_of_lid l  in
                             (uu____15265, uu____15295)  in
                           FStar_Pervasives_Native.Some uu____15246
                         else FStar_Pervasives_Native.None
                     | uu____15348 -> FStar_Pervasives_Native.None)
                 in
              FStar_Util.catch_opt uu____15140
                (fun uu____15386  ->
                   FStar_Util.find_map env.gamma_sig
                     (fun uu___3_15395  ->
                        match uu___3_15395 with
                        | (uu____15398,{
                                         FStar_Syntax_Syntax.sigel =
                                           FStar_Syntax_Syntax.Sig_bundle
                                           (ses,uu____15400);
                                         FStar_Syntax_Syntax.sigrng =
                                           uu____15401;
                                         FStar_Syntax_Syntax.sigquals =
                                           uu____15402;
                                         FStar_Syntax_Syntax.sigmeta =
                                           uu____15403;
                                         FStar_Syntax_Syntax.sigattrs =
                                           uu____15404;_})
                            ->
                            FStar_Util.find_map ses
                              (fun se  ->
                                 let uu____15424 =
                                   FStar_All.pipe_right
                                     (FStar_Syntax_Util.lids_of_sigelt se)
                                     (FStar_Util.for_some
                                        (FStar_Ident.lid_equals lid))
                                    in
                                 if uu____15424
                                 then
                                   cache
                                     ((FStar_Util.Inr
                                         (se, FStar_Pervasives_Native.None)),
                                       (FStar_Syntax_Util.range_of_sigelt se))
                                 else FStar_Pervasives_Native.None)
                        | (lids,s) ->
                            let maybe_cache t =
                              match s.FStar_Syntax_Syntax.sigel with
                              | FStar_Syntax_Syntax.Sig_declare_typ
                                  uu____15476 ->
                                  FStar_Pervasives_Native.Some t
                              | uu____15483 -> cache t  in
                            let uu____15484 =
                              FStar_List.tryFind (FStar_Ident.lid_equals lid)
                                lids
                               in
                            (match uu____15484 with
                             | FStar_Pervasives_Native.None  ->
                                 FStar_Pervasives_Native.None
                             | FStar_Pervasives_Native.Some l ->
                                 let uu____15490 =
                                   let uu____15491 =
                                     FStar_Ident.range_of_lid l  in
                                   ((FStar_Util.Inr
                                       (s, FStar_Pervasives_Native.None)),
                                     uu____15491)
                                    in
                                 maybe_cache uu____15490)))
          | se -> se
        else FStar_Pervasives_Native.None  in
      if FStar_Util.is_some found
      then found
      else
        (let uu____15562 = find_in_sigtab env lid  in
         match uu____15562 with
         | FStar_Pervasives_Native.Some se ->
             FStar_Pervasives_Native.Some
               ((FStar_Util.Inr (se, FStar_Pervasives_Native.None)),
                 (FStar_Syntax_Util.range_of_sigelt se))
         | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.None)
  
let (lookup_sigelt :
  env ->
    FStar_Ident.lident ->
      FStar_Syntax_Syntax.sigelt FStar_Pervasives_Native.option)
  =
  fun env  ->
    fun lid  ->
      let uu____15643 = lookup_qname env lid  in
      match uu____15643 with
      | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.None
      | FStar_Pervasives_Native.Some (FStar_Util.Inl uu____15664,rng) ->
          FStar_Pervasives_Native.None
      | FStar_Pervasives_Native.Some (FStar_Util.Inr (se,us),rng) ->
          FStar_Pervasives_Native.Some se
  
let (lookup_attr :
  env -> Prims.string -> FStar_Syntax_Syntax.sigelt Prims.list) =
  fun env  ->
    fun attr  ->
      let uu____15778 = FStar_Util.smap_try_find (attrtab env) attr  in
      match uu____15778 with
      | FStar_Pervasives_Native.Some ses -> ses
      | FStar_Pervasives_Native.None  -> []
  
let (add_se_to_attrtab : env -> FStar_Syntax_Syntax.sigelt -> unit) =
  fun env  ->
    fun se  ->
      let add_one1 env1 se1 attr =
        let uu____15823 =
          let uu____15826 = lookup_attr env1 attr  in se1 :: uu____15826  in
        FStar_Util.smap_add (attrtab env1) attr uu____15823  in
      FStar_List.iter
        (fun attr  ->
           let uu____15836 =
             let uu____15837 = FStar_Syntax_Subst.compress attr  in
             uu____15837.FStar_Syntax_Syntax.n  in
           match uu____15836 with
           | FStar_Syntax_Syntax.Tm_fvar fv ->
               let uu____15841 =
                 let uu____15843 = FStar_Syntax_Syntax.lid_of_fv fv  in
                 uu____15843.FStar_Ident.str  in
               add_one1 env se uu____15841
           | uu____15844 -> ()) se.FStar_Syntax_Syntax.sigattrs
  
let rec (add_sigelt : env -> FStar_Syntax_Syntax.sigelt -> unit) =
  fun env  ->
    fun se  ->
      match se.FStar_Syntax_Syntax.sigel with
      | FStar_Syntax_Syntax.Sig_bundle (ses,uu____15867) ->
          add_sigelts env ses
      | uu____15876 ->
          let lids = FStar_Syntax_Util.lids_of_sigelt se  in
          (FStar_List.iter
             (fun l  -> FStar_Util.smap_add (sigtab env) l.FStar_Ident.str se)
             lids;
           add_se_to_attrtab env se;
           (match se.FStar_Syntax_Syntax.sigel with
            | FStar_Syntax_Syntax.Sig_new_effect ne ->
                FStar_All.pipe_right ne.FStar_Syntax_Syntax.actions
                  (FStar_List.iter
                     (fun a  ->
                        let se_let =
                          FStar_Syntax_Util.action_as_lb
                            ne.FStar_Syntax_Syntax.mname a
                            (a.FStar_Syntax_Syntax.action_defn).FStar_Syntax_Syntax.pos
                           in
                        FStar_Util.smap_add (sigtab env)
                          (a.FStar_Syntax_Syntax.action_name).FStar_Ident.str
                          se_let))
            | uu____15891 -> ()))

and (add_sigelts : env -> FStar_Syntax_Syntax.sigelt Prims.list -> unit) =
  fun env  ->
    fun ses  -> FStar_All.pipe_right ses (FStar_List.iter (add_sigelt env))

let (try_lookup_bv :
  env ->
    FStar_Syntax_Syntax.bv ->
      (FStar_Syntax_Syntax.typ * FStar_Range.range)
        FStar_Pervasives_Native.option)
  =
  fun env  ->
    fun bv  ->
      FStar_Util.find_map env.gamma
        (fun uu___4_15923  ->
           match uu___4_15923 with
           | FStar_Syntax_Syntax.Binding_var id1 when
               FStar_Syntax_Syntax.bv_eq id1 bv ->
               FStar_Pervasives_Native.Some
                 ((id1.FStar_Syntax_Syntax.sort),
                   ((id1.FStar_Syntax_Syntax.ppname).FStar_Ident.idRange))
           | uu____15941 -> FStar_Pervasives_Native.None)
  
let (lookup_type_of_let :
  FStar_Syntax_Syntax.universes FStar_Pervasives_Native.option ->
    FStar_Syntax_Syntax.sigelt ->
      FStar_Ident.lident ->
        ((FStar_Syntax_Syntax.universes * FStar_Syntax_Syntax.term) *
          FStar_Range.range) FStar_Pervasives_Native.option)
  =
  fun us_opt  ->
    fun se  ->
      fun lid  ->
        let inst_tscheme1 ts =
          match us_opt with
          | FStar_Pervasives_Native.None  -> inst_tscheme ts
          | FStar_Pervasives_Native.Some us -> inst_tscheme_with ts us  in
        match se.FStar_Syntax_Syntax.sigel with
        | FStar_Syntax_Syntax.Sig_let ((uu____16003,lb::[]),uu____16005) ->
            let uu____16014 =
              let uu____16023 =
                inst_tscheme1
                  ((lb.FStar_Syntax_Syntax.lbunivs),
                    (lb.FStar_Syntax_Syntax.lbtyp))
                 in
              let uu____16032 =
                FStar_Syntax_Syntax.range_of_lbname
                  lb.FStar_Syntax_Syntax.lbname
                 in
              (uu____16023, uu____16032)  in
            FStar_Pervasives_Native.Some uu____16014
        | FStar_Syntax_Syntax.Sig_let ((uu____16045,lbs),uu____16047) ->
            FStar_Util.find_map lbs
              (fun lb  ->
                 match lb.FStar_Syntax_Syntax.lbname with
                 | FStar_Util.Inl uu____16079 -> failwith "impossible"
                 | FStar_Util.Inr fv ->
                     let uu____16092 = FStar_Syntax_Syntax.fv_eq_lid fv lid
                        in
                     if uu____16092
                     then
                       let uu____16105 =
                         let uu____16114 =
                           inst_tscheme1
                             ((lb.FStar_Syntax_Syntax.lbunivs),
                               (lb.FStar_Syntax_Syntax.lbtyp))
                            in
                         let uu____16123 = FStar_Syntax_Syntax.range_of_fv fv
                            in
                         (uu____16114, uu____16123)  in
                       FStar_Pervasives_Native.Some uu____16105
                     else FStar_Pervasives_Native.None)
        | uu____16146 -> FStar_Pervasives_Native.None
  
let (effect_signature :
  FStar_Syntax_Syntax.universes FStar_Pervasives_Native.option ->
    FStar_Syntax_Syntax.sigelt ->
      ((FStar_Syntax_Syntax.universes * FStar_Syntax_Syntax.term) *
        FStar_Range.range) FStar_Pervasives_Native.option)
  =
  fun us_opt  ->
    fun se  ->
      let inst_tscheme1 us_opt1 ts =
        match us_opt1 with
        | FStar_Pervasives_Native.None  -> inst_tscheme ts
        | FStar_Pervasives_Native.Some us -> inst_tscheme_with ts us  in
      match se.FStar_Syntax_Syntax.sigel with
      | FStar_Syntax_Syntax.Sig_new_effect ne ->
          let uu____16215 =
            match us_opt with
            | FStar_Pervasives_Native.None  ->
                (FStar_Pervasives_Native.None, FStar_Pervasives_Native.None)
            | FStar_Pervasives_Native.Some us ->
                if
                  (FStar_List.length us) <>
                    ((FStar_List.length ne.FStar_Syntax_Syntax.univs) +
                       (FStar_List.length
                          (FStar_Pervasives_Native.fst
                             ne.FStar_Syntax_Syntax.signature)))
                then
                  let uu____16251 =
                    let uu____16253 =
                      let uu____16255 =
                        let uu____16257 =
                          let uu____16259 =
                            FStar_Util.string_of_int
                              ((FStar_List.length
                                  ne.FStar_Syntax_Syntax.univs)
                                 +
                                 (FStar_List.length
                                    (FStar_Pervasives_Native.fst
                                       ne.FStar_Syntax_Syntax.signature)))
                             in
                          let uu____16265 =
                            let uu____16267 =
                              FStar_Util.string_of_int (FStar_List.length us)
                               in
                            Prims.op_Hat ", got " uu____16267  in
                          Prims.op_Hat uu____16259 uu____16265  in
                        Prims.op_Hat ", expected " uu____16257  in
                      Prims.op_Hat
                        (ne.FStar_Syntax_Syntax.mname).FStar_Ident.str
                        uu____16255
                       in
                    Prims.op_Hat
                      "effect_signature: insufficient number of universes for the signature of "
                      uu____16253
                     in
                  failwith uu____16251
                else
                  (let uu____16282 =
                     FStar_List.splitAt
                       (FStar_List.length ne.FStar_Syntax_Syntax.univs) us
                      in
                   match uu____16282 with
                   | (ne_us,sig_us) ->
                       ((FStar_Pervasives_Native.Some ne_us),
                         (FStar_Pervasives_Native.Some sig_us)))
             in
          (match uu____16215 with
           | (ne_us,sig_us) ->
               let uu____16333 =
                 inst_tscheme1 sig_us ne.FStar_Syntax_Syntax.signature  in
               (match uu____16333 with
                | (sig_us1,signature_t) ->
                    let uu____16350 =
                      let uu____16355 =
                        let uu____16356 =
                          let uu____16359 =
                            FStar_Syntax_Syntax.mk_Total signature_t  in
                          FStar_Syntax_Util.arrow
                            ne.FStar_Syntax_Syntax.binders uu____16359
                           in
                        ((ne.FStar_Syntax_Syntax.univs), uu____16356)  in
                      inst_tscheme1 ne_us uu____16355  in
                    (match uu____16350 with
                     | (ne_us1,signature_t1) ->
                         FStar_Pervasives_Native.Some
                           (((FStar_List.append ne_us1 sig_us1),
                              signature_t1), (se.FStar_Syntax_Syntax.sigrng)))))
      | FStar_Syntax_Syntax.Sig_effect_abbrev
          (lid,us,binders,uu____16393,uu____16394) ->
          let uu____16399 =
            let uu____16408 =
              let uu____16413 =
                let uu____16414 =
                  let uu____16417 =
                    FStar_Syntax_Syntax.mk_Total FStar_Syntax_Syntax.teff  in
                  FStar_Syntax_Util.arrow binders uu____16417  in
                (us, uu____16414)  in
              inst_tscheme1 us_opt uu____16413  in
            (uu____16408, (se.FStar_Syntax_Syntax.sigrng))  in
          FStar_Pervasives_Native.Some uu____16399
      | uu____16436 -> FStar_Pervasives_Native.None
  
let (try_lookup_lid_aux :
  FStar_Syntax_Syntax.universes FStar_Pervasives_Native.option ->
    env ->
      FStar_Ident.lident ->
        ((FStar_Syntax_Syntax.universes * FStar_Syntax_Syntax.term'
          FStar_Syntax_Syntax.syntax) * FStar_Range.range)
          FStar_Pervasives_Native.option)
  =
  fun us_opt  ->
    fun env  ->
      fun lid  ->
        let inst_tscheme1 ts =
          match us_opt with
          | FStar_Pervasives_Native.None  -> inst_tscheme ts
          | FStar_Pervasives_Native.Some us -> inst_tscheme_with ts us  in
        let mapper uu____16525 =
          match uu____16525 with
          | (lr,rng) ->
              (match lr with
               | FStar_Util.Inl t -> FStar_Pervasives_Native.Some (t, rng)
               | FStar_Util.Inr
                   ({
                      FStar_Syntax_Syntax.sigel =
                        FStar_Syntax_Syntax.Sig_datacon
                        (uu____16621,uvs,t,uu____16624,uu____16625,uu____16626);
                      FStar_Syntax_Syntax.sigrng = uu____16627;
                      FStar_Syntax_Syntax.sigquals = uu____16628;
                      FStar_Syntax_Syntax.sigmeta = uu____16629;
                      FStar_Syntax_Syntax.sigattrs = uu____16630;_},FStar_Pervasives_Native.None
                    )
                   ->
                   let uu____16653 =
                     let uu____16662 = inst_tscheme1 (uvs, t)  in
                     (uu____16662, rng)  in
                   FStar_Pervasives_Native.Some uu____16653
               | FStar_Util.Inr
                   ({
                      FStar_Syntax_Syntax.sigel =
                        FStar_Syntax_Syntax.Sig_declare_typ (l,uvs,t);
                      FStar_Syntax_Syntax.sigrng = uu____16686;
                      FStar_Syntax_Syntax.sigquals = qs;
                      FStar_Syntax_Syntax.sigmeta = uu____16688;
                      FStar_Syntax_Syntax.sigattrs = uu____16689;_},FStar_Pervasives_Native.None
                    )
                   ->
                   let uu____16706 =
                     let uu____16708 = in_cur_mod env l  in uu____16708 = Yes
                      in
                   if uu____16706
                   then
                     let uu____16720 =
                       (FStar_All.pipe_right qs
                          (FStar_List.contains FStar_Syntax_Syntax.Assumption))
                         || env.is_iface
                        in
                     (if uu____16720
                      then
                        let uu____16736 =
                          let uu____16745 = inst_tscheme1 (uvs, t)  in
                          (uu____16745, rng)  in
                        FStar_Pervasives_Native.Some uu____16736
                      else FStar_Pervasives_Native.None)
                   else
                     (let uu____16778 =
                        let uu____16787 = inst_tscheme1 (uvs, t)  in
                        (uu____16787, rng)  in
                      FStar_Pervasives_Native.Some uu____16778)
               | FStar_Util.Inr
                   ({
                      FStar_Syntax_Syntax.sigel =
                        FStar_Syntax_Syntax.Sig_inductive_typ
                        (lid1,uvs,tps,k,uu____16812,uu____16813);
                      FStar_Syntax_Syntax.sigrng = uu____16814;
                      FStar_Syntax_Syntax.sigquals = uu____16815;
                      FStar_Syntax_Syntax.sigmeta = uu____16816;
                      FStar_Syntax_Syntax.sigattrs = uu____16817;_},FStar_Pervasives_Native.None
                    )
                   ->
                   (match tps with
                    | [] ->
                        let uu____16858 =
                          let uu____16867 = inst_tscheme1 (uvs, k)  in
                          (uu____16867, rng)  in
                        FStar_Pervasives_Native.Some uu____16858
                    | uu____16888 ->
                        let uu____16889 =
                          let uu____16898 =
                            let uu____16903 =
                              let uu____16904 =
                                let uu____16907 =
                                  FStar_Syntax_Syntax.mk_Total k  in
                                FStar_Syntax_Util.flat_arrow tps uu____16907
                                 in
                              (uvs, uu____16904)  in
                            inst_tscheme1 uu____16903  in
                          (uu____16898, rng)  in
                        FStar_Pervasives_Native.Some uu____16889)
               | FStar_Util.Inr
                   ({
                      FStar_Syntax_Syntax.sigel =
                        FStar_Syntax_Syntax.Sig_inductive_typ
                        (lid1,uvs,tps,k,uu____16930,uu____16931);
                      FStar_Syntax_Syntax.sigrng = uu____16932;
                      FStar_Syntax_Syntax.sigquals = uu____16933;
                      FStar_Syntax_Syntax.sigmeta = uu____16934;
                      FStar_Syntax_Syntax.sigattrs = uu____16935;_},FStar_Pervasives_Native.Some
                    us)
                   ->
                   (match tps with
                    | [] ->
                        let uu____16977 =
                          let uu____16986 = inst_tscheme_with (uvs, k) us  in
                          (uu____16986, rng)  in
                        FStar_Pervasives_Native.Some uu____16977
                    | uu____17007 ->
                        let uu____17008 =
                          let uu____17017 =
                            let uu____17022 =
                              let uu____17023 =
                                let uu____17026 =
                                  FStar_Syntax_Syntax.mk_Total k  in
                                FStar_Syntax_Util.flat_arrow tps uu____17026
                                 in
                              (uvs, uu____17023)  in
                            inst_tscheme_with uu____17022 us  in
                          (uu____17017, rng)  in
                        FStar_Pervasives_Native.Some uu____17008)
               | FStar_Util.Inr se ->
                   let uu____17062 =
                     match se with
                     | ({
                          FStar_Syntax_Syntax.sigel =
                            FStar_Syntax_Syntax.Sig_let uu____17083;
                          FStar_Syntax_Syntax.sigrng = uu____17084;
                          FStar_Syntax_Syntax.sigquals = uu____17085;
                          FStar_Syntax_Syntax.sigmeta = uu____17086;
                          FStar_Syntax_Syntax.sigattrs = uu____17087;_},FStar_Pervasives_Native.None
                        ) ->
                         lookup_type_of_let us_opt
                           (FStar_Pervasives_Native.fst se) lid
                     | uu____17102 ->
                         effect_signature us_opt
                           (FStar_Pervasives_Native.fst se)
                      in
                   FStar_All.pipe_right uu____17062
                     (FStar_Util.map_option
                        (fun uu____17150  ->
                           match uu____17150 with
                           | (us_t,rng1) -> (us_t, rng1))))
           in
        let uu____17181 =
          let uu____17192 = lookup_qname env lid  in
          FStar_Util.bind_opt uu____17192 mapper  in
        match uu____17181 with
        | FStar_Pervasives_Native.Some ((us,t),r) ->
            let uu____17266 =
              let uu____17277 =
                let uu____17284 =
                  let uu___843_17287 = t  in
                  let uu____17288 = FStar_Ident.range_of_lid lid  in
                  {
                    FStar_Syntax_Syntax.n =
                      (uu___843_17287.FStar_Syntax_Syntax.n);
                    FStar_Syntax_Syntax.pos = uu____17288;
                    FStar_Syntax_Syntax.vars =
                      (uu___843_17287.FStar_Syntax_Syntax.vars)
                  }  in
                (us, uu____17284)  in
              (uu____17277, r)  in
            FStar_Pervasives_Native.Some uu____17266
        | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.None
  
let (lid_exists : env -> FStar_Ident.lident -> Prims.bool) =
  fun env  ->
    fun l  ->
      let uu____17337 = lookup_qname env l  in
      match uu____17337 with
      | FStar_Pervasives_Native.None  -> false
      | FStar_Pervasives_Native.Some uu____17358 -> true
  
let (lookup_bv :
  env ->
    FStar_Syntax_Syntax.bv -> (FStar_Syntax_Syntax.typ * FStar_Range.range))
  =
  fun env  ->
    fun bv  ->
      let bvr = FStar_Syntax_Syntax.range_of_bv bv  in
      let uu____17412 = try_lookup_bv env bv  in
      match uu____17412 with
      | FStar_Pervasives_Native.None  ->
          let uu____17427 = variable_not_found bv  in
          FStar_Errors.raise_error uu____17427 bvr
      | FStar_Pervasives_Native.Some (t,r) ->
          let uu____17443 = FStar_Syntax_Subst.set_use_range bvr t  in
          let uu____17444 =
            let uu____17445 = FStar_Range.use_range bvr  in
            FStar_Range.set_use_range r uu____17445  in
          (uu____17443, uu____17444)
  
let (try_lookup_lid :
  env ->
    FStar_Ident.lident ->
      ((FStar_Syntax_Syntax.universes * FStar_Syntax_Syntax.typ) *
        FStar_Range.range) FStar_Pervasives_Native.option)
  =
  fun env  ->
    fun l  ->
      let uu____17467 = try_lookup_lid_aux FStar_Pervasives_Native.None env l
         in
      match uu____17467 with
      | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.None
      | FStar_Pervasives_Native.Some ((us,t),r) ->
          let use_range1 = FStar_Ident.range_of_lid l  in
          let r1 =
            let uu____17533 = FStar_Range.use_range use_range1  in
            FStar_Range.set_use_range r uu____17533  in
          let uu____17534 =
            let uu____17543 =
              let uu____17548 = FStar_Syntax_Subst.set_use_range use_range1 t
                 in
              (us, uu____17548)  in
            (uu____17543, r1)  in
          FStar_Pervasives_Native.Some uu____17534
  
let (try_lookup_and_inst_lid :
  env ->
    FStar_Syntax_Syntax.universes ->
      FStar_Ident.lident ->
        (FStar_Syntax_Syntax.typ * FStar_Range.range)
          FStar_Pervasives_Native.option)
  =
  fun env  ->
    fun us  ->
      fun l  ->
        let uu____17583 =
          try_lookup_lid_aux (FStar_Pervasives_Native.Some us) env l  in
        match uu____17583 with
        | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.None
        | FStar_Pervasives_Native.Some ((uu____17616,t),r) ->
            let use_range1 = FStar_Ident.range_of_lid l  in
            let r1 =
              let uu____17641 = FStar_Range.use_range use_range1  in
              FStar_Range.set_use_range r uu____17641  in
            let uu____17642 =
              let uu____17647 = FStar_Syntax_Subst.set_use_range use_range1 t
                 in
              (uu____17647, r1)  in
            FStar_Pervasives_Native.Some uu____17642
  
let (lookup_lid :
  env ->
    FStar_Ident.lident ->
      ((FStar_Syntax_Syntax.universes * FStar_Syntax_Syntax.typ) *
        FStar_Range.range))
  =
  fun env  ->
    fun l  ->
      let uu____17671 = try_lookup_lid env l  in
      match uu____17671 with
      | FStar_Pervasives_Native.None  ->
          let uu____17698 = name_not_found l  in
          let uu____17704 = FStar_Ident.range_of_lid l  in
          FStar_Errors.raise_error uu____17698 uu____17704
      | FStar_Pervasives_Native.Some v1 -> v1
  
let (lookup_univ : env -> FStar_Syntax_Syntax.univ_name -> Prims.bool) =
  fun env  ->
    fun x  ->
      FStar_All.pipe_right
        (FStar_List.find
           (fun uu___5_17747  ->
              match uu___5_17747 with
              | FStar_Syntax_Syntax.Binding_univ y ->
                  x.FStar_Ident.idText = y.FStar_Ident.idText
              | uu____17751 -> false) env.gamma) FStar_Option.isSome
  
let (try_lookup_val_decl :
  env ->
    FStar_Ident.lident ->
      (FStar_Syntax_Syntax.tscheme * FStar_Syntax_Syntax.qualifier
        Prims.list) FStar_Pervasives_Native.option)
  =
  fun env  ->
    fun lid  ->
      let uu____17772 = lookup_qname env lid  in
      match uu____17772 with
      | FStar_Pervasives_Native.Some
          (FStar_Util.Inr
           ({
              FStar_Syntax_Syntax.sigel = FStar_Syntax_Syntax.Sig_declare_typ
                (uu____17781,uvs,t);
              FStar_Syntax_Syntax.sigrng = uu____17784;
              FStar_Syntax_Syntax.sigquals = q;
              FStar_Syntax_Syntax.sigmeta = uu____17786;
              FStar_Syntax_Syntax.sigattrs = uu____17787;_},FStar_Pervasives_Native.None
            ),uu____17788)
          ->
          let uu____17837 =
            let uu____17844 =
              let uu____17845 =
                let uu____17848 = FStar_Ident.range_of_lid lid  in
                FStar_Syntax_Subst.set_use_range uu____17848 t  in
              (uvs, uu____17845)  in
            (uu____17844, q)  in
          FStar_Pervasives_Native.Some uu____17837
      | uu____17861 -> FStar_Pervasives_Native.None
  
let (lookup_val_decl :
  env ->
    FStar_Ident.lident ->
      (FStar_Syntax_Syntax.universes * FStar_Syntax_Syntax.typ))
  =
  fun env  ->
    fun lid  ->
      let uu____17883 = lookup_qname env lid  in
      match uu____17883 with
      | FStar_Pervasives_Native.Some
          (FStar_Util.Inr
           ({
              FStar_Syntax_Syntax.sigel = FStar_Syntax_Syntax.Sig_declare_typ
                (uu____17888,uvs,t);
              FStar_Syntax_Syntax.sigrng = uu____17891;
              FStar_Syntax_Syntax.sigquals = uu____17892;
              FStar_Syntax_Syntax.sigmeta = uu____17893;
              FStar_Syntax_Syntax.sigattrs = uu____17894;_},FStar_Pervasives_Native.None
            ),uu____17895)
          ->
          let uu____17944 = FStar_Ident.range_of_lid lid  in
          inst_tscheme_with_range uu____17944 (uvs, t)
      | uu____17949 ->
          let uu____17950 = name_not_found lid  in
          let uu____17956 = FStar_Ident.range_of_lid lid  in
          FStar_Errors.raise_error uu____17950 uu____17956
  
let (lookup_datacon :
  env ->
    FStar_Ident.lident ->
      (FStar_Syntax_Syntax.universes * FStar_Syntax_Syntax.typ))
  =
  fun env  ->
    fun lid  ->
      let uu____17976 = lookup_qname env lid  in
      match uu____17976 with
      | FStar_Pervasives_Native.Some
          (FStar_Util.Inr
           ({
              FStar_Syntax_Syntax.sigel = FStar_Syntax_Syntax.Sig_datacon
                (uu____17981,uvs,t,uu____17984,uu____17985,uu____17986);
              FStar_Syntax_Syntax.sigrng = uu____17987;
              FStar_Syntax_Syntax.sigquals = uu____17988;
              FStar_Syntax_Syntax.sigmeta = uu____17989;
              FStar_Syntax_Syntax.sigattrs = uu____17990;_},FStar_Pervasives_Native.None
            ),uu____17991)
          ->
          let uu____18046 = FStar_Ident.range_of_lid lid  in
          inst_tscheme_with_range uu____18046 (uvs, t)
      | uu____18051 ->
          let uu____18052 = name_not_found lid  in
          let uu____18058 = FStar_Ident.range_of_lid lid  in
          FStar_Errors.raise_error uu____18052 uu____18058
  
let (datacons_of_typ :
  env -> FStar_Ident.lident -> (Prims.bool * FStar_Ident.lident Prims.list))
  =
  fun env  ->
    fun lid  ->
      let uu____18081 = lookup_qname env lid  in
      match uu____18081 with
      | FStar_Pervasives_Native.Some
          (FStar_Util.Inr
           ({
              FStar_Syntax_Syntax.sigel =
                FStar_Syntax_Syntax.Sig_inductive_typ
                (uu____18089,uu____18090,uu____18091,uu____18092,uu____18093,dcs);
              FStar_Syntax_Syntax.sigrng = uu____18095;
              FStar_Syntax_Syntax.sigquals = uu____18096;
              FStar_Syntax_Syntax.sigmeta = uu____18097;
              FStar_Syntax_Syntax.sigattrs = uu____18098;_},uu____18099),uu____18100)
          -> (true, dcs)
      | uu____18163 -> (false, [])
  
let (typ_of_datacon : env -> FStar_Ident.lident -> FStar_Ident.lident) =
  fun env  ->
    fun lid  ->
      let uu____18179 = lookup_qname env lid  in
      match uu____18179 with
      | FStar_Pervasives_Native.Some
          (FStar_Util.Inr
           ({
              FStar_Syntax_Syntax.sigel = FStar_Syntax_Syntax.Sig_datacon
                (uu____18180,uu____18181,uu____18182,l,uu____18184,uu____18185);
              FStar_Syntax_Syntax.sigrng = uu____18186;
              FStar_Syntax_Syntax.sigquals = uu____18187;
              FStar_Syntax_Syntax.sigmeta = uu____18188;
              FStar_Syntax_Syntax.sigattrs = uu____18189;_},uu____18190),uu____18191)
          -> l
      | uu____18248 ->
          let uu____18249 =
            let uu____18251 = FStar_Syntax_Print.lid_to_string lid  in
            FStar_Util.format1 "Not a datacon: %s" uu____18251  in
          failwith uu____18249
  
let (lookup_definition_qninfo_aux :
  Prims.bool ->
    delta_level Prims.list ->
      FStar_Ident.lident ->
        qninfo ->
          (FStar_Syntax_Syntax.univ_name Prims.list *
            FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax)
            FStar_Pervasives_Native.option)
  =
  fun rec_ok  ->
    fun delta_levels  ->
      fun lid  ->
        fun qninfo  ->
          let visible quals =
            FStar_All.pipe_right delta_levels
              (FStar_Util.for_some
                 (fun dl  ->
                    FStar_All.pipe_right quals
                      (FStar_Util.for_some (visible_at dl))))
             in
          match qninfo with
          | FStar_Pervasives_Native.Some
              (FStar_Util.Inr (se,FStar_Pervasives_Native.None ),uu____18321)
              ->
              (match se.FStar_Syntax_Syntax.sigel with
               | FStar_Syntax_Syntax.Sig_let ((is_rec,lbs),uu____18378) when
                   (visible se.FStar_Syntax_Syntax.sigquals) &&
                     ((Prims.op_Negation is_rec) || rec_ok)
                   ->
                   FStar_Util.find_map lbs
                     (fun lb  ->
                        let fv =
                          FStar_Util.right lb.FStar_Syntax_Syntax.lbname  in
                        let uu____18402 =
                          FStar_Syntax_Syntax.fv_eq_lid fv lid  in
                        if uu____18402
                        then
                          FStar_Pervasives_Native.Some
                            ((lb.FStar_Syntax_Syntax.lbunivs),
                              (lb.FStar_Syntax_Syntax.lbdef))
                        else FStar_Pervasives_Native.None)
               | uu____18437 -> FStar_Pervasives_Native.None)
          | uu____18446 -> FStar_Pervasives_Native.None
  
let (lookup_definition_qninfo :
  delta_level Prims.list ->
    FStar_Ident.lident ->
      qninfo ->
        (FStar_Syntax_Syntax.univ_names * FStar_Syntax_Syntax.term)
          FStar_Pervasives_Native.option)
  =
  fun delta_levels  ->
    fun lid  ->
      fun qninfo  ->
        lookup_definition_qninfo_aux true delta_levels lid qninfo
  
let (lookup_definition :
  delta_level Prims.list ->
    env ->
      FStar_Ident.lident ->
        (FStar_Syntax_Syntax.univ_names * FStar_Syntax_Syntax.term)
          FStar_Pervasives_Native.option)
  =
  fun delta_levels  ->
    fun env  ->
      fun lid  ->
        let uu____18508 = lookup_qname env lid  in
        FStar_All.pipe_left (lookup_definition_qninfo delta_levels lid)
          uu____18508
  
let (lookup_nonrec_definition :
  delta_level Prims.list ->
    env ->
      FStar_Ident.lident ->
        (FStar_Syntax_Syntax.univ_names * FStar_Syntax_Syntax.term)
          FStar_Pervasives_Native.option)
  =
  fun delta_levels  ->
    fun env  ->
      fun lid  ->
        let uu____18541 = lookup_qname env lid  in
        FStar_All.pipe_left
          (lookup_definition_qninfo_aux false delta_levels lid) uu____18541
  
let (delta_depth_of_qninfo :
  FStar_Syntax_Syntax.fv ->
    qninfo -> FStar_Syntax_Syntax.delta_depth FStar_Pervasives_Native.option)
  =
  fun fv  ->
    fun qn  ->
      let lid = (fv.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v  in
      if lid.FStar_Ident.nsstr = "Prims"
      then FStar_Pervasives_Native.Some (fv.FStar_Syntax_Syntax.fv_delta)
      else
        (match qn with
         | FStar_Pervasives_Native.None  ->
             FStar_Pervasives_Native.Some
               (FStar_Syntax_Syntax.Delta_constant_at_level Prims.int_zero)
         | FStar_Pervasives_Native.Some
             (FStar_Util.Inl uu____18593,uu____18594) ->
             FStar_Pervasives_Native.Some
               (FStar_Syntax_Syntax.Delta_constant_at_level Prims.int_zero)
         | FStar_Pervasives_Native.Some
             (FStar_Util.Inr (se,uu____18643),uu____18644) ->
             (match se.FStar_Syntax_Syntax.sigel with
              | FStar_Syntax_Syntax.Sig_inductive_typ uu____18693 ->
                  FStar_Pervasives_Native.Some
                    (FStar_Syntax_Syntax.Delta_constant_at_level
                       Prims.int_zero)
              | FStar_Syntax_Syntax.Sig_bundle uu____18711 ->
                  FStar_Pervasives_Native.Some
                    (FStar_Syntax_Syntax.Delta_constant_at_level
                       Prims.int_zero)
              | FStar_Syntax_Syntax.Sig_datacon uu____18721 ->
                  FStar_Pervasives_Native.Some
                    (FStar_Syntax_Syntax.Delta_constant_at_level
                       Prims.int_zero)
              | FStar_Syntax_Syntax.Sig_declare_typ uu____18738 ->
                  let uu____18745 =
                    FStar_Syntax_DsEnv.delta_depth_of_declaration lid
                      se.FStar_Syntax_Syntax.sigquals
                     in
                  FStar_Pervasives_Native.Some uu____18745
              | FStar_Syntax_Syntax.Sig_let ((uu____18746,lbs),uu____18748)
                  ->
                  FStar_Util.find_map lbs
                    (fun lb  ->
                       let fv1 =
                         FStar_Util.right lb.FStar_Syntax_Syntax.lbname  in
                       let uu____18764 =
                         FStar_Syntax_Syntax.fv_eq_lid fv1 lid  in
                       if uu____18764
                       then
                         FStar_Pervasives_Native.Some
                           (fv1.FStar_Syntax_Syntax.fv_delta)
                       else FStar_Pervasives_Native.None)
              | FStar_Syntax_Syntax.Sig_splice uu____18771 ->
                  FStar_Pervasives_Native.Some
                    (FStar_Syntax_Syntax.Delta_constant_at_level
                       Prims.int_one)
              | FStar_Syntax_Syntax.Sig_main uu____18779 ->
                  FStar_Pervasives_Native.None
              | FStar_Syntax_Syntax.Sig_assume uu____18780 ->
                  FStar_Pervasives_Native.None
              | FStar_Syntax_Syntax.Sig_new_effect uu____18787 ->
                  FStar_Pervasives_Native.None
              | FStar_Syntax_Syntax.Sig_new_effect_for_free uu____18788 ->
                  FStar_Pervasives_Native.None
              | FStar_Syntax_Syntax.Sig_sub_effect uu____18789 ->
                  FStar_Pervasives_Native.None
              | FStar_Syntax_Syntax.Sig_effect_abbrev uu____18790 ->
                  FStar_Pervasives_Native.None
              | FStar_Syntax_Syntax.Sig_pragma uu____18803 ->
                  FStar_Pervasives_Native.None))
  
let (delta_depth_of_fv :
  env -> FStar_Syntax_Syntax.fv -> FStar_Syntax_Syntax.delta_depth) =
  fun env  ->
    fun fv  ->
      let lid = (fv.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v  in
      if lid.FStar_Ident.nsstr = "Prims"
      then fv.FStar_Syntax_Syntax.fv_delta
      else
        (let uu____18821 =
           FStar_All.pipe_right lid.FStar_Ident.str
             (FStar_Util.smap_try_find env.fv_delta_depths)
            in
         FStar_All.pipe_right uu____18821
           (fun d_opt  ->
              let uu____18834 = FStar_All.pipe_right d_opt FStar_Util.is_some
                 in
              if uu____18834
              then FStar_All.pipe_right d_opt FStar_Util.must
              else
                (let uu____18844 =
                   let uu____18847 =
                     lookup_qname env
                       (fv.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v
                      in
                   delta_depth_of_qninfo fv uu____18847  in
                 match uu____18844 with
                 | FStar_Pervasives_Native.None  ->
                     let uu____18848 =
                       let uu____18850 = FStar_Syntax_Print.fv_to_string fv
                          in
                       FStar_Util.format1 "Delta depth not found for %s"
                         uu____18850
                        in
                     failwith uu____18848
                 | FStar_Pervasives_Native.Some d ->
                     ((let uu____18855 =
                         (d <> fv.FStar_Syntax_Syntax.fv_delta) &&
                           (FStar_Options.debug_any ())
                          in
                       if uu____18855
                       then
                         let uu____18858 = FStar_Syntax_Print.fv_to_string fv
                            in
                         let uu____18860 =
                           FStar_Syntax_Print.delta_depth_to_string
                             fv.FStar_Syntax_Syntax.fv_delta
                            in
                         let uu____18862 =
                           FStar_Syntax_Print.delta_depth_to_string d  in
                         FStar_Util.print3
                           "WARNING WARNING WARNING fv=%s, delta_depth=%s, env.delta_depth=%s\n"
                           uu____18858 uu____18860 uu____18862
                       else ());
                      FStar_Util.smap_add env.fv_delta_depths
                        lid.FStar_Ident.str d;
                      d))))
  
let (quals_of_qninfo :
  qninfo ->
    FStar_Syntax_Syntax.qualifier Prims.list FStar_Pervasives_Native.option)
  =
  fun qninfo  ->
    match qninfo with
    | FStar_Pervasives_Native.Some
        (FStar_Util.Inr (se,uu____18887),uu____18888) ->
        FStar_Pervasives_Native.Some (se.FStar_Syntax_Syntax.sigquals)
    | uu____18937 -> FStar_Pervasives_Native.None
  
let (attrs_of_qninfo :
  qninfo ->
    FStar_Syntax_Syntax.attribute Prims.list FStar_Pervasives_Native.option)
  =
  fun qninfo  ->
    match qninfo with
    | FStar_Pervasives_Native.Some
        (FStar_Util.Inr (se,uu____18959),uu____18960) ->
        FStar_Pervasives_Native.Some (se.FStar_Syntax_Syntax.sigattrs)
    | uu____19009 -> FStar_Pervasives_Native.None
  
let (lookup_attrs_of_lid :
  env ->
    FStar_Ident.lid ->
      FStar_Syntax_Syntax.attribute Prims.list FStar_Pervasives_Native.option)
  =
  fun env  ->
    fun lid  ->
      let uu____19031 = lookup_qname env lid  in
      FStar_All.pipe_left attrs_of_qninfo uu____19031
  
let (fv_with_lid_has_attr :
  env -> FStar_Ident.lid -> FStar_Ident.lid -> Prims.bool) =
  fun env  ->
    fun fv_lid1  ->
      fun attr_lid  ->
        let uu____19054 = lookup_attrs_of_lid env fv_lid1  in
        match uu____19054 with
        | FStar_Pervasives_Native.None  -> false
        | FStar_Pervasives_Native.Some [] -> false
        | FStar_Pervasives_Native.Some attrs ->
            FStar_All.pipe_right attrs
              (FStar_Util.for_some
                 (fun tm  ->
                    let uu____19078 =
                      let uu____19079 = FStar_Syntax_Util.un_uinst tm  in
                      uu____19079.FStar_Syntax_Syntax.n  in
                    match uu____19078 with
                    | FStar_Syntax_Syntax.Tm_fvar fv ->
                        FStar_Syntax_Syntax.fv_eq_lid fv attr_lid
                    | uu____19084 -> false))
  
let (fv_has_attr :
  env -> FStar_Syntax_Syntax.fv -> FStar_Ident.lid -> Prims.bool) =
  fun env  ->
    fun fv  ->
      fun attr_lid  ->
        fv_with_lid_has_attr env
          (fv.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v attr_lid
  
let (fv_has_strict_args :
  env ->
    FStar_Syntax_Syntax.fv ->
      Prims.int Prims.list FStar_Pervasives_Native.option)
  =
  fun env  ->
    fun fv  ->
      let s =
        let uu____19121 = FStar_Syntax_Syntax.lid_of_fv fv  in
        uu____19121.FStar_Ident.str  in
      let uu____19122 = FStar_Util.smap_try_find env.strict_args_tab s  in
      match uu____19122 with
      | FStar_Pervasives_Native.None  ->
          let attrs =
            let uu____19150 = FStar_Syntax_Syntax.lid_of_fv fv  in
            lookup_attrs_of_lid env uu____19150  in
          (match attrs with
           | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.None
           | FStar_Pervasives_Native.Some attrs1 ->
               let res =
                 FStar_Util.find_map attrs1
                   (fun x  ->
                      let uu____19178 =
                        FStar_ToSyntax_ToSyntax.parse_attr_with_list false x
                          FStar_Parser_Const.strict_on_arguments_attr
                         in
                      FStar_Pervasives_Native.fst uu____19178)
                  in
               (FStar_Util.smap_add env.strict_args_tab s res; res))
      | FStar_Pervasives_Native.Some l -> l
  
let (try_lookup_effect_lid :
  env ->
    FStar_Ident.lident ->
      FStar_Syntax_Syntax.term FStar_Pervasives_Native.option)
  =
  fun env  ->
    fun ftv  ->
      let uu____19228 = lookup_qname env ftv  in
      match uu____19228 with
      | FStar_Pervasives_Native.Some
          (FStar_Util.Inr (se,FStar_Pervasives_Native.None ),uu____19232) ->
          let uu____19277 = effect_signature FStar_Pervasives_Native.None se
             in
          (match uu____19277 with
           | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.None
           | FStar_Pervasives_Native.Some ((uu____19298,t),r) ->
               let uu____19313 =
                 let uu____19314 = FStar_Ident.range_of_lid ftv  in
                 FStar_Syntax_Subst.set_use_range uu____19314 t  in
               FStar_Pervasives_Native.Some uu____19313)
      | uu____19315 -> FStar_Pervasives_Native.None
  
let (lookup_effect_lid :
  env -> FStar_Ident.lident -> FStar_Syntax_Syntax.term) =
  fun env  ->
    fun ftv  ->
      let uu____19327 = try_lookup_effect_lid env ftv  in
      match uu____19327 with
      | FStar_Pervasives_Native.None  ->
          let uu____19330 = name_not_found ftv  in
          let uu____19336 = FStar_Ident.range_of_lid ftv  in
          FStar_Errors.raise_error uu____19330 uu____19336
      | FStar_Pervasives_Native.Some k -> k
  
let (lookup_effect_abbrev :
  env ->
    FStar_Syntax_Syntax.universes ->
      FStar_Ident.lident ->
        (FStar_Syntax_Syntax.binders * FStar_Syntax_Syntax.comp)
          FStar_Pervasives_Native.option)
  =
  fun env  ->
    fun univ_insts  ->
      fun lid0  ->
        let uu____19360 = lookup_qname env lid0  in
        match uu____19360 with
        | FStar_Pervasives_Native.Some
            (FStar_Util.Inr
             ({
                FStar_Syntax_Syntax.sigel =
                  FStar_Syntax_Syntax.Sig_effect_abbrev
                  (lid,univs1,binders,c,uu____19371);
                FStar_Syntax_Syntax.sigrng = uu____19372;
                FStar_Syntax_Syntax.sigquals = quals;
                FStar_Syntax_Syntax.sigmeta = uu____19374;
                FStar_Syntax_Syntax.sigattrs = uu____19375;_},FStar_Pervasives_Native.None
              ),uu____19376)
            ->
            let lid1 =
              let uu____19430 =
                let uu____19431 = FStar_Ident.range_of_lid lid  in
                let uu____19432 =
                  let uu____19433 = FStar_Ident.range_of_lid lid0  in
                  FStar_Range.use_range uu____19433  in
                FStar_Range.set_use_range uu____19431 uu____19432  in
              FStar_Ident.set_lid_range lid uu____19430  in
            let uu____19434 =
              FStar_All.pipe_right quals
                (FStar_Util.for_some
                   (fun uu___6_19440  ->
                      match uu___6_19440 with
                      | FStar_Syntax_Syntax.Irreducible  -> true
                      | uu____19443 -> false))
               in
            if uu____19434
            then FStar_Pervasives_Native.None
            else
              (let insts =
                 if
                   (FStar_List.length univ_insts) =
                     (FStar_List.length univs1)
                 then univ_insts
                 else
                   (let uu____19462 =
                      let uu____19464 =
                        let uu____19466 = get_range env  in
                        FStar_Range.string_of_range uu____19466  in
                      let uu____19467 = FStar_Syntax_Print.lid_to_string lid1
                         in
                      let uu____19469 =
                        FStar_All.pipe_right (FStar_List.length univ_insts)
                          FStar_Util.string_of_int
                         in
                      FStar_Util.format3
                        "(%s) Unexpected instantiation of effect %s with %s universes"
                        uu____19464 uu____19467 uu____19469
                       in
                    failwith uu____19462)
                  in
               match (binders, univs1) with
               | ([],uu____19490) ->
                   failwith
                     "Unexpected effect abbreviation with no arguments"
               | (uu____19516,uu____19517::uu____19518::uu____19519) ->
                   let uu____19540 =
                     let uu____19542 = FStar_Syntax_Print.lid_to_string lid1
                        in
                     let uu____19544 =
                       FStar_All.pipe_left FStar_Util.string_of_int
                         (FStar_List.length univs1)
                        in
                     FStar_Util.format2
                       "Unexpected effect abbreviation %s; polymorphic in %s universes"
                       uu____19542 uu____19544
                      in
                   failwith uu____19540
               | uu____19555 ->
                   let uu____19570 =
                     let uu____19575 =
                       let uu____19576 = FStar_Syntax_Util.arrow binders c
                          in
                       (univs1, uu____19576)  in
                     inst_tscheme_with uu____19575 insts  in
                   (match uu____19570 with
                    | (uu____19589,t) ->
                        let t1 =
                          let uu____19592 = FStar_Ident.range_of_lid lid1  in
                          FStar_Syntax_Subst.set_use_range uu____19592 t  in
                        let uu____19593 =
                          let uu____19594 = FStar_Syntax_Subst.compress t1
                             in
                          uu____19594.FStar_Syntax_Syntax.n  in
                        (match uu____19593 with
                         | FStar_Syntax_Syntax.Tm_arrow (binders1,c1) ->
                             FStar_Pervasives_Native.Some (binders1, c1)
                         | uu____19629 -> failwith "Impossible")))
        | uu____19637 -> FStar_Pervasives_Native.None
  
let (norm_eff_name : env -> FStar_Ident.lident -> FStar_Ident.lident) =
  fun env  ->
    fun l  ->
      let rec find1 l1 =
        let uu____19661 =
          lookup_effect_abbrev env [FStar_Syntax_Syntax.U_unknown] l1  in
        match uu____19661 with
        | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.None
        | FStar_Pervasives_Native.Some (uu____19674,c) ->
            let l2 = FStar_Syntax_Util.comp_effect_name c  in
            let uu____19681 = find1 l2  in
            (match uu____19681 with
             | FStar_Pervasives_Native.None  ->
                 FStar_Pervasives_Native.Some l2
             | FStar_Pervasives_Native.Some l' ->
                 FStar_Pervasives_Native.Some l')
         in
      let res =
        let uu____19688 =
          FStar_Util.smap_try_find env.normalized_eff_names l.FStar_Ident.str
           in
        match uu____19688 with
        | FStar_Pervasives_Native.Some l1 -> l1
        | FStar_Pervasives_Native.None  ->
            let uu____19692 = find1 l  in
            (match uu____19692 with
             | FStar_Pervasives_Native.None  -> l
             | FStar_Pervasives_Native.Some m ->
                 (FStar_Util.smap_add env.normalized_eff_names
                    l.FStar_Ident.str m;
                  m))
         in
      let uu____19697 = FStar_Ident.range_of_lid l  in
      FStar_Ident.set_lid_range res uu____19697
  
let (lookup_effect_quals :
  env -> FStar_Ident.lident -> FStar_Syntax_Syntax.qualifier Prims.list) =
  fun env  ->
    fun l  ->
      let l1 = norm_eff_name env l  in
      let uu____19712 = lookup_qname env l1  in
      match uu____19712 with
      | FStar_Pervasives_Native.Some
          (FStar_Util.Inr
           ({
              FStar_Syntax_Syntax.sigel = FStar_Syntax_Syntax.Sig_new_effect
                uu____19715;
              FStar_Syntax_Syntax.sigrng = uu____19716;
              FStar_Syntax_Syntax.sigquals = q;
              FStar_Syntax_Syntax.sigmeta = uu____19718;
              FStar_Syntax_Syntax.sigattrs = uu____19719;_},uu____19720),uu____19721)
          -> q
      | uu____19772 -> []
  
let (lookup_projector :
  env -> FStar_Ident.lident -> Prims.int -> FStar_Ident.lident) =
  fun env  ->
    fun lid  ->
      fun i  ->
        let fail1 uu____19796 =
          let uu____19797 =
            let uu____19799 = FStar_Util.string_of_int i  in
            let uu____19801 = FStar_Syntax_Print.lid_to_string lid  in
            FStar_Util.format2
              "Impossible: projecting field #%s from constructor %s is undefined"
              uu____19799 uu____19801
             in
          failwith uu____19797  in
        let uu____19804 = lookup_datacon env lid  in
        match uu____19804 with
        | (uu____19809,t) ->
            let uu____19811 =
              let uu____19812 = FStar_Syntax_Subst.compress t  in
              uu____19812.FStar_Syntax_Syntax.n  in
            (match uu____19811 with
             | FStar_Syntax_Syntax.Tm_arrow (binders,uu____19816) ->
                 if
                   (i < Prims.int_zero) || (i >= (FStar_List.length binders))
                 then fail1 ()
                 else
                   (let b = FStar_List.nth binders i  in
                    let uu____19860 =
                      FStar_Syntax_Util.mk_field_projector_name lid
                        (FStar_Pervasives_Native.fst b) i
                       in
                    FStar_All.pipe_right uu____19860
                      FStar_Pervasives_Native.fst)
             | uu____19871 -> fail1 ())
  
let (is_projector : env -> FStar_Ident.lident -> Prims.bool) =
  fun env  ->
    fun l  ->
      let uu____19885 = lookup_qname env l  in
      match uu____19885 with
      | FStar_Pervasives_Native.Some
          (FStar_Util.Inr
           ({
              FStar_Syntax_Syntax.sigel = FStar_Syntax_Syntax.Sig_declare_typ
                (uu____19887,uu____19888,uu____19889);
              FStar_Syntax_Syntax.sigrng = uu____19890;
              FStar_Syntax_Syntax.sigquals = quals;
              FStar_Syntax_Syntax.sigmeta = uu____19892;
              FStar_Syntax_Syntax.sigattrs = uu____19893;_},uu____19894),uu____19895)
          ->
          FStar_Util.for_some
            (fun uu___7_19948  ->
               match uu___7_19948 with
               | FStar_Syntax_Syntax.Projector uu____19950 -> true
               | uu____19956 -> false) quals
      | uu____19958 -> false
  
let (is_datacon : env -> FStar_Ident.lident -> Prims.bool) =
  fun env  ->
    fun lid  ->
      let uu____19972 = lookup_qname env lid  in
      match uu____19972 with
      | FStar_Pervasives_Native.Some
          (FStar_Util.Inr
           ({
              FStar_Syntax_Syntax.sigel = FStar_Syntax_Syntax.Sig_datacon
                (uu____19974,uu____19975,uu____19976,uu____19977,uu____19978,uu____19979);
              FStar_Syntax_Syntax.sigrng = uu____19980;
              FStar_Syntax_Syntax.sigquals = uu____19981;
              FStar_Syntax_Syntax.sigmeta = uu____19982;
              FStar_Syntax_Syntax.sigattrs = uu____19983;_},uu____19984),uu____19985)
          -> true
      | uu____20043 -> false
  
let (is_record : env -> FStar_Ident.lident -> Prims.bool) =
  fun env  ->
    fun lid  ->
      let uu____20057 = lookup_qname env lid  in
      match uu____20057 with
      | FStar_Pervasives_Native.Some
          (FStar_Util.Inr
           ({
              FStar_Syntax_Syntax.sigel =
                FStar_Syntax_Syntax.Sig_inductive_typ
                (uu____20059,uu____20060,uu____20061,uu____20062,uu____20063,uu____20064);
              FStar_Syntax_Syntax.sigrng = uu____20065;
              FStar_Syntax_Syntax.sigquals = quals;
              FStar_Syntax_Syntax.sigmeta = uu____20067;
              FStar_Syntax_Syntax.sigattrs = uu____20068;_},uu____20069),uu____20070)
          ->
          FStar_Util.for_some
            (fun uu___8_20131  ->
               match uu___8_20131 with
               | FStar_Syntax_Syntax.RecordType uu____20133 -> true
               | FStar_Syntax_Syntax.RecordConstructor uu____20143 -> true
               | uu____20153 -> false) quals
      | uu____20155 -> false
  
let (qninfo_is_action : qninfo -> Prims.bool) =
  fun qninfo  ->
    match qninfo with
    | FStar_Pervasives_Native.Some
        (FStar_Util.Inr
         ({
            FStar_Syntax_Syntax.sigel = FStar_Syntax_Syntax.Sig_let
              (uu____20165,uu____20166);
            FStar_Syntax_Syntax.sigrng = uu____20167;
            FStar_Syntax_Syntax.sigquals = quals;
            FStar_Syntax_Syntax.sigmeta = uu____20169;
            FStar_Syntax_Syntax.sigattrs = uu____20170;_},uu____20171),uu____20172)
        ->
        FStar_Util.for_some
          (fun uu___9_20229  ->
             match uu___9_20229 with
             | FStar_Syntax_Syntax.Action uu____20231 -> true
             | uu____20233 -> false) quals
    | uu____20235 -> false
  
let (is_action : env -> FStar_Ident.lident -> Prims.bool) =
  fun env  ->
    fun lid  ->
      let uu____20249 = lookup_qname env lid  in
      FStar_All.pipe_left qninfo_is_action uu____20249
  
let (is_interpreted : env -> FStar_Syntax_Syntax.term -> Prims.bool) =
  let interpreted_symbols =
    [FStar_Parser_Const.op_Eq;
    FStar_Parser_Const.op_notEq;
    FStar_Parser_Const.op_LT;
    FStar_Parser_Const.op_LTE;
    FStar_Parser_Const.op_GT;
    FStar_Parser_Const.op_GTE;
    FStar_Parser_Const.op_Subtraction;
    FStar_Parser_Const.op_Minus;
    FStar_Parser_Const.op_Addition;
    FStar_Parser_Const.op_Multiply;
    FStar_Parser_Const.op_Division;
    FStar_Parser_Const.op_Modulus;
    FStar_Parser_Const.op_And;
    FStar_Parser_Const.op_Or;
    FStar_Parser_Const.op_Negation]  in
  fun env  ->
    fun head1  ->
      let uu____20266 =
        let uu____20267 = FStar_Syntax_Util.un_uinst head1  in
        uu____20267.FStar_Syntax_Syntax.n  in
      match uu____20266 with
      | FStar_Syntax_Syntax.Tm_fvar fv ->
          (match fv.FStar_Syntax_Syntax.fv_delta with
           | FStar_Syntax_Syntax.Delta_equational_at_level uu____20273 ->
               true
           | uu____20276 -> false)
      | uu____20278 -> false
  
let (is_irreducible : env -> FStar_Ident.lident -> Prims.bool) =
  fun env  ->
    fun l  ->
      let uu____20292 = lookup_qname env l  in
      match uu____20292 with
      | FStar_Pervasives_Native.Some
          (FStar_Util.Inr (se,uu____20295),uu____20296) ->
          FStar_Util.for_some
            (fun uu___10_20344  ->
               match uu___10_20344 with
               | FStar_Syntax_Syntax.Irreducible  -> true
               | uu____20347 -> false) se.FStar_Syntax_Syntax.sigquals
      | uu____20349 -> false
  
let (is_type_constructor : env -> FStar_Ident.lident -> Prims.bool) =
  fun env  ->
    fun lid  ->
      let mapper x =
        match FStar_Pervasives_Native.fst x with
        | FStar_Util.Inl uu____20425 -> FStar_Pervasives_Native.Some false
        | FStar_Util.Inr (se,uu____20443) ->
            (match se.FStar_Syntax_Syntax.sigel with
             | FStar_Syntax_Syntax.Sig_declare_typ uu____20461 ->
                 FStar_Pervasives_Native.Some
                   (FStar_List.contains FStar_Syntax_Syntax.New
                      se.FStar_Syntax_Syntax.sigquals)
             | FStar_Syntax_Syntax.Sig_inductive_typ uu____20469 ->
                 FStar_Pervasives_Native.Some true
             | uu____20488 -> FStar_Pervasives_Native.Some false)
         in
      let uu____20491 =
        let uu____20495 = lookup_qname env lid  in
        FStar_Util.bind_opt uu____20495 mapper  in
      match uu____20491 with
      | FStar_Pervasives_Native.Some b -> b
      | FStar_Pervasives_Native.None  -> false
  
let (num_inductive_ty_params :
  env -> FStar_Ident.lident -> Prims.int FStar_Pervasives_Native.option) =
  fun env  ->
    fun lid  ->
      let uu____20555 = lookup_qname env lid  in
      match uu____20555 with
      | FStar_Pervasives_Native.Some
          (FStar_Util.Inr
           ({
              FStar_Syntax_Syntax.sigel =
                FStar_Syntax_Syntax.Sig_inductive_typ
                (uu____20559,uu____20560,tps,uu____20562,uu____20563,uu____20564);
              FStar_Syntax_Syntax.sigrng = uu____20565;
              FStar_Syntax_Syntax.sigquals = uu____20566;
              FStar_Syntax_Syntax.sigmeta = uu____20567;
              FStar_Syntax_Syntax.sigattrs = uu____20568;_},uu____20569),uu____20570)
          -> FStar_Pervasives_Native.Some (FStar_List.length tps)
      | uu____20636 -> FStar_Pervasives_Native.None
  
let (effect_decl_opt :
  env ->
    FStar_Ident.lident ->
      (FStar_Syntax_Syntax.eff_decl * FStar_Syntax_Syntax.qualifier
        Prims.list) FStar_Pervasives_Native.option)
  =
  fun env  ->
    fun l  ->
      FStar_All.pipe_right (env.effects).decls
        (FStar_Util.find_opt
           (fun uu____20682  ->
              match uu____20682 with
              | (d,uu____20691) ->
                  FStar_Ident.lid_equals d.FStar_Syntax_Syntax.mname l))
  
let (get_effect_decl :
  env -> FStar_Ident.lident -> FStar_Syntax_Syntax.eff_decl) =
  fun env  ->
    fun l  ->
      let uu____20707 = effect_decl_opt env l  in
      match uu____20707 with
      | FStar_Pervasives_Native.None  ->
          let uu____20722 = name_not_found l  in
          let uu____20728 = FStar_Ident.range_of_lid l  in
          FStar_Errors.raise_error uu____20722 uu____20728
      | FStar_Pervasives_Native.Some md -> FStar_Pervasives_Native.fst md
  
let (is_layered_effect : env -> FStar_Ident.lident -> Prims.bool) =
  fun env  ->
    fun l  ->
      let uu____20756 = FStar_All.pipe_right l (get_effect_decl env)  in
      FStar_All.pipe_right uu____20756
        (fun ed  -> ed.FStar_Syntax_Syntax.is_layered)
  
let (identity_mlift : mlift) =
  {
    mlift_t = FStar_Pervasives_Native.None;
    mlift_wp = (fun uu____20764  -> fun t  -> fun wp  -> wp);
    mlift_term =
      (FStar_Pervasives_Native.Some
         (fun uu____20783  ->
            fun t  -> fun wp  -> fun e  -> FStar_Util.return_all e))
  } 
let (join :
  env ->
    FStar_Ident.lident ->
      FStar_Ident.lident -> (FStar_Ident.lident * mlift * mlift))
  =
  fun env  ->
    fun l1  ->
      fun l2  ->
        let uu____20815 = FStar_Ident.lid_equals l1 l2  in
        if uu____20815
        then (l1, identity_mlift, identity_mlift)
        else
          (let uu____20826 =
             ((FStar_Ident.lid_equals l1 FStar_Parser_Const.effect_GTot_lid)
                &&
                (FStar_Ident.lid_equals l2 FStar_Parser_Const.effect_Tot_lid))
               ||
               ((FStar_Ident.lid_equals l2 FStar_Parser_Const.effect_GTot_lid)
                  &&
                  (FStar_Ident.lid_equals l1
                     FStar_Parser_Const.effect_Tot_lid))
              in
           if uu____20826
           then
             (FStar_Parser_Const.effect_GTot_lid, identity_mlift,
               identity_mlift)
           else
             (let uu____20837 =
                FStar_All.pipe_right (env.effects).joins
                  (FStar_Util.find_opt
                     (fun uu____20890  ->
                        match uu____20890 with
                        | (m1,m2,uu____20904,uu____20905,uu____20906) ->
                            (FStar_Ident.lid_equals l1 m1) &&
                              (FStar_Ident.lid_equals l2 m2)))
                 in
              match uu____20837 with
              | FStar_Pervasives_Native.None  ->
                  let uu____20923 =
                    let uu____20929 =
                      let uu____20931 = FStar_Syntax_Print.lid_to_string l1
                         in
                      let uu____20933 = FStar_Syntax_Print.lid_to_string l2
                         in
                      FStar_Util.format2
                        "Effects %s and %s cannot be composed" uu____20931
                        uu____20933
                       in
                    (FStar_Errors.Fatal_EffectsCannotBeComposed, uu____20929)
                     in
                  FStar_Errors.raise_error uu____20923 env.range
              | FStar_Pervasives_Native.Some
                  (uu____20943,uu____20944,m3,j1,j2) -> (m3, j1, j2)))
  
let (monad_leq :
  env ->
    FStar_Ident.lident ->
      FStar_Ident.lident -> edge FStar_Pervasives_Native.option)
  =
  fun env  ->
    fun l1  ->
      fun l2  ->
        let uu____20978 =
          (FStar_Ident.lid_equals l1 l2) ||
            ((FStar_Ident.lid_equals l1 FStar_Parser_Const.effect_Tot_lid) &&
               (FStar_Ident.lid_equals l2 FStar_Parser_Const.effect_GTot_lid))
           in
        if uu____20978
        then
          FStar_Pervasives_Native.Some
            { msource = l1; mtarget = l2; mlift = identity_mlift }
        else
          FStar_All.pipe_right (env.effects).order
            (FStar_Util.find_opt
               (fun e  ->
                  (FStar_Ident.lid_equals l1 e.msource) &&
                    (FStar_Ident.lid_equals l2 e.mtarget)))
  
let wp_sig_aux :
  'Auu____20998 .
    (FStar_Syntax_Syntax.eff_decl * 'Auu____20998) Prims.list ->
      FStar_Ident.lident ->
        (FStar_Syntax_Syntax.bv * FStar_Syntax_Syntax.term'
          FStar_Syntax_Syntax.syntax)
  =
  fun decls  ->
    fun m  ->
      let uu____21027 =
        FStar_All.pipe_right decls
          (FStar_Util.find_opt
             (fun uu____21053  ->
                match uu____21053 with
                | (d,uu____21060) ->
                    FStar_Ident.lid_equals d.FStar_Syntax_Syntax.mname m))
         in
      match uu____21027 with
      | FStar_Pervasives_Native.None  ->
          let uu____21071 =
            FStar_Util.format1
              "Impossible: declaration for monad %s not found"
              m.FStar_Ident.str
             in
          failwith uu____21071
      | FStar_Pervasives_Native.Some (md,_q) ->
          let uu____21086 = inst_tscheme md.FStar_Syntax_Syntax.signature  in
          (match uu____21086 with
           | (uu____21097,s) ->
               let s1 = FStar_Syntax_Subst.compress s  in
               (match ((md.FStar_Syntax_Syntax.binders),
                        (s1.FStar_Syntax_Syntax.n))
                with
                | ([],FStar_Syntax_Syntax.Tm_arrow
                   ((a,uu____21115)::(wp,uu____21117)::[],c)) when
                    FStar_Syntax_Syntax.is_teff
                      (FStar_Syntax_Util.comp_result c)
                    -> (a, (wp.FStar_Syntax_Syntax.sort))
                | uu____21173 -> failwith "Impossible"))
  
let (wp_signature :
  env ->
    FStar_Ident.lident -> (FStar_Syntax_Syntax.bv * FStar_Syntax_Syntax.term))
  = fun env  -> fun m  -> wp_sig_aux (env.effects).decls m 
let (build_lattice : env -> FStar_Syntax_Syntax.sigelt -> env) =
  fun env  ->
    fun se  ->
      match se.FStar_Syntax_Syntax.sigel with
      | FStar_Syntax_Syntax.Sig_new_effect ne ->
          let effects =
            let uu___1503_21223 = env.effects  in
            {
              decls = ((ne, (se.FStar_Syntax_Syntax.sigquals)) ::
                ((env.effects).decls));
              order = (uu___1503_21223.order);
              joins = (uu___1503_21223.joins)
            }  in
          let uu___1506_21232 = env  in
          {
            solver = (uu___1506_21232.solver);
            range = (uu___1506_21232.range);
            curmodule = (uu___1506_21232.curmodule);
            gamma = (uu___1506_21232.gamma);
            gamma_sig = (uu___1506_21232.gamma_sig);
            gamma_cache = (uu___1506_21232.gamma_cache);
            modules = (uu___1506_21232.modules);
            expected_typ = (uu___1506_21232.expected_typ);
            sigtab = (uu___1506_21232.sigtab);
            attrtab = (uu___1506_21232.attrtab);
            is_pattern = (uu___1506_21232.is_pattern);
            instantiate_imp = (uu___1506_21232.instantiate_imp);
            effects;
            generalize = (uu___1506_21232.generalize);
            letrecs = (uu___1506_21232.letrecs);
            top_level = (uu___1506_21232.top_level);
            check_uvars = (uu___1506_21232.check_uvars);
            use_eq = (uu___1506_21232.use_eq);
            is_iface = (uu___1506_21232.is_iface);
            admit = (uu___1506_21232.admit);
            lax = (uu___1506_21232.lax);
            lax_universes = (uu___1506_21232.lax_universes);
            phase1 = (uu___1506_21232.phase1);
            failhard = (uu___1506_21232.failhard);
            nosynth = (uu___1506_21232.nosynth);
            uvar_subtyping = (uu___1506_21232.uvar_subtyping);
            tc_term = (uu___1506_21232.tc_term);
            type_of = (uu___1506_21232.type_of);
            universe_of = (uu___1506_21232.universe_of);
            check_type_of = (uu___1506_21232.check_type_of);
            use_bv_sorts = (uu___1506_21232.use_bv_sorts);
            qtbl_name_and_index = (uu___1506_21232.qtbl_name_and_index);
            normalized_eff_names = (uu___1506_21232.normalized_eff_names);
            fv_delta_depths = (uu___1506_21232.fv_delta_depths);
            proof_ns = (uu___1506_21232.proof_ns);
            synth_hook = (uu___1506_21232.synth_hook);
            splice = (uu___1506_21232.splice);
            postprocess = (uu___1506_21232.postprocess);
            is_native_tactic = (uu___1506_21232.is_native_tactic);
            identifier_info = (uu___1506_21232.identifier_info);
            tc_hooks = (uu___1506_21232.tc_hooks);
            dsenv = (uu___1506_21232.dsenv);
            nbe = (uu___1506_21232.nbe);
            strict_args_tab = (uu___1506_21232.strict_args_tab)
          }
      | FStar_Syntax_Syntax.Sig_sub_effect sub1 ->
          let src_ed = get_effect_decl env sub1.FStar_Syntax_Syntax.source
             in
          let dst_ed = get_effect_decl env sub1.FStar_Syntax_Syntax.target
             in
          if
            src_ed.FStar_Syntax_Syntax.is_layered ||
              dst_ed.FStar_Syntax_Syntax.is_layered
          then
            let edge =
              {
                msource = (sub1.FStar_Syntax_Syntax.source);
                mtarget = (sub1.FStar_Syntax_Syntax.target);
                mlift =
                  {
                    mlift_t = (sub1.FStar_Syntax_Syntax.lift_wp);
                    mlift_wp =
                      (fun uu____21241  ->
                         fun uu____21242  ->
                           fun uu____21243  -> FStar_Syntax_Syntax.tun);
                    mlift_term = FStar_Pervasives_Native.None
                  }
              }  in
            let dummy_mlift =
              {
                mlift_t = FStar_Pervasives_Native.None;
                mlift_wp =
                  (fun uu____21260  ->
                     fun uu____21261  ->
                       fun uu____21262  -> FStar_Syntax_Syntax.tun);
                mlift_term = FStar_Pervasives_Native.None
              }  in
            let n_join1 =
              ((src_ed.FStar_Syntax_Syntax.mname),
                (dst_ed.FStar_Syntax_Syntax.mname),
                (dst_ed.FStar_Syntax_Syntax.mname), dummy_mlift, dummy_mlift)
               in
            let n_join2 =
              ((dst_ed.FStar_Syntax_Syntax.mname),
                (src_ed.FStar_Syntax_Syntax.mname),
                (dst_ed.FStar_Syntax_Syntax.mname), dummy_mlift, dummy_mlift)
               in
            let uu___1523_21297 = env  in
            {
              solver = (uu___1523_21297.solver);
              range = (uu___1523_21297.range);
              curmodule = (uu___1523_21297.curmodule);
              gamma = (uu___1523_21297.gamma);
              gamma_sig = (uu___1523_21297.gamma_sig);
              gamma_cache = (uu___1523_21297.gamma_cache);
              modules = (uu___1523_21297.modules);
              expected_typ = (uu___1523_21297.expected_typ);
              sigtab = (uu___1523_21297.sigtab);
              attrtab = (uu___1523_21297.attrtab);
              is_pattern = (uu___1523_21297.is_pattern);
              instantiate_imp = (uu___1523_21297.instantiate_imp);
              effects =
                (let uu___1525_21299 = env.effects  in
                 {
                   decls = (uu___1525_21299.decls);
                   order = (edge :: ((env.effects).order));
                   joins = (n_join1 :: n_join2 :: ((env.effects).joins))
                 });
              generalize = (uu___1523_21297.generalize);
              letrecs = (uu___1523_21297.letrecs);
              top_level = (uu___1523_21297.top_level);
              check_uvars = (uu___1523_21297.check_uvars);
              use_eq = (uu___1523_21297.use_eq);
              is_iface = (uu___1523_21297.is_iface);
              admit = (uu___1523_21297.admit);
              lax = (uu___1523_21297.lax);
              lax_universes = (uu___1523_21297.lax_universes);
              phase1 = (uu___1523_21297.phase1);
              failhard = (uu___1523_21297.failhard);
              nosynth = (uu___1523_21297.nosynth);
              uvar_subtyping = (uu___1523_21297.uvar_subtyping);
              tc_term = (uu___1523_21297.tc_term);
              type_of = (uu___1523_21297.type_of);
              universe_of = (uu___1523_21297.universe_of);
              check_type_of = (uu___1523_21297.check_type_of);
              use_bv_sorts = (uu___1523_21297.use_bv_sorts);
              qtbl_name_and_index = (uu___1523_21297.qtbl_name_and_index);
              normalized_eff_names = (uu___1523_21297.normalized_eff_names);
              fv_delta_depths = (uu___1523_21297.fv_delta_depths);
              proof_ns = (uu___1523_21297.proof_ns);
              synth_hook = (uu___1523_21297.synth_hook);
              splice = (uu___1523_21297.splice);
              postprocess = (uu___1523_21297.postprocess);
              is_native_tactic = (uu___1523_21297.is_native_tactic);
              identifier_info = (uu___1523_21297.identifier_info);
              tc_hooks = (uu___1523_21297.tc_hooks);
              dsenv = (uu___1523_21297.dsenv);
              nbe = (uu___1523_21297.nbe);
              strict_args_tab = (uu___1523_21297.strict_args_tab)
            }
          else
            (let compose_edges e1 e2 =
               let composed_lift =
                 let mlift_wp u r wp1 =
                   let uu____21350 = (e1.mlift).mlift_wp u r wp1  in
                   (e2.mlift).mlift_wp u r uu____21350  in
                 let mlift_term =
                   match (((e1.mlift).mlift_term), ((e2.mlift).mlift_term))
                   with
                   | (FStar_Pervasives_Native.Some
                      l1,FStar_Pervasives_Native.Some l2) ->
                       FStar_Pervasives_Native.Some
                         ((fun u  ->
                             fun t  ->
                               fun wp  ->
                                 fun e  ->
                                   let uu____21508 =
                                     (e1.mlift).mlift_wp u t wp  in
                                   let uu____21509 = l1 u t wp e  in
                                   l2 u t uu____21508 uu____21509))
                   | uu____21510 -> FStar_Pervasives_Native.None  in
                 {
                   mlift_t = FStar_Pervasives_Native.None;
                   mlift_wp;
                   mlift_term
                 }  in
               {
                 msource = (e1.msource);
                 mtarget = (e2.mtarget);
                 mlift = composed_lift
               }  in
             let mk_mlift_wp lift_t u r wp1 =
               let uu____21582 = inst_tscheme_with lift_t [u]  in
               match uu____21582 with
               | (uu____21589,lift_t1) ->
                   let uu____21591 =
                     let uu____21598 =
                       let uu____21599 =
                         let uu____21616 =
                           let uu____21627 = FStar_Syntax_Syntax.as_arg r  in
                           let uu____21636 =
                             let uu____21647 = FStar_Syntax_Syntax.as_arg wp1
                                in
                             [uu____21647]  in
                           uu____21627 :: uu____21636  in
                         (lift_t1, uu____21616)  in
                       FStar_Syntax_Syntax.Tm_app uu____21599  in
                     FStar_Syntax_Syntax.mk uu____21598  in
                   uu____21591 FStar_Pervasives_Native.None
                     wp1.FStar_Syntax_Syntax.pos
                in
             let sub_mlift_wp =
               match sub1.FStar_Syntax_Syntax.lift_wp with
               | FStar_Pervasives_Native.Some sub_lift_wp ->
                   mk_mlift_wp sub_lift_wp
               | FStar_Pervasives_Native.None  ->
                   failwith
                     "sub effect should've been elaborated at this stage"
                in
             let mk_mlift_term lift_t u r wp1 e =
               let uu____21757 = inst_tscheme_with lift_t [u]  in
               match uu____21757 with
               | (uu____21764,lift_t1) ->
                   let uu____21766 =
                     let uu____21773 =
                       let uu____21774 =
                         let uu____21791 =
                           let uu____21802 = FStar_Syntax_Syntax.as_arg r  in
                           let uu____21811 =
                             let uu____21822 = FStar_Syntax_Syntax.as_arg wp1
                                in
                             let uu____21831 =
                               let uu____21842 = FStar_Syntax_Syntax.as_arg e
                                  in
                               [uu____21842]  in
                             uu____21822 :: uu____21831  in
                           uu____21802 :: uu____21811  in
                         (lift_t1, uu____21791)  in
                       FStar_Syntax_Syntax.Tm_app uu____21774  in
                     FStar_Syntax_Syntax.mk uu____21773  in
                   uu____21766 FStar_Pervasives_Native.None
                     e.FStar_Syntax_Syntax.pos
                in
             let sub_mlift_term =
               FStar_Util.map_opt sub1.FStar_Syntax_Syntax.lift mk_mlift_term
                in
             let edge =
               {
                 msource = (sub1.FStar_Syntax_Syntax.source);
                 mtarget = (sub1.FStar_Syntax_Syntax.target);
                 mlift =
                   {
                     mlift_t = FStar_Pervasives_Native.None;
                     mlift_wp = sub_mlift_wp;
                     mlift_term = sub_mlift_term
                   }
               }  in
             let id_edge l =
               {
                 msource = (sub1.FStar_Syntax_Syntax.source);
                 mtarget = (sub1.FStar_Syntax_Syntax.target);
                 mlift = identity_mlift
               }  in
             let print_mlift l =
               let bogus_term s =
                 let uu____21944 =
                   let uu____21945 =
                     FStar_Ident.lid_of_path [s] FStar_Range.dummyRange  in
                   FStar_Syntax_Syntax.lid_as_fv uu____21945
                     FStar_Syntax_Syntax.delta_constant
                     FStar_Pervasives_Native.None
                    in
                 FStar_Syntax_Syntax.fv_to_tm uu____21944  in
               let arg = bogus_term "ARG"  in
               let wp = bogus_term "WP"  in
               let e = bogus_term "COMP"  in
               let uu____21954 =
                 let uu____21956 =
                   l.mlift_wp FStar_Syntax_Syntax.U_zero arg wp  in
                 FStar_Syntax_Print.term_to_string uu____21956  in
               let uu____21957 =
                 let uu____21959 =
                   FStar_Util.map_opt l.mlift_term
                     (fun l1  ->
                        let uu____21987 =
                          l1 FStar_Syntax_Syntax.U_zero arg wp e  in
                        FStar_Syntax_Print.term_to_string uu____21987)
                    in
                 FStar_Util.dflt "none" uu____21959  in
               FStar_Util.format2 "{ wp : %s ; term : %s }" uu____21954
                 uu____21957
                in
             let order = edge :: ((env.effects).order)  in
             let ms =
               FStar_All.pipe_right (env.effects).decls
                 (FStar_List.map
                    (fun uu____22016  ->
                       match uu____22016 with
                       | (e,uu____22024) -> e.FStar_Syntax_Syntax.mname))
                in
             let find_edge order1 uu____22047 =
               match uu____22047 with
               | (i,j) ->
                   let uu____22058 = FStar_Ident.lid_equals i j  in
                   if uu____22058
                   then
                     FStar_All.pipe_right (id_edge i)
                       (fun _22065  -> FStar_Pervasives_Native.Some _22065)
                   else
                     FStar_All.pipe_right order1
                       (FStar_Util.find_opt
                          (fun e  ->
                             (FStar_Ident.lid_equals e.msource i) &&
                               (FStar_Ident.lid_equals e.mtarget j)))
                in
             let order1 =
               let fold_fun order1 k =
                 let uu____22094 =
                   FStar_All.pipe_right ms
                     (FStar_List.collect
                        (fun i  ->
                           let uu____22104 = FStar_Ident.lid_equals i k  in
                           if uu____22104
                           then []
                           else
                             FStar_All.pipe_right ms
                               (FStar_List.collect
                                  (fun j  ->
                                     let uu____22118 =
                                       FStar_Ident.lid_equals j k  in
                                     if uu____22118
                                     then []
                                     else
                                       (let uu____22125 =
                                          let uu____22134 =
                                            find_edge order1 (i, k)  in
                                          let uu____22137 =
                                            find_edge order1 (k, j)  in
                                          (uu____22134, uu____22137)  in
                                        match uu____22125 with
                                        | (FStar_Pervasives_Native.Some
                                           e1,FStar_Pervasives_Native.Some
                                           e2) ->
                                            let uu____22152 =
                                              compose_edges e1 e2  in
                                            [uu____22152]
                                        | uu____22153 -> [])))))
                    in
                 FStar_List.append order1 uu____22094  in
               FStar_All.pipe_right ms (FStar_List.fold_left fold_fun order)
                in
             let order2 =
               FStar_Util.remove_dups
                 (fun e1  ->
                    fun e2  ->
                      (FStar_Ident.lid_equals e1.msource e2.msource) &&
                        (FStar_Ident.lid_equals e1.mtarget e2.mtarget))
                 order1
                in
             FStar_All.pipe_right order2
               (FStar_List.iter
                  (fun edge1  ->
                     let uu____22183 =
                       (FStar_Ident.lid_equals edge1.msource
                          FStar_Parser_Const.effect_DIV_lid)
                         &&
                         (let uu____22186 =
                            lookup_effect_quals env edge1.mtarget  in
                          FStar_All.pipe_right uu____22186
                            (FStar_List.contains
                               FStar_Syntax_Syntax.TotalEffect))
                        in
                     if uu____22183
                     then
                       let uu____22193 =
                         let uu____22199 =
                           FStar_Util.format1
                             "Divergent computations cannot be included in an effect %s marked 'total'"
                             (edge1.mtarget).FStar_Ident.str
                            in
                         (FStar_Errors.Fatal_DivergentComputationCannotBeIncludedInTotal,
                           uu____22199)
                          in
                       let uu____22203 = get_range env  in
                       FStar_Errors.raise_error uu____22193 uu____22203
                     else ()));
             (let joins =
                FStar_All.pipe_right ms
                  (FStar_List.collect
                     (fun i  ->
                        FStar_All.pipe_right ms
                          (FStar_List.collect
                             (fun j  ->
                                let join_opt =
                                  let uu____22281 =
                                    FStar_Ident.lid_equals i j  in
                                  if uu____22281
                                  then
                                    FStar_Pervasives_Native.Some
                                      (i, (id_edge i), (id_edge i))
                                  else
                                    FStar_All.pipe_right ms
                                      (FStar_List.fold_left
                                         (fun bopt  ->
                                            fun k  ->
                                              let uu____22333 =
                                                let uu____22342 =
                                                  find_edge order2 (i, k)  in
                                                let uu____22345 =
                                                  find_edge order2 (j, k)  in
                                                (uu____22342, uu____22345)
                                                 in
                                              match uu____22333 with
                                              | (FStar_Pervasives_Native.Some
                                                 ik,FStar_Pervasives_Native.Some
                                                 jk) ->
                                                  (match bopt with
                                                   | FStar_Pervasives_Native.None
                                                        ->
                                                       FStar_Pervasives_Native.Some
                                                         (k, ik, jk)
                                                   | FStar_Pervasives_Native.Some
                                                       (ub,uu____22387,uu____22388)
                                                       ->
                                                       let uu____22395 =
                                                         let uu____22402 =
                                                           let uu____22404 =
                                                             find_edge order2
                                                               (k, ub)
                                                              in
                                                           FStar_Util.is_some
                                                             uu____22404
                                                            in
                                                         let uu____22407 =
                                                           let uu____22409 =
                                                             find_edge order2
                                                               (ub, k)
                                                              in
                                                           FStar_Util.is_some
                                                             uu____22409
                                                            in
                                                         (uu____22402,
                                                           uu____22407)
                                                          in
                                                       (match uu____22395
                                                        with
                                                        | (true ,true ) ->
                                                            let uu____22426 =
                                                              FStar_Ident.lid_equals
                                                                k ub
                                                               in
                                                            if uu____22426
                                                            then
                                                              (FStar_Errors.log_issue
                                                                 FStar_Range.dummyRange
                                                                 (FStar_Errors.Warning_UpperBoundCandidateAlreadyVisited,
                                                                   "Looking multiple times at the same upper bound candidate");
                                                               bopt)
                                                            else
                                                              failwith
                                                                "Found a cycle in the lattice"
                                                        | (false ,false ) ->
                                                            bopt
                                                        | (true ,false ) ->
                                                            FStar_Pervasives_Native.Some
                                                              (k, ik, jk)
                                                        | (false ,true ) ->
                                                            bopt))
                                              | uu____22469 -> bopt)
                                         FStar_Pervasives_Native.None)
                                   in
                                match join_opt with
                                | FStar_Pervasives_Native.None  -> []
                                | FStar_Pervasives_Native.Some (k,e1,e2) ->
                                    [(i, j, k, (e1.mlift), (e2.mlift))]))))
                 in
              let effects =
                let uu___1650_22542 = env.effects  in
                { decls = (uu___1650_22542.decls); order = order2; joins }
                 in
              let uu___1653_22543 = env  in
              {
                solver = (uu___1653_22543.solver);
                range = (uu___1653_22543.range);
                curmodule = (uu___1653_22543.curmodule);
                gamma = (uu___1653_22543.gamma);
                gamma_sig = (uu___1653_22543.gamma_sig);
                gamma_cache = (uu___1653_22543.gamma_cache);
                modules = (uu___1653_22543.modules);
                expected_typ = (uu___1653_22543.expected_typ);
                sigtab = (uu___1653_22543.sigtab);
                attrtab = (uu___1653_22543.attrtab);
                is_pattern = (uu___1653_22543.is_pattern);
                instantiate_imp = (uu___1653_22543.instantiate_imp);
                effects;
                generalize = (uu___1653_22543.generalize);
                letrecs = (uu___1653_22543.letrecs);
                top_level = (uu___1653_22543.top_level);
                check_uvars = (uu___1653_22543.check_uvars);
                use_eq = (uu___1653_22543.use_eq);
                is_iface = (uu___1653_22543.is_iface);
                admit = (uu___1653_22543.admit);
                lax = (uu___1653_22543.lax);
                lax_universes = (uu___1653_22543.lax_universes);
                phase1 = (uu___1653_22543.phase1);
                failhard = (uu___1653_22543.failhard);
                nosynth = (uu___1653_22543.nosynth);
                uvar_subtyping = (uu___1653_22543.uvar_subtyping);
                tc_term = (uu___1653_22543.tc_term);
                type_of = (uu___1653_22543.type_of);
                universe_of = (uu___1653_22543.universe_of);
                check_type_of = (uu___1653_22543.check_type_of);
                use_bv_sorts = (uu___1653_22543.use_bv_sorts);
                qtbl_name_and_index = (uu___1653_22543.qtbl_name_and_index);
                normalized_eff_names = (uu___1653_22543.normalized_eff_names);
                fv_delta_depths = (uu___1653_22543.fv_delta_depths);
                proof_ns = (uu___1653_22543.proof_ns);
                synth_hook = (uu___1653_22543.synth_hook);
                splice = (uu___1653_22543.splice);
                postprocess = (uu___1653_22543.postprocess);
                is_native_tactic = (uu___1653_22543.is_native_tactic);
                identifier_info = (uu___1653_22543.identifier_info);
                tc_hooks = (uu___1653_22543.tc_hooks);
                dsenv = (uu___1653_22543.dsenv);
                nbe = (uu___1653_22543.nbe);
                strict_args_tab = (uu___1653_22543.strict_args_tab)
              }))
      | uu____22544 -> env
  
let (comp_to_comp_typ :
  env -> FStar_Syntax_Syntax.comp -> FStar_Syntax_Syntax.comp_typ) =
  fun env  ->
    fun c  ->
      let c1 =
        match c.FStar_Syntax_Syntax.n with
        | FStar_Syntax_Syntax.Total (t,FStar_Pervasives_Native.None ) ->
            let u = env.universe_of env t  in
            FStar_Syntax_Syntax.mk_Total' t (FStar_Pervasives_Native.Some u)
        | FStar_Syntax_Syntax.GTotal (t,FStar_Pervasives_Native.None ) ->
            let u = env.universe_of env t  in
            FStar_Syntax_Syntax.mk_GTotal' t (FStar_Pervasives_Native.Some u)
        | uu____22573 -> c  in
      FStar_Syntax_Util.comp_to_comp_typ c1
  
let rec (unfold_effect_abbrev :
  env -> FStar_Syntax_Syntax.comp -> FStar_Syntax_Syntax.comp_typ) =
  fun env  ->
    fun comp  ->
      let c = comp_to_comp_typ env comp  in
      let uu____22586 =
        lookup_effect_abbrev env c.FStar_Syntax_Syntax.comp_univs
          c.FStar_Syntax_Syntax.effect_name
         in
      match uu____22586 with
      | FStar_Pervasives_Native.None  -> c
      | FStar_Pervasives_Native.Some (binders,cdef) ->
          let uu____22603 = FStar_Syntax_Subst.open_comp binders cdef  in
          (match uu____22603 with
           | (binders1,cdef1) ->
               (if
                  (FStar_List.length binders1) <>
                    ((FStar_List.length c.FStar_Syntax_Syntax.effect_args) +
                       Prims.int_one)
                then
                  (let uu____22628 =
                     let uu____22634 =
                       let uu____22636 =
                         FStar_Util.string_of_int
                           (FStar_List.length binders1)
                          in
                       let uu____22644 =
                         FStar_Util.string_of_int
                           ((FStar_List.length
                               c.FStar_Syntax_Syntax.effect_args)
                              + Prims.int_one)
                          in
                       let uu____22655 =
                         let uu____22657 = FStar_Syntax_Syntax.mk_Comp c  in
                         FStar_Syntax_Print.comp_to_string uu____22657  in
                       FStar_Util.format3
                         "Effect constructor is not fully applied; expected %s args, got %s args, i.e., %s"
                         uu____22636 uu____22644 uu____22655
                        in
                     (FStar_Errors.Fatal_ConstructorArgLengthMismatch,
                       uu____22634)
                      in
                   FStar_Errors.raise_error uu____22628
                     comp.FStar_Syntax_Syntax.pos)
                else ();
                (let inst1 =
                   let uu____22665 =
                     let uu____22676 =
                       FStar_Syntax_Syntax.as_arg
                         c.FStar_Syntax_Syntax.result_typ
                        in
                     uu____22676 :: (c.FStar_Syntax_Syntax.effect_args)  in
                   FStar_List.map2
                     (fun uu____22713  ->
                        fun uu____22714  ->
                          match (uu____22713, uu____22714) with
                          | ((x,uu____22744),(t,uu____22746)) ->
                              FStar_Syntax_Syntax.NT (x, t)) binders1
                     uu____22665
                    in
                 let c1 = FStar_Syntax_Subst.subst_comp inst1 cdef1  in
                 let c2 =
                   let uu____22777 =
                     let uu___1691_22778 = comp_to_comp_typ env c1  in
                     {
                       FStar_Syntax_Syntax.comp_univs =
                         (uu___1691_22778.FStar_Syntax_Syntax.comp_univs);
                       FStar_Syntax_Syntax.effect_name =
                         (uu___1691_22778.FStar_Syntax_Syntax.effect_name);
                       FStar_Syntax_Syntax.result_typ =
                         (uu___1691_22778.FStar_Syntax_Syntax.result_typ);
                       FStar_Syntax_Syntax.effect_args =
                         (uu___1691_22778.FStar_Syntax_Syntax.effect_args);
                       FStar_Syntax_Syntax.flags =
                         (c.FStar_Syntax_Syntax.flags)
                     }  in
                   FStar_All.pipe_right uu____22777
                     FStar_Syntax_Syntax.mk_Comp
                    in
                 unfold_effect_abbrev env c2)))
  
let effect_repr_aux :
  'Auu____22790 .
    'Auu____22790 ->
      env ->
        FStar_Syntax_Syntax.comp' FStar_Syntax_Syntax.syntax ->
          FStar_Syntax_Syntax.universe ->
            FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax
              FStar_Pervasives_Native.option
  =
  fun only_reifiable  ->
    fun env  ->
      fun c  ->
        fun u_c  ->
          let effect_name =
            norm_eff_name env (FStar_Syntax_Util.comp_effect_name c)  in
          let uu____22820 = effect_decl_opt env effect_name  in
          match uu____22820 with
          | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.None
          | FStar_Pervasives_Native.Some (ed,qualifiers) ->
              (match (FStar_Pervasives_Native.snd ed.FStar_Syntax_Syntax.repr).FStar_Syntax_Syntax.n
               with
               | FStar_Syntax_Syntax.Tm_unknown  ->
                   FStar_Pervasives_Native.None
               | uu____22863 ->
                   let c1 = unfold_effect_abbrev env c  in
                   let res_typ = c1.FStar_Syntax_Syntax.result_typ  in
                   let wp =
                     match c1.FStar_Syntax_Syntax.effect_args with
                     | hd1::uu____22886 -> hd1
                     | [] ->
                         let name = FStar_Ident.string_of_lid effect_name  in
                         let message =
                           let uu____22925 =
                             FStar_Util.format1
                               "Not enough arguments for effect %s. " name
                              in
                           Prims.op_Hat uu____22925
                             (Prims.op_Hat
                                "This usually happens when you use a partially applied DM4F effect, "
                                "like [TAC int] instead of [Tac int].")
                            in
                         let uu____22930 = get_range env  in
                         FStar_Errors.raise_error
                           (FStar_Errors.Fatal_NotEnoughArgumentsForEffect,
                             message) uu____22930
                      in
                   let repr =
                     inst_effect_fun_with [u_c] env ed
                       ed.FStar_Syntax_Syntax.repr
                      in
                   let uu____22941 =
                     let uu____22944 = get_range env  in
                     let uu____22945 =
                       let uu____22952 =
                         let uu____22953 =
                           let uu____22970 =
                             let uu____22981 =
                               FStar_Syntax_Syntax.as_arg res_typ  in
                             [uu____22981; wp]  in
                           (repr, uu____22970)  in
                         FStar_Syntax_Syntax.Tm_app uu____22953  in
                       FStar_Syntax_Syntax.mk uu____22952  in
                     uu____22945 FStar_Pervasives_Native.None uu____22944  in
                   FStar_Pervasives_Native.Some uu____22941)
  
let (effect_repr :
  env ->
    FStar_Syntax_Syntax.comp ->
      FStar_Syntax_Syntax.universe ->
        FStar_Syntax_Syntax.term FStar_Pervasives_Native.option)
  = fun env  -> fun c  -> fun u_c  -> effect_repr_aux false env c u_c 
let (is_user_reifiable_effect : env -> FStar_Ident.lident -> Prims.bool) =
  fun env  ->
    fun effect_lid  ->
      let effect_lid1 = norm_eff_name env effect_lid  in
      let quals = lookup_effect_quals env effect_lid1  in
      FStar_List.contains FStar_Syntax_Syntax.Reifiable quals
  
let (is_total_effect : env -> FStar_Ident.lident -> Prims.bool) =
  fun env  ->
    fun effect_lid  ->
      let effect_lid1 = norm_eff_name env effect_lid  in
      let quals = lookup_effect_quals env effect_lid1  in
      FStar_List.contains FStar_Syntax_Syntax.TotalEffect quals
  
let (is_reifiable_effect : env -> FStar_Ident.lident -> Prims.bool) =
  fun env  ->
    fun effect_lid  ->
      let effect_lid1 = norm_eff_name env effect_lid  in
      (is_user_reifiable_effect env effect_lid1) ||
        (FStar_Ident.lid_equals effect_lid1 FStar_Parser_Const.effect_TAC_lid)
  
let (is_reifiable_rc :
  env -> FStar_Syntax_Syntax.residual_comp -> Prims.bool) =
  fun env  ->
    fun c  -> is_reifiable_effect env c.FStar_Syntax_Syntax.residual_effect
  
let (is_reifiable_comp : env -> FStar_Syntax_Syntax.comp -> Prims.bool) =
  fun env  ->
    fun c  ->
      match c.FStar_Syntax_Syntax.n with
      | FStar_Syntax_Syntax.Comp ct ->
          is_reifiable_effect env ct.FStar_Syntax_Syntax.effect_name
      | uu____23125 -> false
  
let (is_reifiable_function : env -> FStar_Syntax_Syntax.term -> Prims.bool) =
  fun env  ->
    fun t  ->
      let uu____23140 =
        let uu____23141 = FStar_Syntax_Subst.compress t  in
        uu____23141.FStar_Syntax_Syntax.n  in
      match uu____23140 with
      | FStar_Syntax_Syntax.Tm_arrow (uu____23145,c) ->
          is_reifiable_comp env c
      | uu____23167 -> false
  
let (reify_comp :
  env ->
    FStar_Syntax_Syntax.comp ->
      FStar_Syntax_Syntax.universe -> FStar_Syntax_Syntax.term)
  =
  fun env  ->
    fun c  ->
      fun u_c  ->
        let l = FStar_Syntax_Util.comp_effect_name c  in
        (let uu____23187 =
           let uu____23189 = is_reifiable_effect env l  in
           Prims.op_Negation uu____23189  in
         if uu____23187
         then
           let uu____23192 =
             let uu____23198 =
               let uu____23200 = FStar_Ident.string_of_lid l  in
               FStar_Util.format1 "Effect %s cannot be reified" uu____23200
                in
             (FStar_Errors.Fatal_EffectCannotBeReified, uu____23198)  in
           let uu____23204 = get_range env  in
           FStar_Errors.raise_error uu____23192 uu____23204
         else ());
        (let uu____23207 = effect_repr_aux true env c u_c  in
         match uu____23207 with
         | FStar_Pervasives_Native.None  ->
             failwith "internal error: reifiable effect has no repr?"
         | FStar_Pervasives_Native.Some tm -> tm)
  
let (push_sigelt : env -> FStar_Syntax_Syntax.sigelt -> env) =
  fun env  ->
    fun s  ->
      let sb = ((FStar_Syntax_Util.lids_of_sigelt s), s)  in
      let env1 =
        let uu___1756_23243 = env  in
        {
          solver = (uu___1756_23243.solver);
          range = (uu___1756_23243.range);
          curmodule = (uu___1756_23243.curmodule);
          gamma = (uu___1756_23243.gamma);
          gamma_sig = (sb :: (env.gamma_sig));
          gamma_cache = (uu___1756_23243.gamma_cache);
          modules = (uu___1756_23243.modules);
          expected_typ = (uu___1756_23243.expected_typ);
          sigtab = (uu___1756_23243.sigtab);
          attrtab = (uu___1756_23243.attrtab);
          is_pattern = (uu___1756_23243.is_pattern);
          instantiate_imp = (uu___1756_23243.instantiate_imp);
          effects = (uu___1756_23243.effects);
          generalize = (uu___1756_23243.generalize);
          letrecs = (uu___1756_23243.letrecs);
          top_level = (uu___1756_23243.top_level);
          check_uvars = (uu___1756_23243.check_uvars);
          use_eq = (uu___1756_23243.use_eq);
          is_iface = (uu___1756_23243.is_iface);
          admit = (uu___1756_23243.admit);
          lax = (uu___1756_23243.lax);
          lax_universes = (uu___1756_23243.lax_universes);
          phase1 = (uu___1756_23243.phase1);
          failhard = (uu___1756_23243.failhard);
          nosynth = (uu___1756_23243.nosynth);
          uvar_subtyping = (uu___1756_23243.uvar_subtyping);
          tc_term = (uu___1756_23243.tc_term);
          type_of = (uu___1756_23243.type_of);
          universe_of = (uu___1756_23243.universe_of);
          check_type_of = (uu___1756_23243.check_type_of);
          use_bv_sorts = (uu___1756_23243.use_bv_sorts);
          qtbl_name_and_index = (uu___1756_23243.qtbl_name_and_index);
          normalized_eff_names = (uu___1756_23243.normalized_eff_names);
          fv_delta_depths = (uu___1756_23243.fv_delta_depths);
          proof_ns = (uu___1756_23243.proof_ns);
          synth_hook = (uu___1756_23243.synth_hook);
          splice = (uu___1756_23243.splice);
          postprocess = (uu___1756_23243.postprocess);
          is_native_tactic = (uu___1756_23243.is_native_tactic);
          identifier_info = (uu___1756_23243.identifier_info);
          tc_hooks = (uu___1756_23243.tc_hooks);
          dsenv = (uu___1756_23243.dsenv);
          nbe = (uu___1756_23243.nbe);
          strict_args_tab = (uu___1756_23243.strict_args_tab)
        }  in
      add_sigelt env1 s;
      (env1.tc_hooks).tc_push_in_gamma_hook env1 (FStar_Util.Inr sb);
      build_lattice env1 s
  
let (push_local_binding : env -> FStar_Syntax_Syntax.binding -> env) =
  fun env  ->
    fun b  ->
      let uu___1763_23257 = env  in
      {
        solver = (uu___1763_23257.solver);
        range = (uu___1763_23257.range);
        curmodule = (uu___1763_23257.curmodule);
        gamma = (b :: (env.gamma));
        gamma_sig = (uu___1763_23257.gamma_sig);
        gamma_cache = (uu___1763_23257.gamma_cache);
        modules = (uu___1763_23257.modules);
        expected_typ = (uu___1763_23257.expected_typ);
        sigtab = (uu___1763_23257.sigtab);
        attrtab = (uu___1763_23257.attrtab);
        is_pattern = (uu___1763_23257.is_pattern);
        instantiate_imp = (uu___1763_23257.instantiate_imp);
        effects = (uu___1763_23257.effects);
        generalize = (uu___1763_23257.generalize);
        letrecs = (uu___1763_23257.letrecs);
        top_level = (uu___1763_23257.top_level);
        check_uvars = (uu___1763_23257.check_uvars);
        use_eq = (uu___1763_23257.use_eq);
        is_iface = (uu___1763_23257.is_iface);
        admit = (uu___1763_23257.admit);
        lax = (uu___1763_23257.lax);
        lax_universes = (uu___1763_23257.lax_universes);
        phase1 = (uu___1763_23257.phase1);
        failhard = (uu___1763_23257.failhard);
        nosynth = (uu___1763_23257.nosynth);
        uvar_subtyping = (uu___1763_23257.uvar_subtyping);
        tc_term = (uu___1763_23257.tc_term);
        type_of = (uu___1763_23257.type_of);
        universe_of = (uu___1763_23257.universe_of);
        check_type_of = (uu___1763_23257.check_type_of);
        use_bv_sorts = (uu___1763_23257.use_bv_sorts);
        qtbl_name_and_index = (uu___1763_23257.qtbl_name_and_index);
        normalized_eff_names = (uu___1763_23257.normalized_eff_names);
        fv_delta_depths = (uu___1763_23257.fv_delta_depths);
        proof_ns = (uu___1763_23257.proof_ns);
        synth_hook = (uu___1763_23257.synth_hook);
        splice = (uu___1763_23257.splice);
        postprocess = (uu___1763_23257.postprocess);
        is_native_tactic = (uu___1763_23257.is_native_tactic);
        identifier_info = (uu___1763_23257.identifier_info);
        tc_hooks = (uu___1763_23257.tc_hooks);
        dsenv = (uu___1763_23257.dsenv);
        nbe = (uu___1763_23257.nbe);
        strict_args_tab = (uu___1763_23257.strict_args_tab)
      }
  
let (push_bv : env -> FStar_Syntax_Syntax.bv -> env) =
  fun env  ->
    fun x  -> push_local_binding env (FStar_Syntax_Syntax.Binding_var x)
  
let (push_bvs : env -> FStar_Syntax_Syntax.bv Prims.list -> env) =
  fun env  ->
    fun bvs  ->
      FStar_List.fold_left (fun env1  -> fun bv  -> push_bv env1 bv) env bvs
  
let (pop_bv :
  env -> (FStar_Syntax_Syntax.bv * env) FStar_Pervasives_Native.option) =
  fun env  ->
    match env.gamma with
    | (FStar_Syntax_Syntax.Binding_var x)::rest ->
        FStar_Pervasives_Native.Some
          (x,
            (let uu___1776_23315 = env  in
             {
               solver = (uu___1776_23315.solver);
               range = (uu___1776_23315.range);
               curmodule = (uu___1776_23315.curmodule);
               gamma = rest;
               gamma_sig = (uu___1776_23315.gamma_sig);
               gamma_cache = (uu___1776_23315.gamma_cache);
               modules = (uu___1776_23315.modules);
               expected_typ = (uu___1776_23315.expected_typ);
               sigtab = (uu___1776_23315.sigtab);
               attrtab = (uu___1776_23315.attrtab);
               is_pattern = (uu___1776_23315.is_pattern);
               instantiate_imp = (uu___1776_23315.instantiate_imp);
               effects = (uu___1776_23315.effects);
               generalize = (uu___1776_23315.generalize);
               letrecs = (uu___1776_23315.letrecs);
               top_level = (uu___1776_23315.top_level);
               check_uvars = (uu___1776_23315.check_uvars);
               use_eq = (uu___1776_23315.use_eq);
               is_iface = (uu___1776_23315.is_iface);
               admit = (uu___1776_23315.admit);
               lax = (uu___1776_23315.lax);
               lax_universes = (uu___1776_23315.lax_universes);
               phase1 = (uu___1776_23315.phase1);
               failhard = (uu___1776_23315.failhard);
               nosynth = (uu___1776_23315.nosynth);
               uvar_subtyping = (uu___1776_23315.uvar_subtyping);
               tc_term = (uu___1776_23315.tc_term);
               type_of = (uu___1776_23315.type_of);
               universe_of = (uu___1776_23315.universe_of);
               check_type_of = (uu___1776_23315.check_type_of);
               use_bv_sorts = (uu___1776_23315.use_bv_sorts);
               qtbl_name_and_index = (uu___1776_23315.qtbl_name_and_index);
               normalized_eff_names = (uu___1776_23315.normalized_eff_names);
               fv_delta_depths = (uu___1776_23315.fv_delta_depths);
               proof_ns = (uu___1776_23315.proof_ns);
               synth_hook = (uu___1776_23315.synth_hook);
               splice = (uu___1776_23315.splice);
               postprocess = (uu___1776_23315.postprocess);
               is_native_tactic = (uu___1776_23315.is_native_tactic);
               identifier_info = (uu___1776_23315.identifier_info);
               tc_hooks = (uu___1776_23315.tc_hooks);
               dsenv = (uu___1776_23315.dsenv);
               nbe = (uu___1776_23315.nbe);
               strict_args_tab = (uu___1776_23315.strict_args_tab)
             }))
    | uu____23316 -> FStar_Pervasives_Native.None
  
let (push_binders : env -> FStar_Syntax_Syntax.binders -> env) =
  fun env  ->
    fun bs  ->
      FStar_List.fold_left
        (fun env1  ->
           fun uu____23345  ->
             match uu____23345 with | (x,uu____23353) -> push_bv env1 x) env
        bs
  
let (binding_of_lb :
  FStar_Syntax_Syntax.lbname ->
    (FStar_Syntax_Syntax.univ_name Prims.list * FStar_Syntax_Syntax.term'
      FStar_Syntax_Syntax.syntax) -> FStar_Syntax_Syntax.binding)
  =
  fun x  ->
    fun t  ->
      match x with
      | FStar_Util.Inl x1 ->
          let x2 =
            let uu___1790_23388 = x1  in
            {
              FStar_Syntax_Syntax.ppname =
                (uu___1790_23388.FStar_Syntax_Syntax.ppname);
              FStar_Syntax_Syntax.index =
                (uu___1790_23388.FStar_Syntax_Syntax.index);
              FStar_Syntax_Syntax.sort = (FStar_Pervasives_Native.snd t)
            }  in
          FStar_Syntax_Syntax.Binding_var x2
      | FStar_Util.Inr fv ->
          FStar_Syntax_Syntax.Binding_lid
            (((fv.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v), t)
  
let (push_let_binding :
  env -> FStar_Syntax_Syntax.lbname -> FStar_Syntax_Syntax.tscheme -> env) =
  fun env  ->
    fun lb  -> fun ts  -> push_local_binding env (binding_of_lb lb ts)
  
let (push_module : env -> FStar_Syntax_Syntax.modul -> env) =
  fun env  ->
    fun m  ->
      add_sigelts env m.FStar_Syntax_Syntax.exports;
      (let uu___1801_23430 = env  in
       {
         solver = (uu___1801_23430.solver);
         range = (uu___1801_23430.range);
         curmodule = (uu___1801_23430.curmodule);
         gamma = [];
         gamma_sig = [];
         gamma_cache = (uu___1801_23430.gamma_cache);
         modules = (m :: (env.modules));
         expected_typ = FStar_Pervasives_Native.None;
         sigtab = (uu___1801_23430.sigtab);
         attrtab = (uu___1801_23430.attrtab);
         is_pattern = (uu___1801_23430.is_pattern);
         instantiate_imp = (uu___1801_23430.instantiate_imp);
         effects = (uu___1801_23430.effects);
         generalize = (uu___1801_23430.generalize);
         letrecs = (uu___1801_23430.letrecs);
         top_level = (uu___1801_23430.top_level);
         check_uvars = (uu___1801_23430.check_uvars);
         use_eq = (uu___1801_23430.use_eq);
         is_iface = (uu___1801_23430.is_iface);
         admit = (uu___1801_23430.admit);
         lax = (uu___1801_23430.lax);
         lax_universes = (uu___1801_23430.lax_universes);
         phase1 = (uu___1801_23430.phase1);
         failhard = (uu___1801_23430.failhard);
         nosynth = (uu___1801_23430.nosynth);
         uvar_subtyping = (uu___1801_23430.uvar_subtyping);
         tc_term = (uu___1801_23430.tc_term);
         type_of = (uu___1801_23430.type_of);
         universe_of = (uu___1801_23430.universe_of);
         check_type_of = (uu___1801_23430.check_type_of);
         use_bv_sorts = (uu___1801_23430.use_bv_sorts);
         qtbl_name_and_index = (uu___1801_23430.qtbl_name_and_index);
         normalized_eff_names = (uu___1801_23430.normalized_eff_names);
         fv_delta_depths = (uu___1801_23430.fv_delta_depths);
         proof_ns = (uu___1801_23430.proof_ns);
         synth_hook = (uu___1801_23430.synth_hook);
         splice = (uu___1801_23430.splice);
         postprocess = (uu___1801_23430.postprocess);
         is_native_tactic = (uu___1801_23430.is_native_tactic);
         identifier_info = (uu___1801_23430.identifier_info);
         tc_hooks = (uu___1801_23430.tc_hooks);
         dsenv = (uu___1801_23430.dsenv);
         nbe = (uu___1801_23430.nbe);
         strict_args_tab = (uu___1801_23430.strict_args_tab)
       })
  
let (push_univ_vars : env -> FStar_Syntax_Syntax.univ_names -> env) =
  fun env  ->
    fun xs  ->
      FStar_List.fold_left
        (fun env1  ->
           fun x  ->
             push_local_binding env1 (FStar_Syntax_Syntax.Binding_univ x))
        env xs
  
let (open_universes_in :
  env ->
    FStar_Syntax_Syntax.univ_names ->
      FStar_Syntax_Syntax.term Prims.list ->
        (env * FStar_Syntax_Syntax.univ_names * FStar_Syntax_Syntax.term
          Prims.list))
  =
  fun env  ->
    fun uvs  ->
      fun terms  ->
        let uu____23474 = FStar_Syntax_Subst.univ_var_opening uvs  in
        match uu____23474 with
        | (univ_subst,univ_vars) ->
            let env' = push_univ_vars env univ_vars  in
            let uu____23502 =
              FStar_List.map (FStar_Syntax_Subst.subst univ_subst) terms  in
            (env', univ_vars, uu____23502)
  
let (set_expected_typ : env -> FStar_Syntax_Syntax.typ -> env) =
  fun env  ->
    fun t  ->
      let uu___1816_23518 = env  in
      {
        solver = (uu___1816_23518.solver);
        range = (uu___1816_23518.range);
        curmodule = (uu___1816_23518.curmodule);
        gamma = (uu___1816_23518.gamma);
        gamma_sig = (uu___1816_23518.gamma_sig);
        gamma_cache = (uu___1816_23518.gamma_cache);
        modules = (uu___1816_23518.modules);
        expected_typ = (FStar_Pervasives_Native.Some t);
        sigtab = (uu___1816_23518.sigtab);
        attrtab = (uu___1816_23518.attrtab);
        is_pattern = (uu___1816_23518.is_pattern);
        instantiate_imp = (uu___1816_23518.instantiate_imp);
        effects = (uu___1816_23518.effects);
        generalize = (uu___1816_23518.generalize);
        letrecs = (uu___1816_23518.letrecs);
        top_level = (uu___1816_23518.top_level);
        check_uvars = (uu___1816_23518.check_uvars);
        use_eq = false;
        is_iface = (uu___1816_23518.is_iface);
        admit = (uu___1816_23518.admit);
        lax = (uu___1816_23518.lax);
        lax_universes = (uu___1816_23518.lax_universes);
        phase1 = (uu___1816_23518.phase1);
        failhard = (uu___1816_23518.failhard);
        nosynth = (uu___1816_23518.nosynth);
        uvar_subtyping = (uu___1816_23518.uvar_subtyping);
        tc_term = (uu___1816_23518.tc_term);
        type_of = (uu___1816_23518.type_of);
        universe_of = (uu___1816_23518.universe_of);
        check_type_of = (uu___1816_23518.check_type_of);
        use_bv_sorts = (uu___1816_23518.use_bv_sorts);
        qtbl_name_and_index = (uu___1816_23518.qtbl_name_and_index);
        normalized_eff_names = (uu___1816_23518.normalized_eff_names);
        fv_delta_depths = (uu___1816_23518.fv_delta_depths);
        proof_ns = (uu___1816_23518.proof_ns);
        synth_hook = (uu___1816_23518.synth_hook);
        splice = (uu___1816_23518.splice);
        postprocess = (uu___1816_23518.postprocess);
        is_native_tactic = (uu___1816_23518.is_native_tactic);
        identifier_info = (uu___1816_23518.identifier_info);
        tc_hooks = (uu___1816_23518.tc_hooks);
        dsenv = (uu___1816_23518.dsenv);
        nbe = (uu___1816_23518.nbe);
        strict_args_tab = (uu___1816_23518.strict_args_tab)
      }
  
let (expected_typ :
  env -> FStar_Syntax_Syntax.typ FStar_Pervasives_Native.option) =
  fun env  ->
    match env.expected_typ with
    | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.None
    | FStar_Pervasives_Native.Some t -> FStar_Pervasives_Native.Some t
  
let (clear_expected_typ :
  env -> (env * FStar_Syntax_Syntax.typ FStar_Pervasives_Native.option)) =
  fun env_  ->
    let uu____23549 = expected_typ env_  in
    ((let uu___1823_23555 = env_  in
      {
        solver = (uu___1823_23555.solver);
        range = (uu___1823_23555.range);
        curmodule = (uu___1823_23555.curmodule);
        gamma = (uu___1823_23555.gamma);
        gamma_sig = (uu___1823_23555.gamma_sig);
        gamma_cache = (uu___1823_23555.gamma_cache);
        modules = (uu___1823_23555.modules);
        expected_typ = FStar_Pervasives_Native.None;
        sigtab = (uu___1823_23555.sigtab);
        attrtab = (uu___1823_23555.attrtab);
        is_pattern = (uu___1823_23555.is_pattern);
        instantiate_imp = (uu___1823_23555.instantiate_imp);
        effects = (uu___1823_23555.effects);
        generalize = (uu___1823_23555.generalize);
        letrecs = (uu___1823_23555.letrecs);
        top_level = (uu___1823_23555.top_level);
        check_uvars = (uu___1823_23555.check_uvars);
        use_eq = false;
        is_iface = (uu___1823_23555.is_iface);
        admit = (uu___1823_23555.admit);
        lax = (uu___1823_23555.lax);
        lax_universes = (uu___1823_23555.lax_universes);
        phase1 = (uu___1823_23555.phase1);
        failhard = (uu___1823_23555.failhard);
        nosynth = (uu___1823_23555.nosynth);
        uvar_subtyping = (uu___1823_23555.uvar_subtyping);
        tc_term = (uu___1823_23555.tc_term);
        type_of = (uu___1823_23555.type_of);
        universe_of = (uu___1823_23555.universe_of);
        check_type_of = (uu___1823_23555.check_type_of);
        use_bv_sorts = (uu___1823_23555.use_bv_sorts);
        qtbl_name_and_index = (uu___1823_23555.qtbl_name_and_index);
        normalized_eff_names = (uu___1823_23555.normalized_eff_names);
        fv_delta_depths = (uu___1823_23555.fv_delta_depths);
        proof_ns = (uu___1823_23555.proof_ns);
        synth_hook = (uu___1823_23555.synth_hook);
        splice = (uu___1823_23555.splice);
        postprocess = (uu___1823_23555.postprocess);
        is_native_tactic = (uu___1823_23555.is_native_tactic);
        identifier_info = (uu___1823_23555.identifier_info);
        tc_hooks = (uu___1823_23555.tc_hooks);
        dsenv = (uu___1823_23555.dsenv);
        nbe = (uu___1823_23555.nbe);
        strict_args_tab = (uu___1823_23555.strict_args_tab)
      }), uu____23549)
  
let (finish_module : env -> FStar_Syntax_Syntax.modul -> env) =
  let empty_lid =
    let uu____23567 =
      let uu____23570 = FStar_Ident.id_of_text ""  in [uu____23570]  in
    FStar_Ident.lid_of_ids uu____23567  in
  fun env  ->
    fun m  ->
      let sigs =
        let uu____23577 =
          FStar_Ident.lid_equals m.FStar_Syntax_Syntax.name
            FStar_Parser_Const.prims_lid
           in
        if uu____23577
        then
          let uu____23582 =
            FStar_All.pipe_right env.gamma_sig
              (FStar_List.map FStar_Pervasives_Native.snd)
             in
          FStar_All.pipe_right uu____23582 FStar_List.rev
        else m.FStar_Syntax_Syntax.exports  in
      add_sigelts env sigs;
      (let uu___1831_23610 = env  in
       {
         solver = (uu___1831_23610.solver);
         range = (uu___1831_23610.range);
         curmodule = empty_lid;
         gamma = [];
         gamma_sig = [];
         gamma_cache = (uu___1831_23610.gamma_cache);
         modules = (m :: (env.modules));
         expected_typ = (uu___1831_23610.expected_typ);
         sigtab = (uu___1831_23610.sigtab);
         attrtab = (uu___1831_23610.attrtab);
         is_pattern = (uu___1831_23610.is_pattern);
         instantiate_imp = (uu___1831_23610.instantiate_imp);
         effects = (uu___1831_23610.effects);
         generalize = (uu___1831_23610.generalize);
         letrecs = (uu___1831_23610.letrecs);
         top_level = (uu___1831_23610.top_level);
         check_uvars = (uu___1831_23610.check_uvars);
         use_eq = (uu___1831_23610.use_eq);
         is_iface = (uu___1831_23610.is_iface);
         admit = (uu___1831_23610.admit);
         lax = (uu___1831_23610.lax);
         lax_universes = (uu___1831_23610.lax_universes);
         phase1 = (uu___1831_23610.phase1);
         failhard = (uu___1831_23610.failhard);
         nosynth = (uu___1831_23610.nosynth);
         uvar_subtyping = (uu___1831_23610.uvar_subtyping);
         tc_term = (uu___1831_23610.tc_term);
         type_of = (uu___1831_23610.type_of);
         universe_of = (uu___1831_23610.universe_of);
         check_type_of = (uu___1831_23610.check_type_of);
         use_bv_sorts = (uu___1831_23610.use_bv_sorts);
         qtbl_name_and_index = (uu___1831_23610.qtbl_name_and_index);
         normalized_eff_names = (uu___1831_23610.normalized_eff_names);
         fv_delta_depths = (uu___1831_23610.fv_delta_depths);
         proof_ns = (uu___1831_23610.proof_ns);
         synth_hook = (uu___1831_23610.synth_hook);
         splice = (uu___1831_23610.splice);
         postprocess = (uu___1831_23610.postprocess);
         is_native_tactic = (uu___1831_23610.is_native_tactic);
         identifier_info = (uu___1831_23610.identifier_info);
         tc_hooks = (uu___1831_23610.tc_hooks);
         dsenv = (uu___1831_23610.dsenv);
         nbe = (uu___1831_23610.nbe);
         strict_args_tab = (uu___1831_23610.strict_args_tab)
       })
  
let (uvars_in_env : env -> FStar_Syntax_Syntax.uvars) =
  fun env  ->
    let no_uvs = FStar_Syntax_Free.new_uv_set ()  in
    let ext out uvs = FStar_Util.set_union out uvs  in
    let rec aux out g =
      match g with
      | [] -> out
      | (FStar_Syntax_Syntax.Binding_univ uu____23662)::tl1 -> aux out tl1
      | (FStar_Syntax_Syntax.Binding_lid (uu____23666,(uu____23667,t)))::tl1
          ->
          let uu____23688 =
            let uu____23691 = FStar_Syntax_Free.uvars t  in
            ext out uu____23691  in
          aux uu____23688 tl1
      | (FStar_Syntax_Syntax.Binding_var
          { FStar_Syntax_Syntax.ppname = uu____23694;
            FStar_Syntax_Syntax.index = uu____23695;
            FStar_Syntax_Syntax.sort = t;_})::tl1
          ->
          let uu____23703 =
            let uu____23706 = FStar_Syntax_Free.uvars t  in
            ext out uu____23706  in
          aux uu____23703 tl1
       in
    aux no_uvs env.gamma
  
let (univ_vars : env -> FStar_Syntax_Syntax.universe_uvar FStar_Util.set) =
  fun env  ->
    let no_univs = FStar_Syntax_Free.new_universe_uvar_set ()  in
    let ext out uvs = FStar_Util.set_union out uvs  in
    let rec aux out g =
      match g with
      | [] -> out
      | (FStar_Syntax_Syntax.Binding_univ uu____23764)::tl1 -> aux out tl1
      | (FStar_Syntax_Syntax.Binding_lid (uu____23768,(uu____23769,t)))::tl1
          ->
          let uu____23790 =
            let uu____23793 = FStar_Syntax_Free.univs t  in
            ext out uu____23793  in
          aux uu____23790 tl1
      | (FStar_Syntax_Syntax.Binding_var
          { FStar_Syntax_Syntax.ppname = uu____23796;
            FStar_Syntax_Syntax.index = uu____23797;
            FStar_Syntax_Syntax.sort = t;_})::tl1
          ->
          let uu____23805 =
            let uu____23808 = FStar_Syntax_Free.univs t  in
            ext out uu____23808  in
          aux uu____23805 tl1
       in
    aux no_univs env.gamma
  
let (univnames : env -> FStar_Syntax_Syntax.univ_name FStar_Util.set) =
  fun env  ->
    let no_univ_names = FStar_Syntax_Syntax.no_universe_names  in
    let ext out uvs = FStar_Util.set_union out uvs  in
    let rec aux out g =
      match g with
      | [] -> out
      | (FStar_Syntax_Syntax.Binding_univ uname)::tl1 ->
          let uu____23870 = FStar_Util.set_add uname out  in
          aux uu____23870 tl1
      | (FStar_Syntax_Syntax.Binding_lid (uu____23873,(uu____23874,t)))::tl1
          ->
          let uu____23895 =
            let uu____23898 = FStar_Syntax_Free.univnames t  in
            ext out uu____23898  in
          aux uu____23895 tl1
      | (FStar_Syntax_Syntax.Binding_var
          { FStar_Syntax_Syntax.ppname = uu____23901;
            FStar_Syntax_Syntax.index = uu____23902;
            FStar_Syntax_Syntax.sort = t;_})::tl1
          ->
          let uu____23910 =
            let uu____23913 = FStar_Syntax_Free.univnames t  in
            ext out uu____23913  in
          aux uu____23910 tl1
       in
    aux no_univ_names env.gamma
  
let (bound_vars_of_bindings :
  FStar_Syntax_Syntax.binding Prims.list -> FStar_Syntax_Syntax.bv Prims.list)
  =
  fun bs  ->
    FStar_All.pipe_right bs
      (FStar_List.collect
         (fun uu___11_23934  ->
            match uu___11_23934 with
            | FStar_Syntax_Syntax.Binding_var x -> [x]
            | FStar_Syntax_Syntax.Binding_lid uu____23938 -> []
            | FStar_Syntax_Syntax.Binding_univ uu____23951 -> []))
  
let (binders_of_bindings :
  FStar_Syntax_Syntax.binding Prims.list -> FStar_Syntax_Syntax.binders) =
  fun bs  ->
    let uu____23962 =
      let uu____23971 = bound_vars_of_bindings bs  in
      FStar_All.pipe_right uu____23971
        (FStar_List.map FStar_Syntax_Syntax.mk_binder)
       in
    FStar_All.pipe_right uu____23962 FStar_List.rev
  
let (bound_vars : env -> FStar_Syntax_Syntax.bv Prims.list) =
  fun env  -> bound_vars_of_bindings env.gamma 
let (all_binders : env -> FStar_Syntax_Syntax.binders) =
  fun env  -> binders_of_bindings env.gamma 
let (print_gamma : FStar_Syntax_Syntax.gamma -> Prims.string) =
  fun gamma  ->
    let uu____24019 =
      FStar_All.pipe_right gamma
        (FStar_List.map
           (fun uu___12_24032  ->
              match uu___12_24032 with
              | FStar_Syntax_Syntax.Binding_var x ->
                  let uu____24035 = FStar_Syntax_Print.bv_to_string x  in
                  Prims.op_Hat "Binding_var " uu____24035
              | FStar_Syntax_Syntax.Binding_univ u ->
                  Prims.op_Hat "Binding_univ " u.FStar_Ident.idText
              | FStar_Syntax_Syntax.Binding_lid (l,uu____24041) ->
                  let uu____24058 = FStar_Ident.string_of_lid l  in
                  Prims.op_Hat "Binding_lid " uu____24058))
       in
    FStar_All.pipe_right uu____24019 (FStar_String.concat "::\n")
  
let (string_of_delta_level : delta_level -> Prims.string) =
  fun uu___13_24072  ->
    match uu___13_24072 with
    | NoDelta  -> "NoDelta"
    | InliningDelta  -> "Inlining"
    | Eager_unfolding_only  -> "Eager_unfolding_only"
    | Unfold d ->
        let uu____24078 = FStar_Syntax_Print.delta_depth_to_string d  in
        Prims.op_Hat "Unfold " uu____24078
  
let (lidents : env -> FStar_Ident.lident Prims.list) =
  fun env  ->
    let keys = FStar_List.collect FStar_Pervasives_Native.fst env.gamma_sig
       in
    FStar_Util.smap_fold (sigtab env)
      (fun uu____24101  ->
         fun v1  ->
           fun keys1  ->
             FStar_List.append (FStar_Syntax_Util.lids_of_sigelt v1) keys1)
      keys
  
let (should_enc_path : env -> Prims.string Prims.list -> Prims.bool) =
  fun env  ->
    fun path  ->
      let rec str_i_prefix xs ys =
        match (xs, ys) with
        | ([],uu____24156) -> true
        | (x::xs1,y::ys1) ->
            ((FStar_String.lowercase x) = (FStar_String.lowercase y)) &&
              (str_i_prefix xs1 ys1)
        | (uu____24189,uu____24190) -> false  in
      let uu____24204 =
        FStar_List.tryFind
          (fun uu____24226  ->
             match uu____24226 with | (p,uu____24237) -> str_i_prefix p path)
          env.proof_ns
         in
      match uu____24204 with
      | FStar_Pervasives_Native.None  -> false
      | FStar_Pervasives_Native.Some (uu____24256,b) -> b
  
let (should_enc_lid : env -> FStar_Ident.lident -> Prims.bool) =
  fun env  ->
    fun lid  ->
      let uu____24286 = FStar_Ident.path_of_lid lid  in
      should_enc_path env uu____24286
  
let (cons_proof_ns : Prims.bool -> env -> name_prefix -> env) =
  fun b  ->
    fun e  ->
      fun path  ->
        let uu___1974_24308 = e  in
        {
          solver = (uu___1974_24308.solver);
          range = (uu___1974_24308.range);
          curmodule = (uu___1974_24308.curmodule);
          gamma = (uu___1974_24308.gamma);
          gamma_sig = (uu___1974_24308.gamma_sig);
          gamma_cache = (uu___1974_24308.gamma_cache);
          modules = (uu___1974_24308.modules);
          expected_typ = (uu___1974_24308.expected_typ);
          sigtab = (uu___1974_24308.sigtab);
          attrtab = (uu___1974_24308.attrtab);
          is_pattern = (uu___1974_24308.is_pattern);
          instantiate_imp = (uu___1974_24308.instantiate_imp);
          effects = (uu___1974_24308.effects);
          generalize = (uu___1974_24308.generalize);
          letrecs = (uu___1974_24308.letrecs);
          top_level = (uu___1974_24308.top_level);
          check_uvars = (uu___1974_24308.check_uvars);
          use_eq = (uu___1974_24308.use_eq);
          is_iface = (uu___1974_24308.is_iface);
          admit = (uu___1974_24308.admit);
          lax = (uu___1974_24308.lax);
          lax_universes = (uu___1974_24308.lax_universes);
          phase1 = (uu___1974_24308.phase1);
          failhard = (uu___1974_24308.failhard);
          nosynth = (uu___1974_24308.nosynth);
          uvar_subtyping = (uu___1974_24308.uvar_subtyping);
          tc_term = (uu___1974_24308.tc_term);
          type_of = (uu___1974_24308.type_of);
          universe_of = (uu___1974_24308.universe_of);
          check_type_of = (uu___1974_24308.check_type_of);
          use_bv_sorts = (uu___1974_24308.use_bv_sorts);
          qtbl_name_and_index = (uu___1974_24308.qtbl_name_and_index);
          normalized_eff_names = (uu___1974_24308.normalized_eff_names);
          fv_delta_depths = (uu___1974_24308.fv_delta_depths);
          proof_ns = ((path, b) :: (e.proof_ns));
          synth_hook = (uu___1974_24308.synth_hook);
          splice = (uu___1974_24308.splice);
          postprocess = (uu___1974_24308.postprocess);
          is_native_tactic = (uu___1974_24308.is_native_tactic);
          identifier_info = (uu___1974_24308.identifier_info);
          tc_hooks = (uu___1974_24308.tc_hooks);
          dsenv = (uu___1974_24308.dsenv);
          nbe = (uu___1974_24308.nbe);
          strict_args_tab = (uu___1974_24308.strict_args_tab)
        }
  
let (add_proof_ns : env -> name_prefix -> env) =
  fun e  -> fun path  -> cons_proof_ns true e path 
let (rem_proof_ns : env -> name_prefix -> env) =
  fun e  -> fun path  -> cons_proof_ns false e path 
let (get_proof_ns : env -> proof_namespace) = fun e  -> e.proof_ns 
let (set_proof_ns : proof_namespace -> env -> env) =
  fun ns  ->
    fun e  ->
      let uu___1983_24356 = e  in
      {
        solver = (uu___1983_24356.solver);
        range = (uu___1983_24356.range);
        curmodule = (uu___1983_24356.curmodule);
        gamma = (uu___1983_24356.gamma);
        gamma_sig = (uu___1983_24356.gamma_sig);
        gamma_cache = (uu___1983_24356.gamma_cache);
        modules = (uu___1983_24356.modules);
        expected_typ = (uu___1983_24356.expected_typ);
        sigtab = (uu___1983_24356.sigtab);
        attrtab = (uu___1983_24356.attrtab);
        is_pattern = (uu___1983_24356.is_pattern);
        instantiate_imp = (uu___1983_24356.instantiate_imp);
        effects = (uu___1983_24356.effects);
        generalize = (uu___1983_24356.generalize);
        letrecs = (uu___1983_24356.letrecs);
        top_level = (uu___1983_24356.top_level);
        check_uvars = (uu___1983_24356.check_uvars);
        use_eq = (uu___1983_24356.use_eq);
        is_iface = (uu___1983_24356.is_iface);
        admit = (uu___1983_24356.admit);
        lax = (uu___1983_24356.lax);
        lax_universes = (uu___1983_24356.lax_universes);
        phase1 = (uu___1983_24356.phase1);
        failhard = (uu___1983_24356.failhard);
        nosynth = (uu___1983_24356.nosynth);
        uvar_subtyping = (uu___1983_24356.uvar_subtyping);
        tc_term = (uu___1983_24356.tc_term);
        type_of = (uu___1983_24356.type_of);
        universe_of = (uu___1983_24356.universe_of);
        check_type_of = (uu___1983_24356.check_type_of);
        use_bv_sorts = (uu___1983_24356.use_bv_sorts);
        qtbl_name_and_index = (uu___1983_24356.qtbl_name_and_index);
        normalized_eff_names = (uu___1983_24356.normalized_eff_names);
        fv_delta_depths = (uu___1983_24356.fv_delta_depths);
        proof_ns = ns;
        synth_hook = (uu___1983_24356.synth_hook);
        splice = (uu___1983_24356.splice);
        postprocess = (uu___1983_24356.postprocess);
        is_native_tactic = (uu___1983_24356.is_native_tactic);
        identifier_info = (uu___1983_24356.identifier_info);
        tc_hooks = (uu___1983_24356.tc_hooks);
        dsenv = (uu___1983_24356.dsenv);
        nbe = (uu___1983_24356.nbe);
        strict_args_tab = (uu___1983_24356.strict_args_tab)
      }
  
let (unbound_vars :
  env -> FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.bv FStar_Util.set) =
  fun e  ->
    fun t  ->
      let uu____24372 = FStar_Syntax_Free.names t  in
      let uu____24375 = bound_vars e  in
      FStar_List.fold_left (fun s  -> fun bv  -> FStar_Util.set_remove bv s)
        uu____24372 uu____24375
  
let (closed : env -> FStar_Syntax_Syntax.term -> Prims.bool) =
  fun e  ->
    fun t  ->
      let uu____24398 = unbound_vars e t  in
      FStar_Util.set_is_empty uu____24398
  
let (closed' : FStar_Syntax_Syntax.term -> Prims.bool) =
  fun t  ->
    let uu____24408 = FStar_Syntax_Free.names t  in
    FStar_Util.set_is_empty uu____24408
  
let (string_of_proof_ns : env -> Prims.string) =
  fun env  ->
    let aux uu____24429 =
      match uu____24429 with
      | (p,b) ->
          if (p = []) && b
          then "*"
          else
            (let uu____24449 = FStar_Ident.text_of_path p  in
             Prims.op_Hat (if b then "+" else "-") uu____24449)
       in
    let uu____24457 =
      let uu____24461 = FStar_List.map aux env.proof_ns  in
      FStar_All.pipe_right uu____24461 FStar_List.rev  in
    FStar_All.pipe_right uu____24457 (FStar_String.concat " ")
  
let (guard_of_guard_formula :
  FStar_TypeChecker_Common.guard_formula -> guard_t) =
  fun g  ->
    {
      FStar_TypeChecker_Common.guard_f = g;
      FStar_TypeChecker_Common.deferred = [];
      FStar_TypeChecker_Common.univ_ineqs = ([], []);
      FStar_TypeChecker_Common.implicits = []
    }
  
let (guard_form : guard_t -> FStar_TypeChecker_Common.guard_formula) =
  fun g  -> g.FStar_TypeChecker_Common.guard_f 
let (is_trivial : guard_t -> Prims.bool) =
  fun g  ->
    match g with
    | { FStar_TypeChecker_Common.guard_f = FStar_TypeChecker_Common.Trivial ;
        FStar_TypeChecker_Common.deferred = [];
        FStar_TypeChecker_Common.univ_ineqs = ([],[]);
        FStar_TypeChecker_Common.implicits = i;_} ->
        FStar_All.pipe_right i
          (FStar_Util.for_all
             (fun imp  ->
                ((imp.FStar_TypeChecker_Common.imp_uvar).FStar_Syntax_Syntax.ctx_uvar_should_check
                   = FStar_Syntax_Syntax.Allow_unresolved)
                  ||
                  (let uu____24529 =
                     FStar_Syntax_Unionfind.find
                       (imp.FStar_TypeChecker_Common.imp_uvar).FStar_Syntax_Syntax.ctx_uvar_head
                      in
                   match uu____24529 with
                   | FStar_Pervasives_Native.Some uu____24533 -> true
                   | FStar_Pervasives_Native.None  -> false)))
    | uu____24536 -> false
  
let (is_trivial_guard_formula : guard_t -> Prims.bool) =
  fun g  ->
    match g with
    | { FStar_TypeChecker_Common.guard_f = FStar_TypeChecker_Common.Trivial ;
        FStar_TypeChecker_Common.deferred = uu____24546;
        FStar_TypeChecker_Common.univ_ineqs = uu____24547;
        FStar_TypeChecker_Common.implicits = uu____24548;_} -> true
    | uu____24558 -> false
  
let (trivial_guard : guard_t) = FStar_TypeChecker_Common.trivial_guard 
let (abstract_guard_n :
  FStar_Syntax_Syntax.binder Prims.list -> guard_t -> guard_t) =
  fun bs  ->
    fun g  ->
      match g.FStar_TypeChecker_Common.guard_f with
      | FStar_TypeChecker_Common.Trivial  -> g
      | FStar_TypeChecker_Common.NonTrivial f ->
          let f' =
            FStar_Syntax_Util.abs bs f
              (FStar_Pervasives_Native.Some
                 (FStar_Syntax_Util.residual_tot FStar_Syntax_Util.ktype0))
             in
          let uu___2027_24580 = g  in
          {
            FStar_TypeChecker_Common.guard_f =
              (FStar_TypeChecker_Common.NonTrivial f');
            FStar_TypeChecker_Common.deferred =
              (uu___2027_24580.FStar_TypeChecker_Common.deferred);
            FStar_TypeChecker_Common.univ_ineqs =
              (uu___2027_24580.FStar_TypeChecker_Common.univ_ineqs);
            FStar_TypeChecker_Common.implicits =
              (uu___2027_24580.FStar_TypeChecker_Common.implicits)
          }
  
let (abstract_guard : FStar_Syntax_Syntax.binder -> guard_t -> guard_t) =
  fun b  -> fun g  -> abstract_guard_n [b] g 
let (def_check_vars_in_set :
  FStar_Range.range ->
    Prims.string ->
      FStar_Syntax_Syntax.bv FStar_Util.set ->
        FStar_Syntax_Syntax.term -> unit)
  =
  fun rng  ->
    fun msg  ->
      fun vset  ->
        fun t  ->
          let uu____24619 = FStar_Options.defensive ()  in
          if uu____24619
          then
            let s = FStar_Syntax_Free.names t  in
            let uu____24625 =
              let uu____24627 =
                let uu____24629 = FStar_Util.set_difference s vset  in
                FStar_All.pipe_left FStar_Util.set_is_empty uu____24629  in
              Prims.op_Negation uu____24627  in
            (if uu____24625
             then
               let uu____24636 =
                 let uu____24642 =
                   let uu____24644 = FStar_Syntax_Print.term_to_string t  in
                   let uu____24646 =
                     let uu____24648 = FStar_Util.set_elements s  in
                     FStar_All.pipe_right uu____24648
                       (FStar_Syntax_Print.bvs_to_string ",\n\t")
                      in
                   FStar_Util.format3
                     "Internal: term is not closed (%s).\nt = (%s)\nFVs = (%s)\n"
                     msg uu____24644 uu____24646
                    in
                 (FStar_Errors.Warning_Defensive, uu____24642)  in
               FStar_Errors.log_issue rng uu____24636
             else ())
          else ()
  
let (def_check_closed_in :
  FStar_Range.range ->
    Prims.string ->
      FStar_Syntax_Syntax.bv Prims.list -> FStar_Syntax_Syntax.term -> unit)
  =
  fun rng  ->
    fun msg  ->
      fun l  ->
        fun t  ->
          let uu____24688 =
            let uu____24690 = FStar_Options.defensive ()  in
            Prims.op_Negation uu____24690  in
          if uu____24688
          then ()
          else
            (let uu____24695 =
               FStar_Util.as_set l FStar_Syntax_Syntax.order_bv  in
             def_check_vars_in_set rng msg uu____24695 t)
  
let (def_check_closed_in_env :
  FStar_Range.range ->
    Prims.string -> env -> FStar_Syntax_Syntax.term -> unit)
  =
  fun rng  ->
    fun msg  ->
      fun e  ->
        fun t  ->
          let uu____24721 =
            let uu____24723 = FStar_Options.defensive ()  in
            Prims.op_Negation uu____24723  in
          if uu____24721
          then ()
          else
            (let uu____24728 = bound_vars e  in
             def_check_closed_in rng msg uu____24728 t)
  
let (def_check_guard_wf :
  FStar_Range.range -> Prims.string -> env -> guard_t -> unit) =
  fun rng  ->
    fun msg  ->
      fun env  ->
        fun g  ->
          match g.FStar_TypeChecker_Common.guard_f with
          | FStar_TypeChecker_Common.Trivial  -> ()
          | FStar_TypeChecker_Common.NonTrivial f ->
              def_check_closed_in_env rng msg env f
  
let (apply_guard : guard_t -> FStar_Syntax_Syntax.term -> guard_t) =
  fun g  ->
    fun e  ->
      match g.FStar_TypeChecker_Common.guard_f with
      | FStar_TypeChecker_Common.Trivial  -> g
      | FStar_TypeChecker_Common.NonTrivial f ->
          let uu___2064_24767 = g  in
          let uu____24768 =
            let uu____24769 =
              let uu____24770 =
                let uu____24777 =
                  let uu____24778 =
                    let uu____24795 =
                      let uu____24806 = FStar_Syntax_Syntax.as_arg e  in
                      [uu____24806]  in
                    (f, uu____24795)  in
                  FStar_Syntax_Syntax.Tm_app uu____24778  in
                FStar_Syntax_Syntax.mk uu____24777  in
              uu____24770 FStar_Pervasives_Native.None
                f.FStar_Syntax_Syntax.pos
               in
            FStar_All.pipe_left
              (fun _24843  -> FStar_TypeChecker_Common.NonTrivial _24843)
              uu____24769
             in
          {
            FStar_TypeChecker_Common.guard_f = uu____24768;
            FStar_TypeChecker_Common.deferred =
              (uu___2064_24767.FStar_TypeChecker_Common.deferred);
            FStar_TypeChecker_Common.univ_ineqs =
              (uu___2064_24767.FStar_TypeChecker_Common.univ_ineqs);
            FStar_TypeChecker_Common.implicits =
              (uu___2064_24767.FStar_TypeChecker_Common.implicits)
          }
  
let (map_guard :
  guard_t ->
    (FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term) -> guard_t)
  =
  fun g  ->
    fun map1  ->
      match g.FStar_TypeChecker_Common.guard_f with
      | FStar_TypeChecker_Common.Trivial  -> g
      | FStar_TypeChecker_Common.NonTrivial f ->
          let uu___2071_24861 = g  in
          let uu____24862 =
            let uu____24863 = map1 f  in
            FStar_TypeChecker_Common.NonTrivial uu____24863  in
          {
            FStar_TypeChecker_Common.guard_f = uu____24862;
            FStar_TypeChecker_Common.deferred =
              (uu___2071_24861.FStar_TypeChecker_Common.deferred);
            FStar_TypeChecker_Common.univ_ineqs =
              (uu___2071_24861.FStar_TypeChecker_Common.univ_ineqs);
            FStar_TypeChecker_Common.implicits =
              (uu___2071_24861.FStar_TypeChecker_Common.implicits)
          }
  
let (always_map_guard :
  guard_t ->
    (FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term) -> guard_t)
  =
  fun g  ->
    fun map1  ->
      match g.FStar_TypeChecker_Common.guard_f with
      | FStar_TypeChecker_Common.Trivial  ->
          let uu___2076_24880 = g  in
          let uu____24881 =
            let uu____24882 = map1 FStar_Syntax_Util.t_true  in
            FStar_TypeChecker_Common.NonTrivial uu____24882  in
          {
            FStar_TypeChecker_Common.guard_f = uu____24881;
            FStar_TypeChecker_Common.deferred =
              (uu___2076_24880.FStar_TypeChecker_Common.deferred);
            FStar_TypeChecker_Common.univ_ineqs =
              (uu___2076_24880.FStar_TypeChecker_Common.univ_ineqs);
            FStar_TypeChecker_Common.implicits =
              (uu___2076_24880.FStar_TypeChecker_Common.implicits)
          }
      | FStar_TypeChecker_Common.NonTrivial f ->
          let uu___2080_24884 = g  in
          let uu____24885 =
            let uu____24886 = map1 f  in
            FStar_TypeChecker_Common.NonTrivial uu____24886  in
          {
            FStar_TypeChecker_Common.guard_f = uu____24885;
            FStar_TypeChecker_Common.deferred =
              (uu___2080_24884.FStar_TypeChecker_Common.deferred);
            FStar_TypeChecker_Common.univ_ineqs =
              (uu___2080_24884.FStar_TypeChecker_Common.univ_ineqs);
            FStar_TypeChecker_Common.implicits =
              (uu___2080_24884.FStar_TypeChecker_Common.implicits)
          }
  
let (trivial : FStar_TypeChecker_Common.guard_formula -> unit) =
  fun t  ->
    match t with
    | FStar_TypeChecker_Common.Trivial  -> ()
    | FStar_TypeChecker_Common.NonTrivial uu____24893 ->
        failwith "impossible"
  
let (conj_guard_f :
  FStar_TypeChecker_Common.guard_formula ->
    FStar_TypeChecker_Common.guard_formula ->
      FStar_TypeChecker_Common.guard_formula)
  =
  fun g1  ->
    fun g2  ->
      match (g1, g2) with
      | (FStar_TypeChecker_Common.Trivial ,g) -> g
      | (g,FStar_TypeChecker_Common.Trivial ) -> g
      | (FStar_TypeChecker_Common.NonTrivial
         f1,FStar_TypeChecker_Common.NonTrivial f2) ->
          let uu____24910 = FStar_Syntax_Util.mk_conj f1 f2  in
          FStar_TypeChecker_Common.NonTrivial uu____24910
  
let (check_trivial :
  FStar_Syntax_Syntax.term -> FStar_TypeChecker_Common.guard_formula) =
  fun t  ->
    let uu____24917 =
      let uu____24918 = FStar_Syntax_Util.unmeta t  in
      uu____24918.FStar_Syntax_Syntax.n  in
    match uu____24917 with
    | FStar_Syntax_Syntax.Tm_fvar tc when
        FStar_Syntax_Syntax.fv_eq_lid tc FStar_Parser_Const.true_lid ->
        FStar_TypeChecker_Common.Trivial
    | uu____24922 -> FStar_TypeChecker_Common.NonTrivial t
  
let (imp_guard_f :
  FStar_TypeChecker_Common.guard_formula ->
    FStar_TypeChecker_Common.guard_formula ->
      FStar_TypeChecker_Common.guard_formula)
  =
  fun g1  ->
    fun g2  ->
      match (g1, g2) with
      | (FStar_TypeChecker_Common.Trivial ,g) -> g
      | (g,FStar_TypeChecker_Common.Trivial ) ->
          FStar_TypeChecker_Common.Trivial
      | (FStar_TypeChecker_Common.NonTrivial
         f1,FStar_TypeChecker_Common.NonTrivial f2) ->
          let imp = FStar_Syntax_Util.mk_imp f1 f2  in check_trivial imp
  
let (binop_guard :
  (FStar_TypeChecker_Common.guard_formula ->
     FStar_TypeChecker_Common.guard_formula ->
       FStar_TypeChecker_Common.guard_formula)
    ->
    FStar_TypeChecker_Common.guard_t ->
      FStar_TypeChecker_Common.guard_t -> FStar_TypeChecker_Common.guard_t)
  =
  fun f  ->
    fun g1  ->
      fun g2  ->
        let uu____24965 =
          f g1.FStar_TypeChecker_Common.guard_f
            g2.FStar_TypeChecker_Common.guard_f
           in
        {
          FStar_TypeChecker_Common.guard_f = uu____24965;
          FStar_TypeChecker_Common.deferred =
            (FStar_List.append g1.FStar_TypeChecker_Common.deferred
               g2.FStar_TypeChecker_Common.deferred);
          FStar_TypeChecker_Common.univ_ineqs =
            ((FStar_List.append
                (FStar_Pervasives_Native.fst
                   g1.FStar_TypeChecker_Common.univ_ineqs)
                (FStar_Pervasives_Native.fst
                   g2.FStar_TypeChecker_Common.univ_ineqs)),
              (FStar_List.append
                 (FStar_Pervasives_Native.snd
                    g1.FStar_TypeChecker_Common.univ_ineqs)
                 (FStar_Pervasives_Native.snd
                    g2.FStar_TypeChecker_Common.univ_ineqs)));
          FStar_TypeChecker_Common.implicits =
            (FStar_List.append g1.FStar_TypeChecker_Common.implicits
               g2.FStar_TypeChecker_Common.implicits)
        }
  
let (conj_guard : guard_t -> guard_t -> guard_t) =
  fun g1  -> fun g2  -> binop_guard conj_guard_f g1 g2 
let (imp_guard : guard_t -> guard_t -> guard_t) =
  fun g1  -> fun g2  -> binop_guard imp_guard_f g1 g2 
let (conj_guards : guard_t Prims.list -> guard_t) =
  fun gs  -> FStar_List.fold_left conj_guard trivial_guard gs 
let (close_guard_univs :
  FStar_Syntax_Syntax.universes ->
    FStar_Syntax_Syntax.binders -> guard_t -> guard_t)
  =
  fun us  ->
    fun bs  ->
      fun g  ->
        match g.FStar_TypeChecker_Common.guard_f with
        | FStar_TypeChecker_Common.Trivial  -> g
        | FStar_TypeChecker_Common.NonTrivial f ->
            let f1 =
              FStar_List.fold_right2
                (fun u  ->
                   fun b  ->
                     fun f1  ->
                       let uu____25060 = FStar_Syntax_Syntax.is_null_binder b
                          in
                       if uu____25060
                       then f1
                       else
                         FStar_Syntax_Util.mk_forall u
                           (FStar_Pervasives_Native.fst b) f1) us bs f
               in
            let uu___2135_25067 = g  in
            {
              FStar_TypeChecker_Common.guard_f =
                (FStar_TypeChecker_Common.NonTrivial f1);
              FStar_TypeChecker_Common.deferred =
                (uu___2135_25067.FStar_TypeChecker_Common.deferred);
              FStar_TypeChecker_Common.univ_ineqs =
                (uu___2135_25067.FStar_TypeChecker_Common.univ_ineqs);
              FStar_TypeChecker_Common.implicits =
                (uu___2135_25067.FStar_TypeChecker_Common.implicits)
            }
  
let (close_forall :
  env ->
    FStar_Syntax_Syntax.binders ->
      FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
  =
  fun env  ->
    fun bs  ->
      fun f  ->
        FStar_List.fold_right
          (fun b  ->
             fun f1  ->
               let uu____25101 = FStar_Syntax_Syntax.is_null_binder b  in
               if uu____25101
               then f1
               else
                 (let u =
                    env.universe_of env
                      (FStar_Pervasives_Native.fst b).FStar_Syntax_Syntax.sort
                     in
                  FStar_Syntax_Util.mk_forall u
                    (FStar_Pervasives_Native.fst b) f1)) bs f
  
let (close_guard : env -> FStar_Syntax_Syntax.binders -> guard_t -> guard_t)
  =
  fun env  ->
    fun binders  ->
      fun g  ->
        match g.FStar_TypeChecker_Common.guard_f with
        | FStar_TypeChecker_Common.Trivial  -> g
        | FStar_TypeChecker_Common.NonTrivial f ->
            let uu___2150_25128 = g  in
            let uu____25129 =
              let uu____25130 = close_forall env binders f  in
              FStar_TypeChecker_Common.NonTrivial uu____25130  in
            {
              FStar_TypeChecker_Common.guard_f = uu____25129;
              FStar_TypeChecker_Common.deferred =
                (uu___2150_25128.FStar_TypeChecker_Common.deferred);
              FStar_TypeChecker_Common.univ_ineqs =
                (uu___2150_25128.FStar_TypeChecker_Common.univ_ineqs);
              FStar_TypeChecker_Common.implicits =
                (uu___2150_25128.FStar_TypeChecker_Common.implicits)
            }
  
let (new_implicit_var_aux :
  Prims.string ->
    FStar_Range.range ->
      env ->
        FStar_Syntax_Syntax.typ ->
          FStar_Syntax_Syntax.should_check_uvar ->
            (FStar_Dyn.dyn * FStar_Syntax_Syntax.term)
              FStar_Pervasives_Native.option ->
              (FStar_Syntax_Syntax.term * (FStar_Syntax_Syntax.ctx_uvar *
                FStar_Range.range) Prims.list * guard_t))
  =
  fun reason  ->
    fun r  ->
      fun env  ->
        fun k  ->
          fun should_check  ->
            fun meta  ->
              let uu____25188 =
                FStar_Syntax_Util.destruct k FStar_Parser_Const.range_of_lid
                 in
              match uu____25188 with
              | FStar_Pervasives_Native.Some
                  (uu____25213::(tm,uu____25215)::[]) ->
                  let t =
                    FStar_Syntax_Syntax.mk
                      (FStar_Syntax_Syntax.Tm_constant
                         (FStar_Const.Const_range
                            (tm.FStar_Syntax_Syntax.pos)))
                      FStar_Pervasives_Native.None tm.FStar_Syntax_Syntax.pos
                     in
                  (t, [], trivial_guard)
              | uu____25279 ->
                  let binders = all_binders env  in
                  let gamma = env.gamma  in
                  let ctx_uvar =
                    let uu____25297 = FStar_Syntax_Unionfind.fresh ()  in
                    {
                      FStar_Syntax_Syntax.ctx_uvar_head = uu____25297;
                      FStar_Syntax_Syntax.ctx_uvar_gamma = gamma;
                      FStar_Syntax_Syntax.ctx_uvar_binders = binders;
                      FStar_Syntax_Syntax.ctx_uvar_typ = k;
                      FStar_Syntax_Syntax.ctx_uvar_reason = reason;
                      FStar_Syntax_Syntax.ctx_uvar_should_check =
                        should_check;
                      FStar_Syntax_Syntax.ctx_uvar_range = r;
                      FStar_Syntax_Syntax.ctx_uvar_meta = meta
                    }  in
                  (FStar_TypeChecker_Common.check_uvar_ctx_invariant reason r
                     true gamma binders;
                   (let t =
                      FStar_Syntax_Syntax.mk
                        (FStar_Syntax_Syntax.Tm_uvar
                           (ctx_uvar, ([], FStar_Syntax_Syntax.NoUseRange)))
                        FStar_Pervasives_Native.None r
                       in
                    let imp =
                      {
                        FStar_TypeChecker_Common.imp_reason = reason;
                        FStar_TypeChecker_Common.imp_uvar = ctx_uvar;
                        FStar_TypeChecker_Common.imp_tm = t;
                        FStar_TypeChecker_Common.imp_range = r
                      }  in
                    let g =
                      let uu___2172_25329 = trivial_guard  in
                      {
                        FStar_TypeChecker_Common.guard_f =
                          (uu___2172_25329.FStar_TypeChecker_Common.guard_f);
                        FStar_TypeChecker_Common.deferred =
                          (uu___2172_25329.FStar_TypeChecker_Common.deferred);
                        FStar_TypeChecker_Common.univ_ineqs =
                          (uu___2172_25329.FStar_TypeChecker_Common.univ_ineqs);
                        FStar_TypeChecker_Common.implicits = [imp]
                      }  in
                    (t, [(ctx_uvar, r)], g)))
  
let (lift_to_layered_effect :
  env ->
    FStar_Syntax_Syntax.comp ->
      FStar_Ident.lident -> (FStar_Syntax_Syntax.comp * guard_t))
  =
  fun env  ->
    fun c  ->
      fun eff_name  ->
        (let uu____25369 =
           FStar_All.pipe_left (debug env)
             (FStar_Options.Other "LayeredEffects")
            in
         if uu____25369
         then
           let uu____25374 = FStar_Syntax_Print.comp_to_string c  in
           let uu____25376 = FStar_Syntax_Print.lid_to_string eff_name  in
           FStar_Util.print2 "Lifting comp %s to layered effect %s {\n"
             uu____25374 uu____25376
         else ());
        (let ct = unfold_effect_abbrev env c  in
         let uu____25382 =
           FStar_Ident.lid_equals ct.FStar_Syntax_Syntax.effect_name eff_name
            in
         if uu____25382
         then (c, trivial_guard)
         else
           (let src_ed =
              get_effect_decl env ct.FStar_Syntax_Syntax.effect_name  in
            let dst_ed = get_effect_decl env eff_name  in
            if
              src_ed.FStar_Syntax_Syntax.is_layered ||
                (Prims.op_Negation dst_ed.FStar_Syntax_Syntax.is_layered)
            then
              failwith
                "lift_to_layered_effect called with layered src or non-layered dst"
            else ();
            (let lift_t =
               let uu____25399 =
                 monad_leq env src_ed.FStar_Syntax_Syntax.mname
                   dst_ed.FStar_Syntax_Syntax.mname
                  in
               match uu____25399 with
               | FStar_Pervasives_Native.None  ->
                   failwith
                     (Prims.op_Hat "Could not find an edge from "
                        (Prims.op_Hat
                           (src_ed.FStar_Syntax_Syntax.mname).FStar_Ident.str
                           (Prims.op_Hat " to "
                              (dst_ed.FStar_Syntax_Syntax.mname).FStar_Ident.str)))
               | FStar_Pervasives_Native.Some lift ->
                   FStar_All.pipe_right (lift.mlift).mlift_t FStar_Util.must
                in
             let uu____25407 = FStar_Syntax_Util.destruct_comp ct  in
             match uu____25407 with
             | (u,a,wp) ->
                 let uu____25421 = inst_tscheme_with lift_t [u]  in
                 (match uu____25421 with
                  | (uu____25430,lift_t1) ->
                      let uu____25432 =
                        let uu____25445 =
                          let uu____25446 =
                            FStar_Syntax_Subst.compress lift_t1  in
                          uu____25446.FStar_Syntax_Syntax.n  in
                        match uu____25445 with
                        | FStar_Syntax_Syntax.Tm_arrow (bs,c1) ->
                            let uu____25483 =
                              FStar_Syntax_Subst.open_comp bs c1  in
                            FStar_All.pipe_right uu____25483
                              (fun uu____25500  ->
                                 match uu____25500 with
                                 | (bs1,c2) ->
                                     let uu____25511 =
                                       FStar_Syntax_Util.comp_to_comp_typ c2
                                        in
                                     (bs1, uu____25511))
                        | uu____25512 ->
                            let uu____25513 =
                              let uu____25515 =
                                let uu____25517 =
                                  FStar_Syntax_Print.term_to_string lift_t1
                                   in
                                Prims.op_Hat uu____25517
                                  " is not an arrow type"
                                 in
                              Prims.op_Hat "lift_t: " uu____25515  in
                            failwith uu____25513
                         in
                      (match uu____25432 with
                       | (lift_bs,lift_ct) ->
                           let uu____25555 =
                             match lift_bs with
                             | a_b::wp_b::bs when
                                 (FStar_List.length bs) >= Prims.int_one ->
                                 let uu____25634 =
                                   let uu____25635 =
                                     FStar_List.splitAt
                                       ((FStar_List.length bs) -
                                          Prims.int_one) bs
                                      in
                                   FStar_All.pipe_right uu____25635
                                     FStar_Pervasives_Native.fst
                                    in
                                 (a_b, wp_b, uu____25634)
                             | uu____25693 ->
                                 let uu____25702 =
                                   let uu____25704 =
                                     let uu____25706 =
                                       FStar_Syntax_Print.term_to_string
                                         lift_t1
                                        in
                                     Prims.op_Hat uu____25706
                                       " does not have enough binders"
                                      in
                                   Prims.op_Hat "lift_t: " uu____25704  in
                                 failwith uu____25702
                              in
                           (match uu____25555 with
                            | (a_b,wp_b,rest_bs) ->
                                let rest_bs1 =
                                  let uu____25760 =
                                    let uu____25763 =
                                      let uu____25764 =
                                        let uu____25771 =
                                          FStar_All.pipe_right a_b
                                            FStar_Pervasives_Native.fst
                                           in
                                        (uu____25771, a)  in
                                      FStar_Syntax_Syntax.NT uu____25764  in
                                    let uu____25782 =
                                      let uu____25785 =
                                        let uu____25786 =
                                          let uu____25793 =
                                            FStar_All.pipe_right wp_b
                                              FStar_Pervasives_Native.fst
                                             in
                                          (uu____25793, wp)  in
                                        FStar_Syntax_Syntax.NT uu____25786
                                         in
                                      [uu____25785]  in
                                    uu____25763 :: uu____25782  in
                                  FStar_Syntax_Subst.subst_binders
                                    uu____25760 rest_bs
                                   in
                                let uu____25804 =
                                  let uu____25811 =
                                    let uu____25812 =
                                      FStar_Syntax_Subst.compress
                                        lift_ct.FStar_Syntax_Syntax.result_typ
                                       in
                                    uu____25812.FStar_Syntax_Syntax.n  in
                                  match uu____25811 with
                                  | FStar_Syntax_Syntax.Tm_app
                                      (uu____25821,uu____25822::is) ->
                                      let uu____25864 =
                                        FStar_List.map
                                          FStar_Pervasives_Native.fst is
                                         in
                                      ((lift_ct.FStar_Syntax_Syntax.comp_univs),
                                        uu____25864)
                                  | uu____25881 ->
                                      let uu____25882 =
                                        let uu____25884 =
                                          let uu____25886 =
                                            FStar_Syntax_Print.term_to_string
                                              lift_t1
                                             in
                                          Prims.op_Hat uu____25886
                                            " does not have a repr return type"
                                           in
                                        Prims.op_Hat "lift_t: " uu____25884
                                         in
                                      failwith uu____25882
                                   in
                                (match uu____25804 with
                                 | (u_m,is) ->
                                     let uu____25906 =
                                       let uu____25915 =
                                         FStar_List.fold_left
                                           (fun uu____25955  ->
                                              fun b  ->
                                                match uu____25955 with
                                                | (substs,is_uvars,g) ->
                                                    let sort =
                                                      FStar_Syntax_Subst.subst
                                                        substs
                                                        (FStar_Pervasives_Native.fst
                                                           b).FStar_Syntax_Syntax.sort
                                                       in
                                                    let uu____25997 =
                                                      new_implicit_var_aux ""
                                                        FStar_Range.dummyRange
                                                        env sort
                                                        FStar_Syntax_Syntax.Strict
                                                        FStar_Pervasives_Native.None
                                                       in
                                                    (match uu____25997 with
                                                     | (t,uu____26026,g_t) ->
                                                         ((let uu____26041 =
                                                             FStar_All.pipe_left
                                                               (debug env)
                                                               (FStar_Options.Other
                                                                  "LayeredEffects")
                                                              in
                                                           if uu____26041
                                                           then
                                                             let uu____26046
                                                               =
                                                               FStar_Syntax_Print.term_to_string
                                                                 t
                                                                in
                                                             let uu____26048
                                                               =
                                                               FStar_Syntax_Print.binder_to_string
                                                                 b
                                                                in
                                                             FStar_Util.print2
                                                               "lift_to_layered_effect: introduced uvar %s for binder %s\n"
                                                               uu____26046
                                                               uu____26048
                                                           else ());
                                                          (let uu____26053 =
                                                             let uu____26056
                                                               =
                                                               let uu____26059
                                                                 =
                                                                 let uu____26060
                                                                   =
                                                                   let uu____26067
                                                                    =
                                                                    FStar_All.pipe_right
                                                                    b
                                                                    FStar_Pervasives_Native.fst
                                                                     in
                                                                   (uu____26067,
                                                                    t)
                                                                    in
                                                                 FStar_Syntax_Syntax.NT
                                                                   uu____26060
                                                                  in
                                                               [uu____26059]
                                                                in
                                                             FStar_List.append
                                                               substs
                                                               uu____26056
                                                              in
                                                           let uu____26078 =
                                                             conj_guard g g_t
                                                              in
                                                           (uu____26053,
                                                             (FStar_List.append
                                                                is_uvars 
                                                                [t]),
                                                             uu____26078)))))
                                           ([], [], trivial_guard) rest_bs1
                                          in
                                       match uu____25915 with
                                       | (uu____26095,rest_bs_uvars,g) ->
                                           (rest_bs_uvars, g)
                                        in
                                     (match uu____25906 with
                                      | (rest_bs_uvars,g) ->
                                          let subst_for_is =
                                            FStar_List.map2
                                              (fun b  ->
                                                 fun t  ->
                                                   let uu____26148 =
                                                     let uu____26155 =
                                                       FStar_All.pipe_right b
                                                         FStar_Pervasives_Native.fst
                                                        in
                                                     (uu____26155, t)  in
                                                   FStar_Syntax_Syntax.NT
                                                     uu____26148) (a_b ::
                                              wp_b :: rest_bs1) (a :: wp ::
                                              rest_bs_uvars)
                                             in
                                          let is1 =
                                            FStar_List.map
                                              (FStar_Syntax_Subst.subst
                                                 subst_for_is) is
                                             in
                                          let c1 =
                                            let uu____26186 =
                                              let uu____26187 =
                                                FStar_List.map
                                                  FStar_Syntax_Syntax.as_arg
                                                  is1
                                                 in
                                              {
                                                FStar_Syntax_Syntax.comp_univs
                                                  = u_m;
                                                FStar_Syntax_Syntax.effect_name
                                                  = eff_name;
                                                FStar_Syntax_Syntax.result_typ
                                                  = a;
                                                FStar_Syntax_Syntax.effect_args
                                                  = uu____26187;
                                                FStar_Syntax_Syntax.flags =
                                                  []
                                              }  in
                                            FStar_Syntax_Syntax.mk_Comp
                                              uu____26186
                                             in
                                          ((let uu____26207 =
                                              FStar_All.pipe_left (debug env)
                                                (FStar_Options.Other
                                                   "LayeredEffects")
                                               in
                                            if uu____26207
                                            then
                                              let uu____26212 =
                                                FStar_Syntax_Print.comp_to_string
                                                  c1
                                                 in
                                              FStar_Util.print1
                                                "} Lifted comp: %s\n"
                                                uu____26212
                                            else ());
                                           (c1, g))))))))))
  
let (dummy_solver : solver_t) =
  {
    init = (fun uu____26220  -> ());
    push = (fun uu____26222  -> ());
    pop = (fun uu____26225  -> ());
    snapshot =
      (fun uu____26228  ->
         ((Prims.int_zero, Prims.int_zero, Prims.int_zero), ()));
    rollback = (fun uu____26247  -> fun uu____26248  -> ());
    encode_sig = (fun uu____26263  -> fun uu____26264  -> ());
    preprocess =
      (fun e  ->
         fun g  ->
           let uu____26270 =
             let uu____26277 = FStar_Options.peek ()  in (e, g, uu____26277)
              in
           [uu____26270]);
    solve = (fun uu____26293  -> fun uu____26294  -> fun uu____26295  -> ());
    finish = (fun uu____26302  -> ());
    refresh = (fun uu____26304  -> ())
  } 