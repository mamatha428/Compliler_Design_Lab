
%{
    #include<stdio.h>
    #include<assert.h>
    void push(int val);
    int pop(void);
    void yyerror(char *s);
    
%}

%token ID

%%

S     : E  {printf("= %d\n",top());}
      ;
E     : E E '+' {push(pop()+pop());}
     | E E '-' {int temp=pop();push(pop()-temp);}
     | E E '*' {push(pop()*pop());}
     | E E '/' {int temp=pop();push(pop()/temp);}
     | ID    {push(yylval);}
     ;

%%

int st[100];
int i=0;

void push(int val)
{
    assert(i<100);
    st[i++]=val;
   
}

int pop()
{
    assert(i>0);
    return st[--i];

}

int top()
{
    assert(i>0);
    return st[i-1];
}
int main()
{
    yyparse();
    return 0;
}
void yyerror(char * s) {
              fprintf(stderr, "%s\n", s);
            }
     

