%{
#include<stdio.h>
#include<stdlib.h>
%}
%%
\/\/(.*) {};
\/\*(.*)*.*\*\/ {};

%%
int yywrap(){}
int main(){
yyin=fopen("input.c","r");
yyout=fopen("outp1.c","w");
yylex();
return 0;
}
