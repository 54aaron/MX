type token =
  | LPAREN
  | RPAREN
  | LBRACE
  | RBRACE
  | LBRACKET
  | RBRACKET
  | SEMI
  | COMMA
  | TRANSPOSE
  | PLUS
  | MINUS
  | TIMES
  | DIVIDE
  | ASSIGN
  | EQ
  | IF
  | ELIF
  | ELSE
  | WHILE
  | FOR
  | NOT
  | NOELSE
  | INT
  | BOOL
  | FLOAT
  | STRING
  | CONTINUE
  | BREAK
  | RETURN
  | MATRIX
  | VOID
  | NULL
  | NEQ
  | LT
  | GT
  | LEQ
  | GEQ
  | AND
  | OR
  | MXPLUS
  | MXMINUS
  | MXMX
  | MXSCALE
  | LITERAL of (int)
  | ID of (string)
  | FLIT of (string)
  | BLIT of (bool)
  | MX of (array)
  | STRINGLIT of (string)
  | EOF

open Parsing;;
let _ = parse_error;;
# 1 "parser.mly"
 open Ast 
# 58 "parser.ml"
let yytransl_const = [|
  257 (* LPAREN *);
  258 (* RPAREN *);
  259 (* LBRACE *);
  260 (* RBRACE *);
  261 (* LBRACKET *);
  262 (* RBRACKET *);
  263 (* SEMI *);
  264 (* COMMA *);
  265 (* TRANSPOSE *);
  266 (* PLUS *);
  267 (* MINUS *);
  268 (* TIMES *);
  269 (* DIVIDE *);
  270 (* ASSIGN *);
  271 (* EQ *);
  272 (* IF *);
  273 (* ELIF *);
  274 (* ELSE *);
  275 (* WHILE *);
  276 (* FOR *);
  277 (* NOT *);
  278 (* NOELSE *);
  279 (* INT *);
  280 (* BOOL *);
  281 (* FLOAT *);
  282 (* STRING *);
  283 (* CONTINUE *);
  284 (* BREAK *);
  285 (* RETURN *);
  286 (* MATRIX *);
  287 (* VOID *);
  288 (* NULL *);
  289 (* NEQ *);
  290 (* LT *);
  291 (* GT *);
  292 (* LEQ *);
  293 (* GEQ *);
  294 (* AND *);
  295 (* OR *);
  296 (* MXPLUS *);
  297 (* MXMINUS *);
  298 (* MXMX *);
  299 (* MXSCALE *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  300 (* LITERAL *);
  301 (* ID *);
  302 (* FLIT *);
  303 (* BLIT *);
  304 (* MX *);
  305 (* STRINGLIT *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\004\000\006\000\006\000\009\000\
\009\000\005\000\005\000\005\000\005\000\005\000\005\000\007\000\
\007\000\003\000\003\000\003\000\003\000\011\000\011\000\011\000\
\012\000\012\000\010\000\010\000\010\000\010\000\010\000\010\000\
\010\000\010\000\010\000\010\000\010\000\010\000\010\000\010\000\
\010\000\010\000\010\000\010\000\010\000\010\000\010\000\010\000\
\010\000\010\000\010\000\010\000\010\000\014\000\014\000\014\000\
\014\000\014\000\014\000\014\000\008\000\008\000\015\000\015\000\
\013\000\013\000\016\000\016\000\000\000"

let yylen = "\002\000\
\002\000\000\000\002\000\002\000\009\000\000\000\001\000\002\000\
\004\000\001\000\001\000\001\000\001\000\001\000\001\000\000\000\
\002\000\003\000\005\000\008\000\008\000\000\000\003\000\005\000\
\001\000\003\000\001\000\001\000\001\000\001\000\001\000\003\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\002\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\002\000\002\000\003\000\004\000\003\000\002\000\003\000\003\000\
\005\000\007\000\009\000\005\000\000\000\002\000\000\000\001\000\
\000\000\001\000\001\000\003\000\002\000"

let yydefred = "\000\000\
\002\000\000\000\069\000\000\000\010\000\011\000\013\000\012\000\
\014\000\015\000\001\000\003\000\004\000\000\000\000\000\000\000\
\018\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\027\000\000\000\028\000\029\000\031\000\000\000\
\008\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\019\000\040\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\016\000\000\000\053\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\009\000\
\025\000\000\000\000\000\000\000\000\000\052\000\000\000\017\000\
\000\000\000\000\023\000\000\000\020\000\000\000\021\000\000\000\
\000\000\061\000\005\000\000\000\000\000\000\000\000\000\000\000\
\062\000\026\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\054\000\024\000\056\000\000\000\000\000\000\000\055\000\
\000\000\000\000\000\000\000\000\060\000\000\000\000\000\000\000\
\058\000\000\000\000\000\059\000"

let yydgoto = "\002\000\
\003\000\004\000\012\000\013\000\014\000\020\000\087\000\098\000\
\021\000\112\000\065\000\090\000\068\000\113\000\121\000\069\000"

let yysindex = "\011\000\
\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\236\254\008\255\051\001\
\000\000\139\255\010\255\067\255\072\255\154\255\154\255\154\255\
\090\255\091\255\000\000\051\255\000\000\000\000\000\000\166\001\
\000\000\100\255\051\001\155\000\097\255\097\255\110\255\110\255\
\154\255\154\255\000\000\000\000\154\255\154\255\154\255\154\255\
\154\255\154\255\154\255\154\255\154\255\154\255\154\255\154\255\
\154\255\154\255\154\255\154\255\000\000\071\255\000\000\080\255\
\002\255\062\255\249\001\129\255\128\255\249\001\085\255\085\255\
\097\255\097\255\049\002\049\002\120\000\120\000\120\000\120\000\
\039\002\004\002\085\255\085\255\097\255\097\255\051\001\000\000\
\000\000\126\255\137\255\148\255\149\255\000\000\154\255\000\000\
\113\255\042\255\000\000\115\255\000\000\080\255\000\000\249\001\
\000\255\000\000\000\000\156\255\171\255\172\255\154\255\203\001\
\000\000\000\000\131\255\063\255\154\255\154\255\154\255\249\001\
\167\255\000\000\000\000\000\000\167\000\209\000\170\255\000\000\
\160\255\160\255\154\255\164\255\000\000\214\001\160\255\154\255\
\000\000\176\255\160\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\186\255\
\000\000\000\000\000\000\000\000\188\255\000\000\000\000\000\000\
\000\000\000\000\000\000\207\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\219\255\005\000\146\255\146\255\
\189\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\070\255\000\000\190\255\049\255\221\000\005\001\
\047\000\059\000\011\255\159\001\065\001\103\001\112\001\150\001\
\009\255\052\255\015\001\055\001\101\000\113\000\101\255\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\127\255\
\000\000\000\000\000\000\000\000\000\000\000\000\187\255\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\187\255\112\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\122\255\000\000\000\000\000\000\191\255\
\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\108\000\000\000\242\255\000\000\000\000\090\000\
\000\000\238\255\157\000\109\000\000\000\202\255\140\255\000\000"

let yytablesize = 860
let yytable = "\032\000\
\011\000\019\000\127\000\036\000\037\000\038\000\017\000\091\000\
\016\000\092\000\047\000\001\000\041\000\018\000\017\000\047\000\
\047\000\041\000\041\000\138\000\062\000\018\000\067\000\070\000\
\015\000\041\000\071\000\072\000\073\000\074\000\075\000\076\000\
\077\000\078\000\079\000\080\000\081\000\082\000\083\000\084\000\
\085\000\086\000\022\000\041\000\106\000\107\000\047\000\047\000\
\041\000\041\000\051\000\041\000\023\000\048\000\033\000\051\000\
\051\000\108\000\048\000\048\000\109\000\110\000\024\000\022\000\
\042\000\106\000\124\000\093\000\034\000\092\000\111\000\067\000\
\097\000\023\000\132\000\133\000\104\000\067\000\108\000\035\000\
\137\000\109\000\110\000\024\000\140\000\027\000\028\000\029\000\
\030\000\031\000\048\000\111\000\120\000\044\000\039\000\040\000\
\047\000\048\000\125\000\126\000\120\000\061\000\061\000\061\000\
\061\000\044\000\027\000\028\000\029\000\030\000\031\000\061\000\
\134\000\064\000\064\000\088\000\061\000\120\000\064\000\061\000\
\061\000\061\000\057\000\089\000\057\000\057\000\059\000\060\000\
\068\000\061\000\094\000\099\000\057\000\100\000\068\000\095\000\
\123\000\057\000\100\000\022\000\057\000\057\000\057\000\101\000\
\061\000\061\000\061\000\061\000\061\000\023\000\057\000\022\000\
\102\000\022\000\022\000\103\000\117\000\105\000\114\000\024\000\
\022\000\025\000\106\000\026\000\023\000\057\000\057\000\057\000\
\057\000\057\000\023\000\118\000\119\000\128\000\024\000\108\000\
\131\000\139\000\109\000\110\000\024\000\135\000\027\000\028\000\
\029\000\030\000\031\000\006\000\111\000\007\000\065\000\066\000\
\063\000\063\000\096\000\116\000\066\000\027\000\028\000\029\000\
\030\000\031\000\000\000\027\000\028\000\029\000\030\000\031\000\
\030\000\000\000\115\000\000\000\000\000\030\000\030\000\030\000\
\030\000\030\000\030\000\030\000\049\000\030\000\000\000\000\000\
\000\000\049\000\049\000\000\000\049\000\049\000\049\000\049\000\
\000\000\049\000\000\000\000\000\000\000\000\000\000\000\030\000\
\030\000\030\000\030\000\030\000\030\000\030\000\030\000\030\000\
\030\000\030\000\000\000\049\000\049\000\049\000\049\000\049\000\
\049\000\049\000\049\000\049\000\049\000\049\000\050\000\000\000\
\000\000\000\000\000\000\050\000\050\000\000\000\050\000\050\000\
\050\000\050\000\000\000\050\000\000\000\000\000\000\000\005\000\
\006\000\007\000\008\000\000\000\000\000\000\000\009\000\010\000\
\000\000\000\000\000\000\000\000\000\000\050\000\050\000\050\000\
\050\000\050\000\050\000\050\000\050\000\050\000\050\000\050\000\
\034\000\000\000\000\000\000\000\000\000\034\000\034\000\000\000\
\034\000\034\000\034\000\034\000\035\000\034\000\000\000\000\000\
\000\000\035\000\035\000\000\000\035\000\035\000\035\000\035\000\
\000\000\035\000\000\000\000\000\000\000\000\000\000\000\034\000\
\034\000\034\000\034\000\034\000\034\000\034\000\034\000\034\000\
\034\000\034\000\000\000\035\000\035\000\035\000\035\000\035\000\
\035\000\035\000\035\000\035\000\035\000\035\000\038\000\000\000\
\000\000\000\000\000\000\038\000\038\000\000\000\038\000\038\000\
\038\000\038\000\039\000\038\000\000\000\000\000\000\000\039\000\
\039\000\000\000\039\000\039\000\039\000\039\000\000\000\039\000\
\044\000\045\000\046\000\047\000\048\000\038\000\038\000\038\000\
\038\000\038\000\038\000\038\000\038\000\038\000\038\000\038\000\
\000\000\039\000\039\000\039\000\039\000\039\000\039\000\039\000\
\039\000\039\000\039\000\039\000\063\000\000\000\000\000\057\000\
\058\000\059\000\060\000\044\000\045\000\046\000\047\000\048\000\
\129\000\049\000\000\000\000\000\000\000\000\000\000\000\044\000\
\045\000\046\000\047\000\048\000\000\000\049\000\000\000\000\000\
\000\000\000\000\000\000\050\000\051\000\052\000\053\000\054\000\
\055\000\056\000\057\000\058\000\059\000\060\000\000\000\050\000\
\051\000\052\000\053\000\054\000\055\000\056\000\057\000\058\000\
\059\000\060\000\130\000\000\000\000\000\000\000\000\000\000\000\
\000\000\044\000\045\000\046\000\047\000\048\000\032\000\049\000\
\000\000\000\000\000\000\032\000\032\000\000\000\032\000\032\000\
\000\000\000\000\000\000\032\000\000\000\000\000\000\000\000\000\
\000\000\050\000\051\000\052\000\053\000\054\000\055\000\056\000\
\057\000\058\000\059\000\060\000\000\000\032\000\032\000\032\000\
\032\000\032\000\032\000\032\000\032\000\032\000\033\000\000\000\
\000\000\000\000\000\000\033\000\033\000\000\000\033\000\033\000\
\036\000\000\000\000\000\033\000\000\000\036\000\036\000\000\000\
\036\000\036\000\000\000\000\000\000\000\036\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\033\000\033\000\033\000\
\033\000\033\000\033\000\033\000\033\000\033\000\000\000\036\000\
\036\000\036\000\036\000\036\000\036\000\036\000\036\000\036\000\
\037\000\000\000\000\000\000\000\000\000\037\000\037\000\000\000\
\037\000\037\000\043\000\000\000\000\000\037\000\000\000\043\000\
\043\000\005\000\006\000\007\000\008\000\000\000\000\000\043\000\
\009\000\010\000\000\000\000\000\000\000\000\000\000\000\037\000\
\037\000\037\000\037\000\037\000\037\000\037\000\037\000\037\000\
\000\000\043\000\043\000\043\000\043\000\043\000\043\000\043\000\
\045\000\000\000\000\000\000\000\000\000\045\000\045\000\000\000\
\000\000\044\000\000\000\000\000\000\000\045\000\044\000\044\000\
\000\000\000\000\000\000\000\000\000\000\000\000\044\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\045\000\
\045\000\045\000\045\000\045\000\045\000\045\000\000\000\000\000\
\044\000\044\000\044\000\044\000\044\000\044\000\044\000\046\000\
\000\000\000\000\000\000\000\000\046\000\046\000\000\000\000\000\
\042\000\000\000\000\000\000\000\046\000\042\000\042\000\000\000\
\000\000\000\000\000\000\000\000\043\000\042\000\044\000\045\000\
\046\000\047\000\048\000\000\000\049\000\000\000\046\000\046\000\
\046\000\046\000\046\000\046\000\046\000\000\000\000\000\042\000\
\000\000\000\000\000\000\000\000\042\000\042\000\050\000\051\000\
\052\000\053\000\054\000\055\000\056\000\057\000\058\000\059\000\
\060\000\122\000\000\000\044\000\045\000\046\000\047\000\048\000\
\000\000\049\000\000\000\000\000\136\000\000\000\044\000\045\000\
\046\000\047\000\048\000\000\000\049\000\000\000\000\000\000\000\
\000\000\000\000\000\000\050\000\051\000\052\000\053\000\054\000\
\055\000\056\000\057\000\058\000\059\000\060\000\050\000\051\000\
\052\000\053\000\054\000\055\000\056\000\057\000\058\000\059\000\
\060\000\044\000\045\000\046\000\047\000\048\000\000\000\049\000\
\000\000\000\000\000\000\000\000\044\000\045\000\046\000\047\000\
\048\000\000\000\049\000\000\000\000\000\000\000\000\000\000\000\
\000\000\050\000\051\000\052\000\053\000\054\000\055\000\056\000\
\057\000\058\000\059\000\060\000\050\000\051\000\052\000\053\000\
\054\000\055\000\000\000\057\000\058\000\059\000\060\000\044\000\
\045\000\046\000\047\000\048\000\000\000\049\000\000\000\000\000\
\000\000\044\000\045\000\046\000\047\000\048\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\050\000\
\051\000\052\000\053\000\054\000\000\000\000\000\057\000\058\000\
\059\000\060\000\051\000\052\000\053\000\054\000\000\000\000\000\
\057\000\058\000\059\000\060\000"

let yycheck = "\018\000\
\000\000\016\000\119\000\022\000\023\000\024\000\007\001\006\001\
\001\001\008\001\002\001\001\000\002\001\014\001\007\001\007\001\
\008\001\007\001\008\001\136\000\035\000\014\001\041\000\042\000\
\045\001\015\001\045\000\046\000\047\000\048\000\049\000\050\000\
\051\000\052\000\053\000\054\000\055\000\056\000\057\000\058\000\
\059\000\060\000\001\001\033\001\003\001\004\001\038\001\039\001\
\038\001\039\001\002\001\001\001\011\001\002\001\045\001\007\001\
\008\001\016\001\007\001\008\001\019\001\020\001\021\001\001\001\
\014\001\003\001\004\001\006\001\002\001\008\001\029\001\002\001\
\087\000\011\001\129\000\130\000\095\000\008\001\016\001\008\001\
\135\000\019\001\020\001\021\001\139\000\044\001\045\001\046\001\
\047\001\048\001\039\001\029\001\111\000\009\001\005\001\005\001\
\012\001\013\001\117\000\118\000\119\000\001\001\003\001\003\001\
\004\001\009\001\044\001\045\001\046\001\047\001\048\001\011\001\
\131\000\002\001\005\001\045\001\016\001\136\000\007\001\019\001\
\020\001\021\001\001\001\044\001\003\001\004\001\042\001\043\001\
\002\001\029\001\002\001\006\001\011\001\008\001\008\001\008\001\
\006\001\016\001\008\001\001\001\019\001\020\001\021\001\007\001\
\044\001\045\001\046\001\047\001\048\001\011\001\029\001\006\001\
\005\001\008\001\001\001\007\001\001\001\045\001\044\001\021\001\
\001\001\023\001\003\001\025\001\011\001\044\001\045\001\046\001\
\047\001\048\001\011\001\001\001\001\001\007\001\021\001\016\001\
\007\001\002\001\019\001\020\001\021\001\018\001\044\001\045\001\
\046\001\047\001\048\001\002\001\029\001\002\001\002\001\002\001\
\002\001\007\001\087\000\106\000\040\000\044\001\045\001\046\001\
\047\001\048\001\255\255\044\001\045\001\046\001\047\001\048\001\
\002\001\255\255\102\000\255\255\255\255\007\001\008\001\009\001\
\010\001\011\001\012\001\013\001\002\001\015\001\255\255\255\255\
\255\255\007\001\008\001\255\255\010\001\011\001\012\001\013\001\
\255\255\015\001\255\255\255\255\255\255\255\255\255\255\033\001\
\034\001\035\001\036\001\037\001\038\001\039\001\040\001\041\001\
\042\001\043\001\255\255\033\001\034\001\035\001\036\001\037\001\
\038\001\039\001\040\001\041\001\042\001\043\001\002\001\255\255\
\255\255\255\255\255\255\007\001\008\001\255\255\010\001\011\001\
\012\001\013\001\255\255\015\001\255\255\255\255\255\255\023\001\
\024\001\025\001\026\001\255\255\255\255\255\255\030\001\031\001\
\255\255\255\255\255\255\255\255\255\255\033\001\034\001\035\001\
\036\001\037\001\038\001\039\001\040\001\041\001\042\001\043\001\
\002\001\255\255\255\255\255\255\255\255\007\001\008\001\255\255\
\010\001\011\001\012\001\013\001\002\001\015\001\255\255\255\255\
\255\255\007\001\008\001\255\255\010\001\011\001\012\001\013\001\
\255\255\015\001\255\255\255\255\255\255\255\255\255\255\033\001\
\034\001\035\001\036\001\037\001\038\001\039\001\040\001\041\001\
\042\001\043\001\255\255\033\001\034\001\035\001\036\001\037\001\
\038\001\039\001\040\001\041\001\042\001\043\001\002\001\255\255\
\255\255\255\255\255\255\007\001\008\001\255\255\010\001\011\001\
\012\001\013\001\002\001\015\001\255\255\255\255\255\255\007\001\
\008\001\255\255\010\001\011\001\012\001\013\001\255\255\015\001\
\009\001\010\001\011\001\012\001\013\001\033\001\034\001\035\001\
\036\001\037\001\038\001\039\001\040\001\041\001\042\001\043\001\
\255\255\033\001\034\001\035\001\036\001\037\001\038\001\039\001\
\040\001\041\001\042\001\043\001\002\001\255\255\255\255\040\001\
\041\001\042\001\043\001\009\001\010\001\011\001\012\001\013\001\
\002\001\015\001\255\255\255\255\255\255\255\255\255\255\009\001\
\010\001\011\001\012\001\013\001\255\255\015\001\255\255\255\255\
\255\255\255\255\255\255\033\001\034\001\035\001\036\001\037\001\
\038\001\039\001\040\001\041\001\042\001\043\001\255\255\033\001\
\034\001\035\001\036\001\037\001\038\001\039\001\040\001\041\001\
\042\001\043\001\002\001\255\255\255\255\255\255\255\255\255\255\
\255\255\009\001\010\001\011\001\012\001\013\001\002\001\015\001\
\255\255\255\255\255\255\007\001\008\001\255\255\010\001\011\001\
\255\255\255\255\255\255\015\001\255\255\255\255\255\255\255\255\
\255\255\033\001\034\001\035\001\036\001\037\001\038\001\039\001\
\040\001\041\001\042\001\043\001\255\255\033\001\034\001\035\001\
\036\001\037\001\038\001\039\001\040\001\041\001\002\001\255\255\
\255\255\255\255\255\255\007\001\008\001\255\255\010\001\011\001\
\002\001\255\255\255\255\015\001\255\255\007\001\008\001\255\255\
\010\001\011\001\255\255\255\255\255\255\015\001\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\033\001\034\001\035\001\
\036\001\037\001\038\001\039\001\040\001\041\001\255\255\033\001\
\034\001\035\001\036\001\037\001\038\001\039\001\040\001\041\001\
\002\001\255\255\255\255\255\255\255\255\007\001\008\001\255\255\
\010\001\011\001\002\001\255\255\255\255\015\001\255\255\007\001\
\008\001\023\001\024\001\025\001\026\001\255\255\255\255\015\001\
\030\001\031\001\255\255\255\255\255\255\255\255\255\255\033\001\
\034\001\035\001\036\001\037\001\038\001\039\001\040\001\041\001\
\255\255\033\001\034\001\035\001\036\001\037\001\038\001\039\001\
\002\001\255\255\255\255\255\255\255\255\007\001\008\001\255\255\
\255\255\002\001\255\255\255\255\255\255\015\001\007\001\008\001\
\255\255\255\255\255\255\255\255\255\255\255\255\015\001\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\033\001\
\034\001\035\001\036\001\037\001\038\001\039\001\255\255\255\255\
\033\001\034\001\035\001\036\001\037\001\038\001\039\001\002\001\
\255\255\255\255\255\255\255\255\007\001\008\001\255\255\255\255\
\002\001\255\255\255\255\255\255\015\001\007\001\008\001\255\255\
\255\255\255\255\255\255\255\255\007\001\015\001\009\001\010\001\
\011\001\012\001\013\001\255\255\015\001\255\255\033\001\034\001\
\035\001\036\001\037\001\038\001\039\001\255\255\255\255\033\001\
\255\255\255\255\255\255\255\255\038\001\039\001\033\001\034\001\
\035\001\036\001\037\001\038\001\039\001\040\001\041\001\042\001\
\043\001\007\001\255\255\009\001\010\001\011\001\012\001\013\001\
\255\255\015\001\255\255\255\255\007\001\255\255\009\001\010\001\
\011\001\012\001\013\001\255\255\015\001\255\255\255\255\255\255\
\255\255\255\255\255\255\033\001\034\001\035\001\036\001\037\001\
\038\001\039\001\040\001\041\001\042\001\043\001\033\001\034\001\
\035\001\036\001\037\001\038\001\039\001\040\001\041\001\042\001\
\043\001\009\001\010\001\011\001\012\001\013\001\255\255\015\001\
\255\255\255\255\255\255\255\255\009\001\010\001\011\001\012\001\
\013\001\255\255\015\001\255\255\255\255\255\255\255\255\255\255\
\255\255\033\001\034\001\035\001\036\001\037\001\038\001\039\001\
\040\001\041\001\042\001\043\001\033\001\034\001\035\001\036\001\
\037\001\038\001\255\255\040\001\041\001\042\001\043\001\009\001\
\010\001\011\001\012\001\013\001\255\255\015\001\255\255\255\255\
\255\255\009\001\010\001\011\001\012\001\013\001\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\033\001\
\034\001\035\001\036\001\037\001\255\255\255\255\040\001\041\001\
\042\001\043\001\034\001\035\001\036\001\037\001\255\255\255\255\
\040\001\041\001\042\001\043\001"

let yynames_const = "\
  LPAREN\000\
  RPAREN\000\
  LBRACE\000\
  RBRACE\000\
  LBRACKET\000\
  RBRACKET\000\
  SEMI\000\
  COMMA\000\
  TRANSPOSE\000\
  PLUS\000\
  MINUS\000\
  TIMES\000\
  DIVIDE\000\
  ASSIGN\000\
  EQ\000\
  IF\000\
  ELIF\000\
  ELSE\000\
  WHILE\000\
  FOR\000\
  NOT\000\
  NOELSE\000\
  INT\000\
  BOOL\000\
  FLOAT\000\
  STRING\000\
  CONTINUE\000\
  BREAK\000\
  RETURN\000\
  MATRIX\000\
  VOID\000\
  NULL\000\
  NEQ\000\
  LT\000\
  GT\000\
  LEQ\000\
  GEQ\000\
  AND\000\
  OR\000\
  MXPLUS\000\
  MXMINUS\000\
  MXMX\000\
  MXSCALE\000\
  EOF\000\
  "

let yynames_block = "\
  LITERAL\000\
  ID\000\
  FLIT\000\
  BLIT\000\
  MX\000\
  STRINGLIT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    Obj.repr(
# 33 "parser.mly"
                   ( _1 )
# 489 "parser.ml"
               : Ast.program))
; (fun __caml_parser_env ->
    Obj.repr(
# 35 "parser.mly"
                     ( ([], []) )
# 495 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 36 "parser.mly"
              ( ((_2 :: fst _1), snd _1) )
# 503 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'fdecl) in
    Obj.repr(
# 37 "parser.mly"
              ( (fst _1, (_2 :: snd _1)) )
# 511 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 8 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 7 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 5 : 'formals_opt) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'vdecl_list) in
    let _8 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 40 "parser.mly"
                                           (
        { typ = _1; fname = _2; formals = List.rev _4;
          locals = List.rev _7; body = List.rev _8 } )
# 524 "parser.ml"
               : 'fdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 44 "parser.mly"
                           ( [] )
# 530 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'formal_list) in
    Obj.repr(
# 45 "parser.mly"
                          ( _1 )
# 537 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 47 "parser.mly"
                    ( [(_1,_2)] )
# 545 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'formal_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 48 "parser.mly"
                                        ( (_3,_4) :: _1 )
# 554 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    Obj.repr(
# 51 "parser.mly"
              ( Int )
# 560 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 52 "parser.mly"
              ( Bool )
# 566 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 53 "parser.mly"
              ( String )
# 572 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 54 "parser.mly"
              ( Float  )
# 578 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 55 "parser.mly"
              ( Matrix )
# 584 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 56 "parser.mly"
              ( Void )
# 590 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 58 "parser.mly"
                          ( [] )
# 596 "parser.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'vdecl_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 59 "parser.mly"
                              ( _2 :: _1 )
# 604 "parser.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 62 "parser.mly"
                                                                         ((_1, _2, Noexpr))
# 612 "parser.ml"
               : 'vdecl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 63 "parser.mly"
                                                                         ((_1,_2, Assign(_2,_4)))
# 621 "parser.ml"
               : 'vdecl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 7 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 6 : string) in
    let _6 = (Parsing.peek_val __caml_parser_env 2 : 'row_list) in
    Obj.repr(
# 64 "parser.mly"
                                                                        ( (_2, _6) )
# 630 "parser.ml"
               : 'vdecl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 7 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 6 : string) in
    let _6 = (Parsing.peek_val __caml_parser_env 2 : 'row_list) in
    Obj.repr(
# 65 "parser.mly"
                                                                      ( (_2, _6) )
# 639 "parser.ml"
               : 'vdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 68 "parser.mly"
                                                                        ( [] )
# 645 "parser.ml"
               : 'row_list))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'elems_list) in
    Obj.repr(
# 69 "parser.mly"
                                                                        ( [[_2]] )
# 652 "parser.ml"
               : 'row_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : 'row_list) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'elems_list) in
    Obj.repr(
# 70 "parser.mly"
                                                                        ( [_4]::_1 )
# 660 "parser.ml"
               : 'row_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 74 "parser.mly"
                                                    ( [_1] )
# 667 "parser.ml"
               : 'elems_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'elems_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 75 "parser.mly"
                                                    ( _3::_1 )
# 675 "parser.ml"
               : 'elems_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 78 "parser.mly"
                                 ( Literal(_1) )
# 682 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 79 "parser.mly"
                                 ( Fliteral(_1) )
# 689 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : bool) in
    Obj.repr(
# 80 "parser.mly"
                                 ( BoolLit(_1) )
# 696 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 81 "parser.mly"
                                 ( Id(_1) )
# 703 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : array) in
    Obj.repr(
# 82 "parser.mly"
                                 ( Mx(_1) )
# 710 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 83 "parser.mly"
                                 ( Binop(_1, Add, _3) )
# 718 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 84 "parser.mly"
                                 ( Binop(_1, Sub, _3) )
# 726 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 85 "parser.mly"
                                 ( Binop(_1, Mult, _3) )
# 734 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 86 "parser.mly"
                                 ( Binop(_1, Div, _3) )
# 742 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 87 "parser.mly"
                                 ( Binop( _1, Mxadd,_3) )
# 750 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 88 "parser.mly"
                                 ( Binop( _1, Mxsub, _3) )
# 758 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 89 "parser.mly"
                                 ( Binop( _1, Mxtimes, _3) )
# 766 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 90 "parser.mly"
                                 ( Binop( _1, Mxscale, _3) )
# 774 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 91 "parser.mly"
                                 ( Unop( _1, Transpose) )
# 781 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 92 "parser.mly"
                                 ( Binop(_1, Equal, _3) )
# 789 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 93 "parser.mly"
                                 ( Binop(_1, Neq, _3) )
# 797 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 94 "parser.mly"
                                 ( Binop(_1, Less, _3) )
# 805 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 95 "parser.mly"
                                 ( Binop(_1, Leq, _3) )
# 813 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 96 "parser.mly"
                                 ( Binop(_1, Greater, _3) )
# 821 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 97 "parser.mly"
                                 ( Binop(_1, Geq, _3) )
# 829 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 98 "parser.mly"
                                 ( Binop(_1, And, _3) )
# 837 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 99 "parser.mly"
                                 ( Binop(_1, Or, _3) )
# 845 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 100 "parser.mly"
                                 ( Unop(Neg, _2) )
# 852 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 101 "parser.mly"
                                 ( Unop(Not, _2) )
# 859 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 102 "parser.mly"
                                 ( Assign(_1, _3) )
# 867 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'args_opt) in
    Obj.repr(
# 103 "parser.mly"
                                 ( Call(_1, _3) )
# 875 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 104 "parser.mly"
                                 ( _2 )
# 882 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 109 "parser.mly"
                                                              ( Expr _1               )
# 889 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr_opt) in
    Obj.repr(
# 110 "parser.mly"
                                                              ( Return _2             )
# 896 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 111 "parser.mly"
                                                              ( Block(List.rev _2)    )
# 903 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 112 "parser.mly"
                                                              ( If(_3, _5, Block([])) )
# 911 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'stmt) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 113 "parser.mly"
                                                              ( If(_3, _5, _7)        )
# 920 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 6 : 'expr_opt) in
    let _5 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'expr_opt) in
    let _9 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 114 "parser.mly"
                                                              ( For(_3, _5, _7, _9)   )
# 930 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 115 "parser.mly"
                                                              ( While(_3, _5)         )
# 938 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 118 "parser.mly"
                   ( [] )
# 944 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 119 "parser.mly"
                   ( _2 :: _1 )
# 952 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    Obj.repr(
# 122 "parser.mly"
              ( Noexpr )
# 958 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 123 "parser.mly"
       ( _1 )
# 965 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    Obj.repr(
# 126 "parser.mly"
              ( [] )
# 971 "parser.ml"
               : 'args_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'args_list) in
    Obj.repr(
# 127 "parser.mly"
            ( List.rev _1 )
# 978 "parser.ml"
               : 'args_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 130 "parser.mly"
     ( [_1] )
# 985 "parser.ml"
               : 'args_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'args_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 131 "parser.mly"
                       ( _3 :: _1 )
# 993 "parser.ml"
               : 'args_list))
(* Entry program *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let program (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.program)
