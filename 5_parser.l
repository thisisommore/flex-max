%%

"#" {
    printf("preprocessor: %s\n",yytext);
}

"include" {
    printf("preprocessor: %s\n",yytext);
}

"[a-z]*\.h" {
    printf("preprocessor: %s\n",yytext);
}

[0-9]* {
    printf("token: %s (number literal)\n",yytext);
}

int|float|double|char {
    printf("token: %s (datatype)\n",yytext);
}

"="|","|";"|[a-z]*|\(|\)|\{|\} {
    printf("token: %s\n",yytext);
}

. {
}


%%

int main()
{

    printf("hemlo\n");
	yyin = fopen("max.txt", "r");
    
    yylex();
}