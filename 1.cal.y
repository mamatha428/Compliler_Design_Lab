%{
            #include <stdio.h>
            int yylex(void);
            void yyerror(char *s);
       %}
      
            %token INTEGER     
            %left '+'
            %left '*'
      
            %%
            lines : lines expr '\n'   { printf("%d\n", $2); }
                  | lines '\n'{}
		|
                  ;
      
            expr  : expr '+' expr     { $$ = $1 + $3; }
                  | expr '*' expr     { $$ = $1 * $3; }
                  | '(' expr ')'      { $$ = $2; }
                  | INTEGER           { $$ = $1; }
                  ;
      
            %%
            
int main(void) {
yyparse();
return 0;
}
void yyerror(char * s) {
              fprintf(stderr, "%s\n", s);
            }
     
        
