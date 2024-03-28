%{
#include<stdio.h>
int pc=0;
%}
%%
")" {pc++;}
")" {pc++;}
%%
int yywrap(){
return 1;
}
int main(){
printf("Enter an input:");
yylex();
printf("number of parenthesis:%d\n",pc);
}
