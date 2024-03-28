%option noyywrap
%{
#include<stdio.h>
extern int yylval;
int NUMBER;
%}
%%
[0-9]+ {yylval=atoi(yytext);return(NUMBER);}
. {return yytext[0];}
%%


