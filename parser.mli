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

val program :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Ast.program