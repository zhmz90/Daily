#include<stdio.h>
#include<stdlib.h>
typedef struct {
  int n1;
  int n2;
  unsigned int l_text;
  char *t;
} Bam_t;

typedef struct {
  unsigned int A:16;
  unsigned int B:16;
  //  unsigned int C:8;
  char * C;
} Bam_core_t;

typedef struct {
  Bam_t bt;
  Bam_core_t bct;
} Bam_A;

typedef struct {
  unsigned int one:2,end:30;
} Hard;



Bam_core_t * init2(){
  return (Bam_core_t *)calloc(1,sizeof(Bam_core_t));
}

Bam_core_t* add1(Bam_core_t *bcore){
  bcore->A += 1;
  bcore->B += 1;
  bcore->C = "You are success!";
  return bcore;
}



Bam_t* init(){
  Bam_t *b = (Bam_t *)calloc(1,sizeof(Bam_t));
  return b;
}
/*
Bam_t* test_memset(Bam_t *B){
  Bam_t *b= (Bam_t *)memset(B,2,sizeof(Bam_t));
  
  printf("%d\n",b->n1);
  printf("%d\n",b->n2);
  printf("%d\n",b->l_text);
  printf("end in test_memeset\n");
  
  return b;
}
*/
 

int modifty(Bam_t * b){
  b->n1 = 10;
  b->n2 = 10;
  b->l_text = 10;
  /*
  printf("%d\n",b->n1);
  printf("%d\n",b->n2);
  printf("%d\n",b->l_text);
  printf("end in modify\n");
  */
  return 0;
}

int main(){

  /*
  printf("sizeof(int) is %lu\t",sizeof(int));
  printf("sizeof(unsigned int) is %lu\n",sizeof(unsigned int));
  Bam_t *b = init();
  printf("%d\n",b->n1);
  printf("%d\n",b->n2);
  printf("%d\n",b->l_text);

  test_memset(b);
  printf("%d\n",b->n1);
  printf("%d\n",b->n2);
  printf("%d\n",b->l_text);
  
  Bam_core_t * bcore = init2();

  add1(bcore);
  
  printf("%s\n",bcore->C);
  */

  Hard h;
  h.one = 2;
  h.end = 3;
  printf("h.one is %d\n", h.one);
  printf("h.end is %d\n", h.end);
  return 0;
}

