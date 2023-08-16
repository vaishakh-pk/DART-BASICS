// ========================== CONST and FINAL ==============================

void main()
{
  // ********************** FINAL ***************************
  // Value can be retreived and added as final from different sources (runtime)

  final String name;
  name = "name 1";
  // name = "rename"; *Operation not possible as final cannot be modified

  final List<int> numberList;
  numberList=List.empty();
  numberList.add(1);
  numberList.add(20);
  //Incase of list as final,List operations like add and remove operations can be done
  // numberList = [1,2,3]; This cannot be done


  // ************************ CONST ************************
  const String constname = 'name1'; //content is to be declared at declartion itself and cannot be modified (compile time)
}