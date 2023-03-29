%{

#undef yywrap
#define yywrap() 1
%}

%%

^(a.*)|(.*a)$ {
    printf("right %s\n",yytext);
    fwrite(yytext,yyleng,1,yyout);
}
. {
}
%%
int main()
{
	yyin = fopen("a_start_end_input.txt", "r");
	yyout = fopen("Output.txt", "w");
    yylex();
}