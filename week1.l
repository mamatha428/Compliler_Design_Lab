//program to count number f vowels and consonanats in the given string
%{
#include<stdio.h>
int vc=0;
int cc=0;
%}
%%

[aeiouAEOIU] {vc++;}
[a-zA-Z] {cc++;}
\n {return 0;}
%%
int yywrap(){}
int main(){
//printf("Enter  a string:");
yylex();
printf("vowel count:%d\n",vc);
printf("consonant count:%d",cc);
}


 

