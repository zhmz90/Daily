#include<stdio.h>
#include<stdlib.h>

typedef struct Data{
  int dt1;
  int dt2;
  int dt3;
}Data;

Data* init(){
  Data *a = (Data *)malloc(sizeof(Data));
  a->dt1 = 1;
  a->dt2 = 2;
  a->dt3 = 3;
  return a;
}


int main(){
  Data *tmp;
  tmp = init();

  printf("%d\t%d\t%d\n", tmp->dt1,tmp->dt2,tmp->dt3);
  
  printf("sizeof int %d\n",(int)sizeof(int));

  return 0;
}
