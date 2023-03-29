%{
char vowels[100];
int ind=0;
%}
%%

^[a|e|i|o|u]$ {
    vowels[ind]=(yytext[0]);
    ind++;
    printf("max = %c\n",yytext[0]);
}

^print$ {
        printf("%s\n",vowels);
}

. {}

%%
int main()
{
    yylex();
}