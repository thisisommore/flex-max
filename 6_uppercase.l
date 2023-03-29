%{

#undef yywrap
#define yywrap() 1
int in_comment = 0;
%}

%%

^\/\*.*$ {
    fwrite(yytext,yyleng,1,yyout);
    in_comment=1;
}

^(.*)\*\/$ {
    fwrite(yytext,yyleng,1,yyout);
    in_comment=0;
}

^(\/\/).*$ {
    fwrite(yytext,yyleng,1,yyout);
} 

[A-Z] {
    if(in_comment==0){
        yytext[0]+=32;
    }
    fwrite(yytext,1,1,yyout);
}
[a-z] {
    if(in_comment==0){
          yytext[0]-=32;
    }
    fwrite(yytext,1,1,yyout);
}

%%

int main()
{
	yyin = fopen("input.txt", "r");
	yyout = fopen("Output.txt", "w");
    yylex();
}