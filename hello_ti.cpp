#include <iostream>
#include "hello_ti_foo.h"

using namespace std;

int main() {
  cout<<"Welcone to TI inside MAIN "<<endl;
  // call a function in another file
  myfoo();
  return 0;
}
