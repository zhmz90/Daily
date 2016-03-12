#include<stdlib.h>

void test(int i){
  printf("in test(%d)\n",i);
  
}

void test(){
  printf("in test()\n");
  
}

int main(){

  test();
  test(1);





  return 0;
}
