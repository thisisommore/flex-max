%{
#undef yywrap
#define yywrap() 1
%}

%%

^a*([a-b]*b+[a-b]*)a*$ {
    printf("accepted\n");
}

[a-b]+ {
    printf("rejected\n");
}

%%

int main()
{
    yylex();
}