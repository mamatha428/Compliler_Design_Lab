%{
#include<stdio.h>
int vc=0;
int cc=0;
%}
%%

[aeiouAEOIU]{vc++;}
[a-zA-Z]{cc++}
  
%%
yywrap(){}
int main(){
printf("Enter  a string:");
yylex();
printf("vowel count:%d\n",vc);
printf("consonant count:%d\n",cc);
}


 

