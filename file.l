%{

#undef yywrap
#define yywrap() 1
int i = 0;
int words=0;
int lines=1;
int char_count=0;
%}

%%

. {
    i++;
}

^a([a-b]*)a$ {
    printf("right\n");
}
[a-zA-Z0-9]+ {words++;}

"\n" {
lines++;
}

%%

int main()
{
	yyin = fopen("max.txt", "r");
	yyout = fopen("Output.txt", "w");
    yylex();
    printf("chars %d\n",i);
    printf("words %d\n",words);
    printf("lines %d\n",lines);
}