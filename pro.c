#include <stdio.h>
void main(){
    int words = 1;
    char sentence[] = "Hello how max$";
    for (int i = 0; i < sizeof(sentence) / sizeof(sentence[0]); i++) if (sentence[i] == ' ') words += 1;
    printf("Ok words is - %d", words);
}