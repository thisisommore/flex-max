%{
    #include "minic.tab.h"
%}

alpha [a-zA-Z]+
header #include[ ]<[a-z]+\.h>
datatype "int"|"float"|"char"
digit [0-9]+(\.[0-9]+)?
%%

{header} {return INCLUDES;}
"int" {return INT;}
{datatype} {return DATATYPE;}
{digit} {return NUMBER;}
"main()" {return MAIN;}
"(" {return B_OPEN;}
")" {return B_CLOSE;}
"{" {return C_OPEN;}
"}" {return C_CLOSE;}
"=" {return EQL;}
";" {return SEMI;}
[a-zA-Z] {return ID;}
%%

