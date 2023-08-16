// ============================== FUNCTIONS ============================

void main()
{
    sum();
    sumparams(3,7);
    print(sumReturn(10,12));
    sumReq(firstNumber:100,secondNumber:300,optional3:20);
    sumFunction(20,25,sumparams);
    sumAnonymous(23,24,(int f,int s){
        print("Function sum ${f+s}");
    },);
    sumFuture(12,12);
    sumDep();
}


// ************** FUNCTIONS **************

// ******* DIRECT CALL*******
void sum()
{
    print(2+3);
}

// ********* PARAMETER PASSING **********
void sumparams(int a,int b)
{
    print('${a+b}');
}

// *********** RETURNTYPE ****************
int sumReturn(int a, int b)
{
    return a+b;
}


// ************ NAMED PARAMETERS - REQUIRED/OPTIONAL/DEFAULT **************

// optional parameters can be defined which are not particularly necessary to be passed during function call.
// optional parameters are to be defined only after the requred parameters

void sumReq({required int firstNumber,required int secondNumber, int optional=0, int? optional2,int optional3=0})
{
    if(optional2=='null')
    {
        optional2=0;
    }
    print(firstNumber+secondNumber+optional3);
}

// ***************** PASSING FUNCTION AS PARAMETER *********************

void sumFunction(int a, int b, void Function(int,int) customsum)
{
    customsum(a,b);
}

// *************** ANONYMOUS FUNCTION **********************
void sumAnonymous(int a,int b, void Function(int,int) customsum)
{
    customsum(a,b);
}


// **************** FUTURE FUNCTIONS ***************************
// Write functions whose required time of completion is not sure but other functions are to be executed parallel without considering this function
Future<void> sumFuture(int a,int b) async{
    print("sum future ${a+b}");
}


// ****************** DEPENDANT FUTURE FUNCTIONS ********************

Future<int> depFuture(int a,int b) async{
  await Future.delayed(Duration(seconds: 3)); //Mimic a 3 second long background process
  print("Denpendant future");
  return a+b;
}

Future<void> sumDep() async{
   await depFuture(33,34);
  print('Dependant sum');
}