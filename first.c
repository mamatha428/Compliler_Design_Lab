#include<stdio.h>
#include<ctype.h>
void first(char[],char);
void addToResultSet(char[],char);
int nop;
char p[10][10];

void first(char* result,char c){
    int i,j,k;
    char subRes[20];
    int foundE;
    subRes[0]='\0';
    result[0]='\0';
    //if c is terminal
    if(!(isupper(c))){
       addToResultSet(result,c);
       return;
    }
    //if c is non-terminal
    for(i=0;i<nop;i++){
         if(p[i][0]==c){
            if(p[i][2]=='$')
               addToResultSet(result,'$');
            else{
               j=2;
               while(p[i][j]!='\0'){
                   foundE=0;
                   first(subRes,p[i][j]);
                   for(k=0;subRes[k]!='\0';k++)
                        addToResultSet(result,subRes[k]);
                   for(k=0;subRes[k]!='\0';k++){
                        if(subRes[k]=='$'){
                            foundE=1;
                            break;
                         }
                     }
                     if(!foundE)
                       break;
                    j++;
               }
            }
         }
      }
      return;
  }
  
  void addToResultSet(char result[],char val){
      int k;
      for(k=0;result[k]!='\0';k++){
          if(result[k]==val)
             return;//if in first if the terminal is already there then simply return
       }
           result[k]=val;
           result[k+1]='\0';
       
    }
    
               
               
                         
    
int main(){
    int i;
    char choice;
    char c;
    char result[20];
    printf("How many productions?:");
    scanf("%d",&nop);
    for(i=0;i<nop;i++){
       scanf("%s",p[i]);
    }
    do{
         printf("\n Find the First of:");
         scanf(" %c",&c);//here also space is must
         first(result,c);//calling first function to compute first of c
         printf("\n First(%c)={",c);
         for(i=0;result[i]!='\0';i++){
         printf("%c",result[i]);//displaying the result
         }
         printf("}\n");
         printf("press y to continue:");
         scanf(" %c",&choice);//before % space is must
     }
     while(choice=='y'||choice=='Y');
  }
