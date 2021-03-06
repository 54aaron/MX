type op = Add | Sub | Mult | Div | Equal | Neq | Less | Leq
            | Greater | Geq | And | Or | Mxadd | Mxsub | Mxtimes | Mxscale

type uop = Neg | Not | Transpose

type typ = Int | Bool | Float | Void | String | Matrix of typ

type bind = typ * string 

type expr = Literal of int | Fliteral of string | BoolLit of bool
            | Id of string
            | Stringlit of string
            | Mx of int list list
            | Binop of expr * op * expr | Unop of uop * expr
            | Assign of string * expr
            | Plusassign of string * expr
            | Minusassign of string * expr
            | Timesassign of string * expr
            | Call of string * expr list
            | Noexpr

type stmt = Block of stmt list
            | Expr of expr
            | Return of expr
            | If of expr * stmt * stmt
            | For of expr * expr * expr * stmt
            | While of expr * stmt

type func_decl = {  typ : typ;
                    fname : string;
                    formals : bind list;
                    locals : bind list;
                    body : stmt list; }

type program = bind list * func_decl list

let string_of_op = function
    Add -> "+"
  | Sub -> "-"
  | Mult -> "*"
  | Div -> "/"
  | Equal -> "=="
  | Neq -> "!="
  | Less -> "<"
  | Leq -> "<="
  | Greater -> ">"
  | Geq -> ">="
  | And -> "&&"
  | Or -> "||"
  | Mxadd -> "+."
  | Mxscale -> "**."
  | Mxsub -> "-."
  | Mxtimes -> "*."

let string_of_uop = function
    Neg -> "-"
  | Not -> "!"
  | Transpose -> "'"

let rec string_of_expr = function
    Literal(l) -> string_of_int l
  | Fliteral(l) -> l
  | Stringlit(l) -> l
  | BoolLit(true) -> "true"
  | BoolLit(false) -> "false"
  | Mx(l) -> let flat_list = List.flatten l in "\n[" ^ String.concat "," (List.map string_of_int flat_list) ^ "]\n"   (* WE SHOULD PROBABLY COME BACK TO THIS *)
  | Id(s) -> s
  | Binop(e1, o, e2) ->
      string_of_expr e1 ^ " " ^ string_of_op o ^ " " ^ string_of_expr e2
  | Unop(o, e) -> string_of_uop o ^ string_of_expr e
  | Assign(v, e) -> v ^ " = " ^ string_of_expr e
  | Plusassign(v, e) -> v ^ " += " ^ string_of_expr e
  | Minusassign(v, e) -> v ^ " -= " ^ string_of_expr e
  | Timesassign(v, e) -> v ^ " *= " ^ string_of_expr e
  | Call(f, el) ->
      f ^ "(" ^ String.concat ", " (List.map string_of_expr el) ^ ")"
  | Noexpr -> ""

let rec string_of_stmt = function
    Block(stmts) ->
      "{\n" ^ String.concat "" (List.map string_of_stmt stmts) ^ "}\n"
  | Expr(expr) -> string_of_expr expr ^ ";\n";
  | Return(expr) -> "return " ^ string_of_expr expr ^ ";\n";
  | If(e, s, Block([])) -> "if (" ^ string_of_expr e ^ ")\n" ^ string_of_stmt s
  | If(e, s1, s2) ->  "if (" ^ string_of_expr e ^ ")\n" ^
      string_of_stmt s1 ^ "else\n" ^ string_of_stmt s2
  | For(e1, e2, e3, s) ->
      "for (" ^ string_of_expr e1  ^ " ; " ^ string_of_expr e2 ^ " ; " ^
      string_of_expr e3  ^ ") " ^ string_of_stmt s
  | While(e, s) -> "while (" ^ string_of_expr e ^ ") " ^ string_of_stmt s

let string_of_typ = function
    Int -> "int"
  | Bool -> "bool"
  | Float -> "float"
  | Void -> "void"
  | String -> "string"
  | Matrix _ -> "matrix"

let string_of_vdecl (t, id) = string_of_typ t ^ " " ^ id ^ ";\n"

let string_of_fdecl fdecl =
  string_of_typ fdecl.typ ^ " " ^
  fdecl.fname ^ "(" ^ String.concat ", " (List.map snd fdecl.formals) ^
  ")\n{\n" ^
  String.concat "" (List.map string_of_vdecl fdecl.locals) ^
  String.concat "" (List.map string_of_stmt fdecl.body) ^
  "}\n"

let string_of_program (vars, funcs) =
  String.concat "" (List.map string_of_vdecl vars) ^ "\n" ^
  String.concat "\n" (List.map string_of_fdecl funcs)