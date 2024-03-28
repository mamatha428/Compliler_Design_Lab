/*to find out whether the given word is of length 3 and starts with 'A'*/
%{
#include<stdio.h>
int len;
void func(int l);
%}
%%
[a-zA-Z0-9]+ {len=yyleng;func(len);}
\n {return 0;}
%%
void func(int l){
if(yytext[0]=='a'|| yytext[0]=='A'){
   if(l==3){
      printf("word with length 3 and starts with 'a':%s\n",yytext);
    }
}
}
int yywrap(){}
int main(){
yylex();
return 0;
}
