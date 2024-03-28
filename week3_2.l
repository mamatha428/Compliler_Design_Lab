%{
#include <stdio.h>
int yylex(void);
void yyerror(char *s);
%}
      
            %token INTEGER     
            %left '+'
            %left '*'
      
            %%
            E1 : E '\n'   { printf("valid"); }
		|
                  ;
      
            E  : E '+' E     {  }
                  | E '*' E     { }
                  | '(' E ')'      { }
                  | INTEGER           {  }
                  ;
      
            %%
            
 int main(void) 
 {
yyparse();
return 0;
}
 void yyerror(char * s)
 {
fprintf(stderr, "%s\n", s);
    }
      
        
