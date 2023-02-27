%{
#undef yywrap
#define yywrap() 1
#include <vector>
vector<char> vowels;
%}
%%

^[a|e|i|o|u]$ {
    vowels.push_back(yytext[0]);
    printf("max = %c\n",yytext[0]);
}

^print$ {
        for (auto ir = vowels.rbegin(); ir != vowels.rend(); ++ir)
        cout << *ir << " ";
}

. {}

%%
int main()
{
    yylex();
}