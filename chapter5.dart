// =============== Class And Inheritance ====================

 abstract class Animal{

  void sayHello()
  {
    print("Animal Say Hello");
  }

  void initial()
  {
    print("Animal Initial");
  }
}

class Human extends Animal
{
  void sayName()
  {
    print("Say name");
  }

@override //Override the function in baseclass / superclass
  void initial() 
  {
    print("Modified by human");
  super.initial(); // call the function from the baseclass / superclass
  }
}


abstract class New //This abstract class acts as an interface only with the declarations
{
  void sayNew();
}

class Newchild implements New
{
  @override
  void sayNew() // Implements the defenitions of the class New
  {
    print("Implemented sayNew Function");
  }
}

// ******************* MIXINS **********************
// For multiple inheritance
mixin Bird1
{
  int age =1;
  void sayHello()
  {
    print("Bird1 say Hello");
  }
}

mixin Bird2
{
  int age =2;
  void sayHello()
  {
    print("Bird2 say Hello");
  }
}

class multiple with Bird1,Bird2
{

}




void main()
{
  // final animal =Animal(); This cannot be done as Animal class is an Abstract class. 
  //It cannot have an object but is used for inhertance purpose only
  final human = Human();
  human.sayHello();
  human.sayName();
  human.initial();

  final test = Newchild();
  test.sayNew();
}