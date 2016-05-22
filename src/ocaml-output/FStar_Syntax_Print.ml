
open Prims

let lid_to_string : FStar_Ident.lid  ->  Prims.string = (fun l -> l.FStar_Ident.str)


let fv_to_string : FStar_Syntax_Syntax.fv  ->  Prims.string = (fun fv -> (lid_to_string fv.FStar_Syntax_Syntax.fv_name.FStar_Syntax_Syntax.v))


let bv_to_string : FStar_Syntax_Syntax.bv  ->  Prims.string = (fun bv -> (let _128_7 = (FStar_Util.string_of_int bv.FStar_Syntax_Syntax.index)
in (Prims.strcat (Prims.strcat bv.FStar_Syntax_Syntax.ppname.FStar_Ident.idText "#") _128_7)))


let nm_to_string : FStar_Syntax_Syntax.bv  ->  Prims.string = (fun bv -> if (FStar_Options.print_real_names ()) then begin
(bv_to_string bv)
end else begin
bv.FStar_Syntax_Syntax.ppname.FStar_Ident.idText
end)


let db_to_string : FStar_Syntax_Syntax.bv  ->  Prims.string = (fun bv -> (let _128_12 = (FStar_Util.string_of_int bv.FStar_Syntax_Syntax.index)
in (Prims.strcat (Prims.strcat bv.FStar_Syntax_Syntax.ppname.FStar_Ident.idText "@") _128_12)))


let infix_prim_ops : (FStar_Ident.lident * Prims.string) Prims.list = ((FStar_Syntax_Const.op_Addition, "+"))::((FStar_Syntax_Const.op_Subtraction, "-"))::((FStar_Syntax_Const.op_Multiply, "*"))::((FStar_Syntax_Const.op_Division, "/"))::((FStar_Syntax_Const.op_Eq, "="))::((FStar_Syntax_Const.op_ColonEq, ":="))::((FStar_Syntax_Const.op_notEq, "<>"))::((FStar_Syntax_Const.op_And, "&&"))::((FStar_Syntax_Const.op_Or, "||"))::((FStar_Syntax_Const.op_LTE, "<="))::((FStar_Syntax_Const.op_GTE, ">="))::((FStar_Syntax_Const.op_LT, "<"))::((FStar_Syntax_Const.op_GT, ">"))::((FStar_Syntax_Const.op_Modulus, "mod"))::((FStar_Syntax_Const.and_lid, "/\\"))::((FStar_Syntax_Const.or_lid, "\\/"))::((FStar_Syntax_Const.imp_lid, "==>"))::((FStar_Syntax_Const.iff_lid, "<==>"))::((FStar_Syntax_Const.precedes_lid, "<<"))::((FStar_Syntax_Const.eq2_lid, "=="))::[]


let unary_prim_ops : (FStar_Ident.lident * Prims.string) Prims.list = ((FStar_Syntax_Const.op_Negation, "not"))::((FStar_Syntax_Const.op_Minus, "-"))::((FStar_Syntax_Const.not_lid, "~"))::[]


let is_prim_op = (fun ps f -> (match (f.FStar_Syntax_Syntax.n) with
| FStar_Syntax_Syntax.Tm_fvar (fv) -> begin
(FStar_All.pipe_right ps (FStar_Util.for_some (FStar_Syntax_Syntax.fv_eq_lid fv)))
end
| _39_23 -> begin
false
end))


let get_lid = (fun f -> (match (f.FStar_Syntax_Syntax.n) with
| FStar_Syntax_Syntax.Tm_fvar (fv) -> begin
fv.FStar_Syntax_Syntax.fv_name.FStar_Syntax_Syntax.v
end
| _39_28 -> begin
(FStar_All.failwith "get_lid")
end))


let is_infix_prim_op : FStar_Syntax_Syntax.term  ->  Prims.bool = (fun e -> (is_prim_op (Prims.fst (FStar_List.split infix_prim_ops)) e))


let is_unary_prim_op : FStar_Syntax_Syntax.term  ->  Prims.bool = (fun e -> (is_prim_op (Prims.fst (FStar_List.split unary_prim_ops)) e))


let quants : (FStar_Ident.lident * Prims.string) Prims.list = ((FStar_Syntax_Const.forall_lid, "forall"))::((FStar_Syntax_Const.exists_lid, "exists"))::[]


type exp =
FStar_Syntax_Syntax.term


let is_b2t : FStar_Syntax_Syntax.typ  ->  Prims.bool = (fun t -> (is_prim_op ((FStar_Syntax_Const.b2t_lid)::[]) t))


let is_quant : FStar_Syntax_Syntax.typ  ->  Prims.bool = (fun t -> (is_prim_op (Prims.fst (FStar_List.split quants)) t))


let is_ite : FStar_Syntax_Syntax.typ  ->  Prims.bool = (fun t -> (is_prim_op ((FStar_Syntax_Const.ite_lid)::[]) t))


let is_lex_cons : exp  ->  Prims.bool = (fun f -> (is_prim_op ((FStar_Syntax_Const.lexcons_lid)::[]) f))


let is_lex_top : exp  ->  Prims.bool = (fun f -> (is_prim_op ((FStar_Syntax_Const.lextop_lid)::[]) f))


let is_inr = (fun _39_1 -> (match (_39_1) with
| FStar_Util.Inl (_39_38) -> begin
false
end
| FStar_Util.Inr (_39_41) -> begin
true
end))


let filter_imp = (fun a -> (FStar_All.pipe_right a (FStar_List.filter (fun _39_2 -> (match (_39_2) with
| (_39_46, Some (FStar_Syntax_Syntax.Implicit (_39_48))) -> begin
false
end
| _39_53 -> begin
true
end)))))


let rec reconstruct_lex : exp  ->  (FStar_Syntax_Syntax.term', FStar_Syntax_Syntax.term') FStar_Syntax_Syntax.syntax Prims.list Prims.option = (fun e -> (match ((let _128_35 = (FStar_Syntax_Subst.compress e)
in _128_35.FStar_Syntax_Syntax.n)) with
| FStar_Syntax_Syntax.Tm_app (f, args) -> begin
(

let args = (filter_imp args)
in (

let exps = (FStar_List.map Prims.fst args)
in if ((is_lex_cons f) && ((FStar_List.length exps) = 2)) then begin
(match ((let _128_36 = (FStar_List.nth exps 1)
in (reconstruct_lex _128_36))) with
| Some (xs) -> begin
(let _128_38 = (let _128_37 = (FStar_List.nth exps 0)
in (_128_37)::xs)
in Some (_128_38))
end
| None -> begin
None
end)
end else begin
None
end))
end
| _39_65 -> begin
if (is_lex_top e) then begin
Some ([])
end else begin
None
end
end))


let rec find = (fun f l -> (match (l) with
| [] -> begin
(FStar_All.failwith "blah")
end
| hd::tl -> begin
if (f hd) then begin
hd
end else begin
(find f tl)
end
end))


let find_lid : FStar_Ident.lident  ->  (FStar_Ident.lident * Prims.string) Prims.list  ->  Prims.string = (fun x xs -> (let _128_52 = (find (fun p -> (FStar_Ident.lid_equals x (Prims.fst p))) xs)
in (Prims.snd _128_52)))


let infix_prim_op_to_string = (fun e -> (let _128_54 = (get_lid e)
in (find_lid _128_54 infix_prim_ops)))


let unary_prim_op_to_string = (fun e -> (let _128_56 = (get_lid e)
in (find_lid _128_56 unary_prim_ops)))


let quant_to_string = (fun t -> (let _128_58 = (get_lid t)
in (find_lid _128_58 quants)))


let rec sli : FStar_Ident.lident  ->  Prims.string = (fun l -> if (FStar_Options.print_real_names ()) then begin
l.FStar_Ident.str
end else begin
l.FStar_Ident.ident.FStar_Ident.idText
end)


let const_to_string : FStar_Const.sconst  ->  Prims.string = (fun x -> (match (x) with
| FStar_Const.Const_effect -> begin
"Effect"
end
| FStar_Const.Const_unit -> begin
"()"
end
| FStar_Const.Const_bool (b) -> begin
if b then begin
"true"
end else begin
"false"
end
end
| FStar_Const.Const_float (x) -> begin
(FStar_Util.string_of_float x)
end
| FStar_Const.Const_string (bytes, _39_89) -> begin
(FStar_Util.format1 "\"%s\"" (FStar_Util.string_of_bytes bytes))
end
| FStar_Const.Const_bytearray (_39_93) -> begin
"<bytearray>"
end
| FStar_Const.Const_int (x, _39_97) -> begin
x
end
| FStar_Const.Const_char (c) -> begin
(FStar_Util.string_of_char c)
end
| FStar_Const.Const_range (r) -> begin
(FStar_Range.string_of_range r)
end))


let lbname_to_string : FStar_Syntax_Syntax.lbname  ->  Prims.string = (fun _39_3 -> (match (_39_3) with
| FStar_Util.Inl (l) -> begin
(bv_to_string l)
end
| FStar_Util.Inr (l) -> begin
(lid_to_string l.FStar_Syntax_Syntax.fv_name.FStar_Syntax_Syntax.v)
end))


let tag_of_term : FStar_Syntax_Syntax.term  ->  Prims.string = (fun t -> (match (t.FStar_Syntax_Syntax.n) with
| FStar_Syntax_Syntax.Tm_bvar (x) -> begin
(let _128_67 = (db_to_string x)
in (Prims.strcat "Tm_bvar: " _128_67))
end
| FStar_Syntax_Syntax.Tm_name (x) -> begin
(let _128_68 = (nm_to_string x)
in (Prims.strcat "Tm_name: " _128_68))
end
| FStar_Syntax_Syntax.Tm_fvar (x) -> begin
(let _128_69 = (lid_to_string x.FStar_Syntax_Syntax.fv_name.FStar_Syntax_Syntax.v)
in (Prims.strcat "Tm_fvar: " _128_69))
end
| FStar_Syntax_Syntax.Tm_uinst (_39_117) -> begin
"Tm_uinst"
end
| FStar_Syntax_Syntax.Tm_constant (_39_120) -> begin
"Tm_constant"
end
| FStar_Syntax_Syntax.Tm_type (_39_123) -> begin
"Tm_type"
end
| FStar_Syntax_Syntax.Tm_abs (_39_126) -> begin
"Tm_abs"
end
| FStar_Syntax_Syntax.Tm_arrow (_39_129) -> begin
"Tm_arrow"
end
| FStar_Syntax_Syntax.Tm_refine (_39_132) -> begin
"Tm_refine"
end
| FStar_Syntax_Syntax.Tm_app (_39_135) -> begin
"Tm_app"
end
| FStar_Syntax_Syntax.Tm_match (_39_138) -> begin
"Tm_match"
end
| FStar_Syntax_Syntax.Tm_ascribed (_39_141) -> begin
"Tm_ascribed"
end
| FStar_Syntax_Syntax.Tm_let (_39_144) -> begin
"Tm_let"
end
| FStar_Syntax_Syntax.Tm_uvar (_39_147) -> begin
"Tm_uvar"
end
| FStar_Syntax_Syntax.Tm_delayed (_39_150, m) -> begin
(match ((FStar_ST.read m)) with
| None -> begin
"Tm_delayed"
end
| Some (_39_156) -> begin
"Tm_delayed-resolved"
end)
end
| FStar_Syntax_Syntax.Tm_meta (_39_159) -> begin
"Tm_meta"
end
| FStar_Syntax_Syntax.Tm_unknown -> begin
"Tm_unknown"
end))


let uvar_to_string = (fun u -> if (FStar_Options.hide_uvar_nums ()) then begin
"?"
end else begin
(let _128_74 = (let _128_73 = (FStar_Unionfind.uvar_id u)
in (FStar_All.pipe_right _128_73 FStar_Util.string_of_int))
in (Prims.strcat "?" _128_74))
end)


let rec univ_to_string : FStar_Syntax_Syntax.universe  ->  Prims.string = (fun u -> (match ((FStar_Syntax_Subst.compress_univ u)) with
| FStar_Syntax_Syntax.U_unif (u) -> begin
(uvar_to_string u)
end
| FStar_Syntax_Syntax.U_name (x) -> begin
x.FStar_Ident.idText
end
| FStar_Syntax_Syntax.U_bvar (x) -> begin
(let _128_77 = (FStar_Util.string_of_int x)
in (Prims.strcat "@" _128_77))
end
| FStar_Syntax_Syntax.U_zero -> begin
"0"
end
| FStar_Syntax_Syntax.U_succ (u) -> begin
(let _128_78 = (univ_to_string u)
in (FStar_Util.format1 "(S %s)" _128_78))
end
| FStar_Syntax_Syntax.U_max (us) -> begin
(let _128_80 = (let _128_79 = (FStar_List.map univ_to_string us)
in (FStar_All.pipe_right _128_79 (FStar_String.concat ", ")))
in (FStar_Util.format1 "(max %s)" _128_80))
end
| FStar_Syntax_Syntax.U_unknown -> begin
"unknown"
end))


let univs_to_string : FStar_Syntax_Syntax.universe Prims.list  ->  Prims.string = (fun us -> (let _128_83 = (FStar_List.map univ_to_string us)
in (FStar_All.pipe_right _128_83 (FStar_String.concat ", "))))


let univ_names_to_string : FStar_Ident.ident Prims.list  ->  Prims.string = (fun us -> (let _128_87 = (FStar_List.map (fun x -> x.FStar_Ident.idText) us)
in (FStar_All.pipe_right _128_87 (FStar_String.concat ", "))))


let qual_to_string : FStar_Syntax_Syntax.qualifier  ->  Prims.string = (fun _39_4 -> (match (_39_4) with
| FStar_Syntax_Syntax.Assumption -> begin
"assume"
end
| FStar_Syntax_Syntax.New -> begin
"new"
end
| FStar_Syntax_Syntax.Private -> begin
"private"
end
| FStar_Syntax_Syntax.Inline -> begin
"inline"
end
| FStar_Syntax_Syntax.Unfoldable -> begin
"unfoldable"
end
| FStar_Syntax_Syntax.Irreducible -> begin
"irreducible"
end
| FStar_Syntax_Syntax.Abstract -> begin
"abstract"
end
| FStar_Syntax_Syntax.Logic -> begin
"logic"
end
| FStar_Syntax_Syntax.TotalEffect -> begin
"total"
end
| FStar_Syntax_Syntax.Discriminator (l) -> begin
(let _128_90 = (lid_to_string l)
in (FStar_Util.format1 "(Discriminator %s)" _128_90))
end
| FStar_Syntax_Syntax.Projector (l, x) -> begin
(let _128_91 = (lid_to_string l)
in (FStar_Util.format2 "(Projector %s %s)" _128_91 x.FStar_Ident.idText))
end
| FStar_Syntax_Syntax.RecordType (fns) -> begin
(let _128_93 = (let _128_92 = (FStar_All.pipe_right fns (FStar_List.map lid_to_string))
in (FStar_All.pipe_right _128_92 (FStar_String.concat ", ")))
in (FStar_Util.format1 "(RecordType %s)" _128_93))
end
| FStar_Syntax_Syntax.RecordConstructor (fns) -> begin
(let _128_95 = (let _128_94 = (FStar_All.pipe_right fns (FStar_List.map lid_to_string))
in (FStar_All.pipe_right _128_94 (FStar_String.concat ", ")))
in (FStar_Util.format1 "(RecordConstructor %s)" _128_95))
end
| FStar_Syntax_Syntax.ExceptionConstructor -> begin
"ExceptionConstructor"
end
| FStar_Syntax_Syntax.HasMaskedEffect -> begin
"HasMaskedEffect"
end
| FStar_Syntax_Syntax.Effect -> begin
"Effect"
end))


let quals_to_string : FStar_Syntax_Syntax.qualifier Prims.list  ->  Prims.string = (fun quals -> (match (quals) with
| [] -> begin
""
end
| _39_205 -> begin
(let _128_99 = (let _128_98 = (FStar_All.pipe_right quals (FStar_List.map qual_to_string))
in (FStar_All.pipe_right _128_98 (FStar_String.concat " ")))
in (Prims.strcat _128_99 " "))
end))


let rec term_to_string : FStar_Syntax_Syntax.term  ->  Prims.string = (fun x -> (

let x = (FStar_Syntax_Subst.compress x)
in (match (x.FStar_Syntax_Syntax.n) with
| FStar_Syntax_Syntax.Tm_delayed (_39_209) -> begin
(FStar_All.failwith "impossible")
end
| FStar_Syntax_Syntax.Tm_app (_39_212, []) -> begin
(FStar_All.failwith "Empty args!")
end
| FStar_Syntax_Syntax.Tm_meta (t, FStar_Syntax_Syntax.Meta_pattern (ps)) -> begin
(

let pats = (let _128_124 = (FStar_All.pipe_right ps (FStar_List.map (fun args -> (let _128_123 = (FStar_All.pipe_right args (FStar_List.map (fun _39_225 -> (match (_39_225) with
| (t, _39_224) -> begin
(term_to_string t)
end))))
in (FStar_All.pipe_right _128_123 (FStar_String.concat "; "))))))
in (FStar_All.pipe_right _128_124 (FStar_String.concat "\\/")))
in (let _128_125 = (term_to_string t)
in (FStar_Util.format2 "{:pattern %s} %s" pats _128_125)))
end
| FStar_Syntax_Syntax.Tm_meta (t, _39_229) -> begin
(term_to_string t)
end
| FStar_Syntax_Syntax.Tm_bvar (x) -> begin
(db_to_string x)
end
| FStar_Syntax_Syntax.Tm_name (x) -> begin
(nm_to_string x)
end
| FStar_Syntax_Syntax.Tm_fvar (f) -> begin
(fv_to_string f)
end
| FStar_Syntax_Syntax.Tm_uvar (u, _39_240) -> begin
(uvar_to_string u)
end
| FStar_Syntax_Syntax.Tm_constant (c) -> begin
(const_to_string c)
end
| FStar_Syntax_Syntax.Tm_type (u) -> begin
if (FStar_Options.print_universes ()) then begin
(let _128_126 = (univ_to_string u)
in (FStar_Util.format1 "Type(%s)" _128_126))
end else begin
"Type"
end
end
| FStar_Syntax_Syntax.Tm_arrow (bs, c) -> begin
(let _128_128 = (binders_to_string " -> " bs)
in (let _128_127 = (comp_to_string c)
in (FStar_Util.format2 "(%s -> %s)" _128_128 _128_127)))
end
| FStar_Syntax_Syntax.Tm_abs (bs, t2, lc) -> begin
(match (lc) with
| Some (FStar_Util.Inl (l)) when (FStar_Options.print_implicits ()) -> begin
(let _128_132 = (binders_to_string " " bs)
in (let _128_131 = (term_to_string t2)
in (let _128_130 = (let _128_129 = (l.FStar_Syntax_Syntax.comp ())
in (FStar_All.pipe_left comp_to_string _128_129))
in (FStar_Util.format3 "(fun %s -> (%s $$ %s))" _128_132 _128_131 _128_130))))
end
| _39_260 -> begin
(let _128_134 = (binders_to_string " " bs)
in (let _128_133 = (term_to_string t2)
in (FStar_Util.format2 "(fun %s -> %s)" _128_134 _128_133)))
end)
end
| FStar_Syntax_Syntax.Tm_refine (xt, f) -> begin
(let _128_137 = (bv_to_string xt)
in (let _128_136 = (FStar_All.pipe_right xt.FStar_Syntax_Syntax.sort term_to_string)
in (let _128_135 = (FStar_All.pipe_right f formula_to_string)
in (FStar_Util.format3 "(%s:%s{%s})" _128_137 _128_136 _128_135))))
end
| FStar_Syntax_Syntax.Tm_app (t, args) -> begin
(let _128_139 = (term_to_string t)
in (let _128_138 = (args_to_string args)
in (FStar_Util.format2 "(%s %s)" _128_139 _128_138)))
end
| FStar_Syntax_Syntax.Tm_let (lbs, e) -> begin
(let _128_141 = (lbs_to_string [] lbs)
in (let _128_140 = (term_to_string e)
in (FStar_Util.format2 "%s\nin\n%s" _128_141 _128_140)))
end
| FStar_Syntax_Syntax.Tm_ascribed (e, FStar_Util.Inl (t), _39_277) -> begin
(let _128_143 = (term_to_string e)
in (let _128_142 = (term_to_string t)
in (FStar_Util.format2 "(%s : %s)" _128_143 _128_142)))
end
| FStar_Syntax_Syntax.Tm_ascribed (e, FStar_Util.Inr (c), _39_284) -> begin
(let _128_145 = (term_to_string e)
in (let _128_144 = (comp_to_string c)
in (FStar_Util.format2 "(%s : %s)" _128_145 _128_144)))
end
| FStar_Syntax_Syntax.Tm_match (head, branches) -> begin
(let _128_153 = (term_to_string head)
in (let _128_152 = (let _128_151 = (FStar_All.pipe_right branches (FStar_List.map (fun _39_294 -> (match (_39_294) with
| (p, wopt, e) -> begin
(let _128_150 = (FStar_All.pipe_right p pat_to_string)
in (let _128_149 = (match (wopt) with
| None -> begin
""
end
| Some (w) -> begin
(let _128_147 = (FStar_All.pipe_right w term_to_string)
in (FStar_Util.format1 "when %s" _128_147))
end)
in (let _128_148 = (FStar_All.pipe_right e term_to_string)
in (FStar_Util.format3 "%s %s -> %s" _128_150 _128_149 _128_148))))
end))))
in (FStar_Util.concat_l "\n\t|" _128_151))
in (FStar_Util.format2 "(match %s with\n\t| %s)" _128_153 _128_152)))
end
| FStar_Syntax_Syntax.Tm_uinst (t, us) -> begin
if (FStar_Options.print_universes ()) then begin
(let _128_155 = (term_to_string t)
in (let _128_154 = (univs_to_string us)
in (FStar_Util.format2 "%s<%s>" _128_155 _128_154)))
end else begin
(term_to_string t)
end
end
| _39_303 -> begin
(tag_of_term x)
end)))
and pat_to_string : FStar_Syntax_Syntax.pat  ->  Prims.string = (fun x -> (match (x.FStar_Syntax_Syntax.v) with
| FStar_Syntax_Syntax.Pat_cons (l, pats) -> begin
(let _128_160 = (fv_to_string l)
in (let _128_159 = (let _128_158 = (FStar_List.map (fun _39_311 -> (match (_39_311) with
| (x, b) -> begin
(

let p = (pat_to_string x)
in if b then begin
(Prims.strcat "#" p)
end else begin
p
end)
end)) pats)
in (FStar_All.pipe_right _128_158 (FStar_String.concat " ")))
in (FStar_Util.format2 "(%s %s)" _128_160 _128_159)))
end
| FStar_Syntax_Syntax.Pat_dot_term (x, _39_315) -> begin
(let _128_161 = (bv_to_string x)
in (FStar_Util.format1 ".%s" _128_161))
end
| FStar_Syntax_Syntax.Pat_var (x) -> begin
(bv_to_string x)
end
| FStar_Syntax_Syntax.Pat_constant (c) -> begin
(const_to_string c)
end
| FStar_Syntax_Syntax.Pat_wild (x) -> begin
if (FStar_Options.print_real_names ()) then begin
(let _128_162 = (bv_to_string x)
in (Prims.strcat "Pat_wild " _128_162))
end else begin
"_"
end
end
| FStar_Syntax_Syntax.Pat_disj (ps) -> begin
(let _128_163 = (FStar_List.map pat_to_string ps)
in (FStar_Util.concat_l " | " _128_163))
end))
and lbs_to_string : FStar_Syntax_Syntax.qualifier Prims.list  ->  FStar_Syntax_Syntax.letbindings  ->  Prims.string = (fun quals lbs -> (

let lbs = if (FStar_Options.print_universes ()) then begin
(let _128_169 = (FStar_All.pipe_right (Prims.snd lbs) (FStar_List.map (fun lb -> (

let _39_331 = (let _128_167 = (FStar_Syntax_Util.mk_conj lb.FStar_Syntax_Syntax.lbtyp lb.FStar_Syntax_Syntax.lbdef)
in (FStar_Syntax_Subst.open_univ_vars lb.FStar_Syntax_Syntax.lbunivs _128_167))
in (match (_39_331) with
| (us, td) -> begin
(

let _39_349 = (match ((let _128_168 = (FStar_Syntax_Subst.compress td)
in _128_168.FStar_Syntax_Syntax.n)) with
| FStar_Syntax_Syntax.Tm_app (_39_333, (t, _39_340)::(d, _39_336)::[]) -> begin
(t, d)
end
| _39_346 -> begin
(FStar_All.failwith "Impossibe")
end)
in (match (_39_349) with
| (t, d) -> begin
(

let _39_350 = lb
in {FStar_Syntax_Syntax.lbname = _39_350.FStar_Syntax_Syntax.lbname; FStar_Syntax_Syntax.lbunivs = us; FStar_Syntax_Syntax.lbtyp = t; FStar_Syntax_Syntax.lbeff = _39_350.FStar_Syntax_Syntax.lbeff; FStar_Syntax_Syntax.lbdef = d})
end))
end)))))
in ((Prims.fst lbs), _128_169))
end else begin
lbs
end
in (let _128_179 = (quals_to_string quals)
in (let _128_178 = (let _128_177 = (FStar_All.pipe_right (Prims.snd lbs) (FStar_List.map (fun lb -> (let _128_176 = (lbname_to_string lb.FStar_Syntax_Syntax.lbname)
in (let _128_175 = if (FStar_Options.print_universes ()) then begin
(let _128_172 = (let _128_171 = (univ_names_to_string lb.FStar_Syntax_Syntax.lbunivs)
in (Prims.strcat "<" _128_171))
in (Prims.strcat _128_172 ">"))
end else begin
""
end
in (let _128_174 = (term_to_string lb.FStar_Syntax_Syntax.lbtyp)
in (let _128_173 = (FStar_All.pipe_right lb.FStar_Syntax_Syntax.lbdef term_to_string)
in (FStar_Util.format4 "%s %s : %s = %s" _128_176 _128_175 _128_174 _128_173))))))))
in (FStar_Util.concat_l "\n and " _128_177))
in (FStar_Util.format3 "%slet %s %s" _128_179 (if (Prims.fst lbs) then begin
"rec"
end else begin
""
end) _128_178)))))
and lcomp_to_string : FStar_Syntax_Syntax.lcomp  ->  Prims.string = (fun lc -> (let _128_182 = (sli lc.FStar_Syntax_Syntax.eff_name)
in (let _128_181 = (term_to_string lc.FStar_Syntax_Syntax.res_typ)
in (FStar_Util.format2 "%s %s" _128_182 _128_181))))
and imp_to_string : Prims.string  ->  FStar_Syntax_Syntax.arg_qualifier Prims.option  ->  Prims.string = (fun s _39_5 -> (match (_39_5) with
| Some (FStar_Syntax_Syntax.Implicit (false)) -> begin
(Prims.strcat "#" s)
end
| Some (FStar_Syntax_Syntax.Implicit (true)) -> begin
(Prims.strcat "#." s)
end
| Some (FStar_Syntax_Syntax.Equality) -> begin
(Prims.strcat "$" s)
end
| _39_366 -> begin
s
end))
and binder_to_string' : Prims.bool  ->  (FStar_Syntax_Syntax.bv * FStar_Syntax_Syntax.arg_qualifier Prims.option)  ->  Prims.string = (fun is_arrow b -> (

let _39_371 = b
in (match (_39_371) with
| (a, imp) -> begin
if (FStar_Syntax_Syntax.is_null_binder b) then begin
(let _128_187 = (term_to_string a.FStar_Syntax_Syntax.sort)
in (Prims.strcat "_:" _128_187))
end else begin
if ((not (is_arrow)) && (not ((FStar_Options.print_bound_var_types ())))) then begin
(let _128_188 = (nm_to_string a)
in (imp_to_string _128_188 imp))
end else begin
(let _128_192 = (let _128_191 = (let _128_189 = (nm_to_string a)
in (Prims.strcat _128_189 ":"))
in (let _128_190 = (term_to_string a.FStar_Syntax_Syntax.sort)
in (Prims.strcat _128_191 _128_190)))
in (imp_to_string _128_192 imp))
end
end
end)))
and binder_to_string : (FStar_Syntax_Syntax.bv * FStar_Syntax_Syntax.arg_qualifier Prims.option)  ->  Prims.string = (fun b -> (binder_to_string' false b))
and arrow_binder_to_string : (FStar_Syntax_Syntax.bv * FStar_Syntax_Syntax.arg_qualifier Prims.option)  ->  Prims.string = (fun b -> (binder_to_string' true b))
and binders_to_string : Prims.string  ->  FStar_Syntax_Syntax.binders  ->  Prims.string = (fun sep bs -> (

let bs = if (FStar_Options.print_implicits ()) then begin
bs
end else begin
(filter_imp bs)
end
in if (sep = " -> ") then begin
(let _128_197 = (FStar_All.pipe_right bs (FStar_List.map arrow_binder_to_string))
in (FStar_All.pipe_right _128_197 (FStar_String.concat sep)))
end else begin
(let _128_198 = (FStar_All.pipe_right bs (FStar_List.map binder_to_string))
in (FStar_All.pipe_right _128_198 (FStar_String.concat sep)))
end))
and arg_to_string : (FStar_Syntax_Syntax.term * FStar_Syntax_Syntax.arg_qualifier Prims.option)  ->  Prims.string = (fun _39_6 -> (match (_39_6) with
| (a, imp) -> begin
(let _128_200 = (term_to_string a)
in (imp_to_string _128_200 imp))
end))
and args_to_string : FStar_Syntax_Syntax.args  ->  Prims.string = (fun args -> (

let args = if (FStar_Options.print_implicits ()) then begin
args
end else begin
(filter_imp args)
end
in (let _128_202 = (FStar_All.pipe_right args (FStar_List.map arg_to_string))
in (FStar_All.pipe_right _128_202 (FStar_String.concat " ")))))
and comp_to_string : FStar_Syntax_Syntax.comp  ->  Prims.string = (fun c -> (match (c.FStar_Syntax_Syntax.n) with
| FStar_Syntax_Syntax.Total (t) -> begin
(match ((let _128_204 = (FStar_Syntax_Subst.compress t)
in _128_204.FStar_Syntax_Syntax.n)) with
| FStar_Syntax_Syntax.Tm_type (_39_387) when (not ((FStar_Options.print_implicits ()))) -> begin
(term_to_string t)
end
| _39_390 -> begin
(let _128_205 = (term_to_string t)
in (FStar_Util.format1 "Tot %s" _128_205))
end)
end
| FStar_Syntax_Syntax.GTotal (t) -> begin
(match ((let _128_206 = (FStar_Syntax_Subst.compress t)
in _128_206.FStar_Syntax_Syntax.n)) with
| FStar_Syntax_Syntax.Tm_type (_39_394) when (not ((FStar_Options.print_implicits ()))) -> begin
(term_to_string t)
end
| _39_397 -> begin
(let _128_207 = (term_to_string t)
in (FStar_Util.format1 "GTot %s" _128_207))
end)
end
| FStar_Syntax_Syntax.Comp (c) -> begin
(

let basic = if ((FStar_All.pipe_right c.FStar_Syntax_Syntax.flags (FStar_Util.for_some (fun _39_7 -> (match (_39_7) with
| FStar_Syntax_Syntax.TOTAL -> begin
true
end
| _39_403 -> begin
false
end)))) && (not ((FStar_Options.print_effect_args ())))) then begin
(let _128_209 = (term_to_string c.FStar_Syntax_Syntax.result_typ)
in (FStar_Util.format1 "Tot %s" _128_209))
end else begin
if (((not ((FStar_Options.print_effect_args ()))) && (not ((FStar_Options.print_implicits ())))) && (FStar_Ident.lid_equals c.FStar_Syntax_Syntax.effect_name FStar_Syntax_Const.effect_ML_lid)) then begin
(term_to_string c.FStar_Syntax_Syntax.result_typ)
end else begin
if ((not ((FStar_Options.print_effect_args ()))) && (FStar_All.pipe_right c.FStar_Syntax_Syntax.flags (FStar_Util.for_some (fun _39_8 -> (match (_39_8) with
| FStar_Syntax_Syntax.MLEFFECT -> begin
true
end
| _39_407 -> begin
false
end))))) then begin
(let _128_211 = (term_to_string c.FStar_Syntax_Syntax.result_typ)
in (FStar_Util.format1 "ALL %s" _128_211))
end else begin
if (FStar_Options.print_effect_args ()) then begin
(let _128_215 = (sli c.FStar_Syntax_Syntax.effect_name)
in (let _128_214 = (term_to_string c.FStar_Syntax_Syntax.result_typ)
in (let _128_213 = (let _128_212 = (FStar_All.pipe_right c.FStar_Syntax_Syntax.effect_args (FStar_List.map arg_to_string))
in (FStar_All.pipe_right _128_212 (FStar_String.concat ", ")))
in (FStar_Util.format3 "%s (%s) %s" _128_215 _128_214 _128_213))))
end else begin
(let _128_217 = (sli c.FStar_Syntax_Syntax.effect_name)
in (let _128_216 = (term_to_string c.FStar_Syntax_Syntax.result_typ)
in (FStar_Util.format2 "%s (%s)" _128_217 _128_216)))
end
end
end
end
in (

let dec = (let _128_221 = (FStar_All.pipe_right c.FStar_Syntax_Syntax.flags (FStar_List.collect (fun _39_9 -> (match (_39_9) with
| FStar_Syntax_Syntax.DECREASES (e) -> begin
(let _128_220 = (let _128_219 = (term_to_string e)
in (FStar_Util.format1 " (decreases %s)" _128_219))
in (_128_220)::[])
end
| _39_413 -> begin
[]
end))))
in (FStar_All.pipe_right _128_221 (FStar_String.concat " ")))
in (FStar_Util.format2 "%s%s" basic dec)))
end))
and formula_to_string : FStar_Syntax_Syntax.term  ->  Prims.string = (fun phi -> (term_to_string phi))


let tscheme_to_string : (FStar_Ident.ident Prims.list * FStar_Syntax_Syntax.term)  ->  Prims.string = (fun _39_418 -> (match (_39_418) with
| (us, t) -> begin
(let _128_226 = (univ_names_to_string us)
in (let _128_225 = (term_to_string t)
in (FStar_Util.format2 "<%s> %s" _128_226 _128_225)))
end))


let eff_decl_to_string : FStar_Syntax_Syntax.eff_decl  ->  Prims.string = (fun ed -> (let _128_262 = (let _128_261 = (lid_to_string ed.FStar_Syntax_Syntax.mname)
in (let _128_260 = (let _128_259 = (univ_names_to_string ed.FStar_Syntax_Syntax.univs)
in (let _128_258 = (let _128_257 = (binders_to_string " " ed.FStar_Syntax_Syntax.binders)
in (let _128_256 = (let _128_255 = (term_to_string ed.FStar_Syntax_Syntax.signature)
in (let _128_254 = (let _128_253 = (tscheme_to_string ed.FStar_Syntax_Syntax.ret)
in (let _128_252 = (let _128_251 = (tscheme_to_string ed.FStar_Syntax_Syntax.bind_wp)
in (let _128_250 = (let _128_249 = (tscheme_to_string ed.FStar_Syntax_Syntax.bind_wlp)
in (let _128_248 = (let _128_247 = (tscheme_to_string ed.FStar_Syntax_Syntax.if_then_else)
in (let _128_246 = (let _128_245 = (tscheme_to_string ed.FStar_Syntax_Syntax.ite_wp)
in (let _128_244 = (let _128_243 = (tscheme_to_string ed.FStar_Syntax_Syntax.ite_wlp)
in (let _128_242 = (let _128_241 = (tscheme_to_string ed.FStar_Syntax_Syntax.wp_binop)
in (let _128_240 = (let _128_239 = (tscheme_to_string ed.FStar_Syntax_Syntax.wp_as_type)
in (let _128_238 = (let _128_237 = (tscheme_to_string ed.FStar_Syntax_Syntax.close_wp)
in (let _128_236 = (let _128_235 = (tscheme_to_string ed.FStar_Syntax_Syntax.assert_p)
in (let _128_234 = (let _128_233 = (tscheme_to_string ed.FStar_Syntax_Syntax.assume_p)
in (let _128_232 = (let _128_231 = (tscheme_to_string ed.FStar_Syntax_Syntax.null_wp)
in (let _128_230 = (let _128_229 = (tscheme_to_string ed.FStar_Syntax_Syntax.trivial)
in (_128_229)::[])
in (_128_231)::_128_230))
in (_128_233)::_128_232))
in (_128_235)::_128_234))
in (_128_237)::_128_236))
in (_128_239)::_128_238))
in (_128_241)::_128_240))
in (_128_243)::_128_242))
in (_128_245)::_128_244))
in (_128_247)::_128_246))
in (_128_249)::_128_248))
in (_128_251)::_128_250))
in (_128_253)::_128_252))
in (_128_255)::_128_254))
in (_128_257)::_128_256))
in (_128_259)::_128_258))
in (_128_261)::_128_260))
in (FStar_Util.format "new_effect { %s<%s> %s : %s \n\tret         = %s\n; bind_wp     = %s\n; bind_wlp    = %s\n; if_then_else= %s\n; ite_wp      = %s\n; ite_wlp     = %s\n; wp_binop    = %s\n; wp_as_type  = %s\n; close_wp    = %s\n; assert_p    = %s\n; assume_p    = %s\n; null_wp     = %s\n; trivial     = %s}\n" _128_262)))


let rec sigelt_to_string : FStar_Syntax_Syntax.sigelt  ->  Prims.string = (fun x -> (match (x) with
| FStar_Syntax_Syntax.Sig_pragma (FStar_Syntax_Syntax.ResetOptions (None), _39_424) -> begin
"#reset-options"
end
| FStar_Syntax_Syntax.Sig_pragma (FStar_Syntax_Syntax.ResetOptions (Some (s)), _39_431) -> begin
(FStar_Util.format1 "#reset-options \"%s\"" s)
end
| FStar_Syntax_Syntax.Sig_pragma (FStar_Syntax_Syntax.SetOptions (s), _39_437) -> begin
(FStar_Util.format1 "#set-options \"%s\"" s)
end
| FStar_Syntax_Syntax.Sig_inductive_typ (lid, univs, tps, k, _39_445, _39_447, quals, _39_450) -> begin
(let _128_267 = (quals_to_string quals)
in (let _128_266 = (binders_to_string " " tps)
in (let _128_265 = (term_to_string k)
in (FStar_Util.format4 "%s type %s %s : %s" _128_267 lid.FStar_Ident.str _128_266 _128_265))))
end
| FStar_Syntax_Syntax.Sig_datacon (lid, univs, t, _39_457, _39_459, _39_461, _39_463, _39_465) -> begin
if (FStar_Options.print_universes ()) then begin
(

let _39_470 = (FStar_Syntax_Subst.open_univ_vars univs t)
in (match (_39_470) with
| (univs, t) -> begin
(let _128_269 = (univ_names_to_string univs)
in (let _128_268 = (term_to_string t)
in (FStar_Util.format3 "datacon<%s> %s : %s" _128_269 lid.FStar_Ident.str _128_268)))
end))
end else begin
(let _128_270 = (term_to_string t)
in (FStar_Util.format2 "datacon %s : %s" lid.FStar_Ident.str _128_270))
end
end
| FStar_Syntax_Syntax.Sig_declare_typ (lid, univs, t, quals, _39_476) -> begin
(

let _39_481 = (FStar_Syntax_Subst.open_univ_vars univs t)
in (match (_39_481) with
| (univs, t) -> begin
(let _128_274 = (quals_to_string quals)
in (let _128_273 = if (FStar_Options.print_universes ()) then begin
(let _128_271 = (univ_names_to_string univs)
in (FStar_Util.format1 "<%s>" _128_271))
end else begin
""
end
in (let _128_272 = (term_to_string t)
in (FStar_Util.format4 "%s val %s %s : %s" _128_274 lid.FStar_Ident.str _128_273 _128_272))))
end))
end
| FStar_Syntax_Syntax.Sig_assume (lid, f, _39_485, _39_487) -> begin
(let _128_275 = (term_to_string f)
in (FStar_Util.format2 "val %s : %s" lid.FStar_Ident.str _128_275))
end
| FStar_Syntax_Syntax.Sig_let (lbs, _39_492, _39_494, qs) -> begin
(lbs_to_string qs lbs)
end
| FStar_Syntax_Syntax.Sig_main (e, _39_500) -> begin
(let _128_276 = (term_to_string e)
in (FStar_Util.format1 "let _ = %s" _128_276))
end
| FStar_Syntax_Syntax.Sig_bundle (ses, _39_505, _39_507, _39_509) -> begin
(let _128_277 = (FStar_List.map sigelt_to_string ses)
in (FStar_All.pipe_right _128_277 (FStar_String.concat "\n")))
end
| FStar_Syntax_Syntax.Sig_new_effect (ed, _39_514) -> begin
(eff_decl_to_string ed)
end
| FStar_Syntax_Syntax.Sig_sub_effect (se, r) -> begin
(

let _39_523 = (FStar_Syntax_Subst.open_univ_vars (Prims.fst se.FStar_Syntax_Syntax.lift) (Prims.snd se.FStar_Syntax_Syntax.lift))
in (match (_39_523) with
| (us, t) -> begin
(let _128_281 = (lid_to_string se.FStar_Syntax_Syntax.source)
in (let _128_280 = (lid_to_string se.FStar_Syntax_Syntax.target)
in (let _128_279 = (univ_names_to_string us)
in (let _128_278 = (term_to_string t)
in (FStar_Util.format4 "sub_effect %s ~> %s : <%s> %s" _128_281 _128_280 _128_279 _128_278)))))
end))
end
| FStar_Syntax_Syntax.Sig_effect_abbrev (l, univs, tps, c, _39_529, _39_531) -> begin
if (FStar_Options.print_universes ()) then begin
(

let _39_536 = (let _128_282 = (FStar_Syntax_Syntax.mk (FStar_Syntax_Syntax.Tm_arrow ((tps, c))) None FStar_Range.dummyRange)
in (FStar_Syntax_Subst.open_univ_vars univs _128_282))
in (match (_39_536) with
| (univs, t) -> begin
(

let _39_545 = (match ((let _128_283 = (FStar_Syntax_Subst.compress t)
in _128_283.FStar_Syntax_Syntax.n)) with
| FStar_Syntax_Syntax.Tm_arrow (bs, c) -> begin
(bs, c)
end
| _39_542 -> begin
(FStar_All.failwith "impossible")
end)
in (match (_39_545) with
| (tps, c) -> begin
(let _128_287 = (sli l)
in (let _128_286 = (univ_names_to_string univs)
in (let _128_285 = (binders_to_string " " tps)
in (let _128_284 = (comp_to_string c)
in (FStar_Util.format4 "effect %s<%s> %s = %s" _128_287 _128_286 _128_285 _128_284)))))
end))
end))
end else begin
(let _128_290 = (sli l)
in (let _128_289 = (binders_to_string " " tps)
in (let _128_288 = (comp_to_string c)
in (FStar_Util.format3 "effect %s %s = %s" _128_290 _128_289 _128_288))))
end
end))


let format_error : FStar_Range.range  ->  Prims.string  ->  Prims.string = (fun r msg -> (let _128_295 = (FStar_Range.string_of_range r)
in (FStar_Util.format2 "%s: %s\n" _128_295 msg)))


let rec sigelt_to_string_short : FStar_Syntax_Syntax.sigelt  ->  Prims.string = (fun x -> (match (x) with
| FStar_Syntax_Syntax.Sig_let ((_39_550, {FStar_Syntax_Syntax.lbname = lb; FStar_Syntax_Syntax.lbunivs = _39_557; FStar_Syntax_Syntax.lbtyp = t; FStar_Syntax_Syntax.lbeff = _39_554; FStar_Syntax_Syntax.lbdef = _39_552}::[]), _39_563, _39_565, _39_567) -> begin
(let _128_299 = (lbname_to_string lb)
in (let _128_298 = (term_to_string t)
in (FStar_Util.format2 "let %s : %s" _128_299 _128_298)))
end
| _39_571 -> begin
(let _128_302 = (let _128_301 = (FStar_Syntax_Util.lids_of_sigelt x)
in (FStar_All.pipe_right _128_301 (FStar_List.map (fun l -> l.FStar_Ident.str))))
in (FStar_All.pipe_right _128_302 (FStar_String.concat ", ")))
end))


let rec modul_to_string : FStar_Syntax_Syntax.modul  ->  Prims.string = (fun m -> (let _128_307 = (sli m.FStar_Syntax_Syntax.name)
in (let _128_306 = (let _128_305 = (FStar_List.map sigelt_to_string m.FStar_Syntax_Syntax.declarations)
in (FStar_All.pipe_right _128_305 (FStar_String.concat "\n")))
in (FStar_Util.format2 "module %s\n%s" _128_307 _128_306))))


let renaming_elt_to_string : FStar_Syntax_Syntax.renaming_subst  ->  Prims.string = (fun _39_10 -> (match (_39_10) with
| FStar_Syntax_Syntax.Index2Name (i, x) -> begin
(let _128_311 = (FStar_Util.string_of_int i)
in (let _128_310 = (bv_to_string x)
in (FStar_Util.format2 "Index2Name (%s, %s)" _128_311 _128_310)))
end
| FStar_Syntax_Syntax.Name2Index (x, i) -> begin
(let _128_313 = (bv_to_string x)
in (let _128_312 = (FStar_Util.string_of_int i)
in (FStar_Util.format2 "Name2Index (%s, %s)" _128_313 _128_312)))
end
| FStar_Syntax_Syntax.Name2Name (x, y) -> begin
(let _128_315 = (bv_to_string x)
in (let _128_314 = (bv_to_string y)
in (FStar_Util.format2 "Name2Name(%s, %s)" _128_315 _128_314)))
end
| FStar_Syntax_Syntax.Index2Index (i, j) -> begin
(let _128_317 = (FStar_Util.string_of_int i)
in (let _128_316 = (FStar_Util.string_of_int j)
in (FStar_Util.format2 "Index2Index (%d, %d)" _128_317 _128_316)))
end
| FStar_Syntax_Syntax.UIndex2UName (i, u) -> begin
(let _128_318 = (FStar_Util.string_of_int i)
in (FStar_Util.format2 "UIndex2Uname(%d, %s)" _128_318 u.FStar_Ident.idText))
end
| FStar_Syntax_Syntax.UName2UIndex (u, i) -> begin
(let _128_319 = (FStar_Util.string_of_int i)
in (FStar_Util.format2 "UName2UIndex (%s, %s)" u.FStar_Ident.idText _128_319))
end))


let renaming_to_string : FStar_Syntax_Syntax.renaming_subst Prims.list  ->  Prims.string = (fun r -> (let _128_323 = (let _128_322 = (FStar_All.pipe_right r (FStar_List.map renaming_elt_to_string))
in (FStar_All.pipe_right _128_322 (FStar_String.concat "; ")))
in (FStar_Util.format1 "Renaming[%s]" _128_323)))


let instantiation_elt_to_string : FStar_Syntax_Syntax.inst_subst  ->  Prims.string = (fun _39_11 -> (match (_39_11) with
| FStar_Syntax_Syntax.Name2Term (x, t) -> begin
(let _128_327 = (bv_to_string x)
in (let _128_326 = (term_to_string t)
in (FStar_Util.format2 "Name2Term(%s, %s)" _128_327 _128_326)))
end
| FStar_Syntax_Syntax.UName2Univ (un, u) -> begin
(let _128_328 = (univ_to_string u)
in (FStar_Util.format2 "UName2Univ(%s, %s)" un.FStar_Ident.idText _128_328))
end))


let instantiation_to_string : FStar_Syntax_Syntax.inst_subst Prims.list  ->  Prims.string = (fun i -> (let _128_332 = (let _128_331 = (FStar_All.pipe_right i (FStar_List.map instantiation_elt_to_string))
in (FStar_All.pipe_right _128_331 (FStar_String.concat "; ")))
in (FStar_Util.format1 "Instantiation[%s]" _128_332)))


let subst_to_string : FStar_Syntax_Syntax.subst_ts  ->  Prims.string = (fun s -> (FStar_Syntax_Subst.subst_to_string s))


let init : Prims.unit  ->  Prims.unit = (fun _39_611 -> (match (()) with
| () -> begin
(

let _39_612 = (FStar_ST.op_Colon_Equals FStar_Syntax_Subst.print_term' term_to_string)
in (

let _39_614 = (FStar_ST.op_Colon_Equals FStar_Syntax_Subst.print_univ' univ_to_string)
in (FStar_ST.op_Colon_Equals FStar_Syntax_Subst.bv_to_string' bv_to_string)))
end))




