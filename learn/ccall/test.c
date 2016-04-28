#include<stdio.h>
#include<stdlib.h>

int test(int t[2]){

  t[1] = 12;

  return 0;
}

int add(int a, int b){
  return a+b;
}

//

typedef int (*gt)(int, int);

int main(){
  int i=0;
  int a[] = {1,2};

  test(a);
  printf("%d\t", a[0]);
  printf("%d\n", a[1]);

  int (*g)(int, int) = add;

  printf("%d", g(1,3));
  //g ad = &add;
  //printf("%d\n", ad(1,2));
  
  gt adt = *add;
  printf("%d\n", adt(1,2));
  return 0;
}
