%{
#include<stdio.h>
int lc=1,wc=1,ch=0;
%}
%%
[\n] {lc++;wc++;}
[a-zA-Z] {ch++;}
[' '] {wc++;}
[@] {return 0;}//whenever @ is there in our string then it stops 
%%
int yywrap(){}
int main(){
yylex();
printf("line count:%d\n",lc);
printf("word count:%d\n",wc);
printf("character count:%d\n",ch);
}
