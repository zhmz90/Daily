#include <iostream>

using namespace std;

class A{
  A *a;
public:
  A(){cout<<"one\n";this->a = new A();}
};


int main(){
  A *t = new A();


  return 0;
}


