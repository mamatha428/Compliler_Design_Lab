%{
#include "y.tab.h"
extern int yylval;
%}

%%
[0-9]+	{yylval=atoi(yytext); return ID;}

[-+*/]        {return yytext[0];}
[\n]	yyterminate();

%%

int yywrap(void){
return 1;
}
