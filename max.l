%{

#undef yywrap
#define yywrap() 1
int words = 1;
char sentence[] = "Hello how max$";

%}

%%

[a-b] {
  for (int i = 0; i < sizeof(sentence) / sizeof(sentence[0]); i++) 
    if (sentence[i] == ' ') words += 1;
  printf("Ok words is - %d\n", words);
}
"\n" {
  printf("Hello World\n");  
}

  
%%

main()
{

  
  yylex(); //calling the rules section
}