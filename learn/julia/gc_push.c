#include <stdlib.h>
#include <stdio.h>

typedef struct _jl_gc_frame_t {
  int nroots;
  //struct _jl_gc_frame_t *prev;
  float *pgcstack;
} jl_gc_frame_t;


void print_gcframe(jl_gc_frame_t *f, int num_hid){
  printf("==========================\n");
  printf("nroots: %d\n", f->nroots);
  printf("second: %f\n", *(f->pgcstack));
  int i = 1;
  while (i <= num_hid){
   
    printf("field_etra %i: %d\n", i, *((int *)(f->pgcstack + i)));
    i += 1;
  }
}

int main(){
  jl_gc_frame_t *f1=NULL, *f2=NULL;
  float pgcstack = 2.0;
  float *jl_pgcstack = &pgcstack;
  int tmp1=3,tmp2 =4;
  int *arg1 = &tmp1;
  int *arg2 = &tmp2;
  void *__gc_stkf1[] = {(void*)1, jl_pgcstack, arg1};
  void *__gc_stkf2[] = {(void*)1, jl_pgcstack, arg1, arg2};
  
  f1 = (jl_gc_frame_t *)(__gc_stkf1);
  f2 = (jl_gc_frame_t *)(__gc_stkf2);

  printf("==========================\n");
  printf("nroots: %d\n", f1->nroots);
  printf("second: %f\n", *(f1->pgcstack));
  int i = 1;
  while (i <= 1){
   
    printf("field_etra %i: %d\n", i, *((int *)(f1->pgcstack + i)));
    i += 1;
  }
  printf("==========================\n");
  printf("nroots: %d\n", f2->nroots);
  printf("second: %f\n", *(f2->pgcstack));
  i = 1;
  while (i <= 2){
   
    printf("field_etra %i: %d\n", i, *((int *)(f2->pgcstack + i)));
    i += 1;
  }
  //print_gcframe(f1,1);
  //print_gcframe(f2,2);
  return 0;
}
