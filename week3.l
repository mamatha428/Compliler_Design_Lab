%{
#include<stdio.h>
int ic=0;
int fc=0;
%}
%%
[0-9]+"."[0-9]+ {fc++;}//atleast one (+)
[0-9]+ {ic++;}
\n {return 0;}
%%
int yywrap(){}
int main(){
yylex();
printf("Integer number count:%d\n",ic);
printf("Floating number count:%d",fc);
}
