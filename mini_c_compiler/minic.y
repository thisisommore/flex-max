%{
#include<stdio.h>
int yylex(void);

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}
%}

%token DATATYPE MAIN INT NUMBER ID INCLUDES B_OPEN B_CLOSE C_OPEN C_CLOSE EQL SEMI

%%

PROGRAM: INCLUDE_STM INT MAIN BODY
;
INCLUDE_STM:  INCLUDES | INCLUDE_STM INCLUDES
;
BODY: C_OPEN STATEMENT C_CLOSE
;
STATEMENT:  ASSIGN STATEMENT SEMI |
;
ASSIGN: DATATYPE_ALL ID EQL NUMBER
DATATYPE_ALL: DATATYPE | INT
;

%%

int main(){
    yyparse();
}