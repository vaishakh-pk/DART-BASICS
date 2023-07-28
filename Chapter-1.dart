import 'dart:io';
void main()
{

// ************** PRINT HELLOWORLD **************

  print("Hello world");


  // ***************INPUT FROM USER ****************

  var input = stdin.readLineSync();
  print("Hello $input");

// ****************SUM OF TWO NUMBERS****************

  print("Enter two numbers :");
  var input1 = stdin.readLineSync();
  var input2 = stdin.readLineSync();

// ***************** TYPE CASTING ************************
  var num1 = int.parse(input1!);
  var num2 = int.parse(input2!);

  print("sum=${num1+num2}");

// ******************* DATA TYPES *****************

  int a =10;
  double b =20;

  num num3 = 20.0;
  num num4 =10;

  String name ='virat';
  String name1 = "I'm virat";
  String name3 = ''' Multi-line
  stings
  ''';
  print(name.length);


// ************** CONTROL STATEMENTS ***************


// ************** IF ELSE *******************

  int num5 =10;

  if(num5>0)
  {
    print("is positive");
  }
  else if(num5==0)
  {
    print("value is zero");
  }
  else
  {
     print ("is nagative");
  }

// **************** FOR LOOP ****************

  for(var i=0;i<11;i++)
  {
    print(i);
  }



//  **************LIST******************

  var array = [12, 'name', 20];

  List<int> numberlist = [];

  print(numberlist.length);
  if(numberlist.contains(35))
  {
    print('List has 35');
  }
  else
  {
    print('list doesnt have 35');
  }

  numberlist.add(12);
  numberlist.add(15);
  numberlist.removeAt(0);

  var listToAdd = [0,1,2];
  numberlist.addAll(listToAdd);
  print(numberlist);
  print(numberlist.join('*'));



  List<List<int>> list = [[1,2,3],[4,5,6]];

  print(list[0][1]);


// ************** SET ****************
// List without duplicates

Set<int> numberset = {1,1,1,2,34,5,3,6,4,3,3};

print(numberset);

// ************* MAP *******************

Map<String,String> maps ={
  "name":"virat",
  "age":'34'
};

// OR

var map ={
  "name":"virat",
  "age":34
};

print(maps['name']);
print(map['age']);



}