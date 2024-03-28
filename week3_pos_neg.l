%{
#include<stdio.h>
int pos=0;
int neg=0;
%}
%%
[-][0-9]+ {neg++;}
[0-9]+ {pos++;}
%%

int yywrap(){
return 1;
}

int main(){
printf("Enter a number:");
yylex();
printf("positive count:%d\n",pos);
printf("negative count:%d\n",neg);
}
