#include <vector>
%{
#undef yywrap
#define yywrap() 1
%}
vector<char> abc;
%%

^[0-9]$ {
    printf("max");
}

%%

int main()
{
    yylex();
}