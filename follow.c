#include<stdio.h>
#include<string.h>
#include<ctype.h>
int n,m=0,p,i=0,j=0;
char a[10][10],followResult[10];
void follow(char c);
void first(char c);
void addResult(char);
//follow code
void follow(char c){
          if(a[0][0]==c)
            addResult('$');
            for(i=0;i<n;i++){
                for(j=2;j<strlen(a[i]);j++){
                    if(a[i][j]==c){
                       if(a[i][j+1]!='\0')
                         first(a[i][j+1]);
                       if(a[i][j+1]=='\0')
                          follow(a[i][0]);
                    }
                 }
             }
  }
  //first code
  void first(char c){
      int k;
      if(!isupper(c))
        addResult(c);
      for(k=0;k<n;k++){
          if(a[k][0]==c){
            if(a[k][2]=='$') 
              follow(a[k][0]);
            else if(islower(a[k][2]))
              addResult(a[k][2]);
            else
               first(a[k][2]);
          }
      }
 }  
 //printing result
 void addResult(char c){
   int i;
    for(i=0;i<=m;i++){
        if(followResult[i]==c)
           return;
     }
        followResult[m++]=c;
     
 }          
       
      
int main(){
       int i;
       int choice;
       char  c,ch;
       printf("Enter the number of  productions:");
       scanf("%d",&n);
       printf("Enter  %d productions \n Production with",n );
       for(int i=0;i<n;i++){
       scanf("%s",a[i]);
       }
       do{
          m=0;
          printf("find follow of--->");
          scanf(" %c",&c);
          follow(c);
          printf("Follow(%c)={",c);
          for(i=0;i<m;i++){
              printf("%c ",followResult[i]);
           }
              printf("}\n");
              printf("Do you want to continue(1 to continue)?");
              scanf("%d",&choice);
           
           }
           while(choice==1);
       
  }
       
       
          
       
