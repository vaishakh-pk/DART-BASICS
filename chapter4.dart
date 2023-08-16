// ========================== CLASS ==================================

class Person{
  final String? name; //Final. So,once assigned, the values cannot be changed
  final int _age; //"_" before the variable name makes it a private member

  Person(this.name,this._age);//Constructor

  Person.ageBelow50(this.name,this._age); //Named Constructors
}

void main()
{
  final person = Person("Virat",30); //Object defenition
  final person2 = Person.ageBelow50("Dhoni", 38);
  // person.name="Virat";
  print(person.name);
  print(person._age);
  print(person2.name);
}