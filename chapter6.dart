// ======================= EXCEPTION HANDLING ===============================

class InvalidPhonenumberException implements Exception{}

bool? validatePhoneNumber(String phone)
{
  if(phone.length == 10)
  {
    return true;
  }
  else
  {
    throw InvalidPhonenumberException();
  }
}
void main()
{
  try {
  final phonevalid = validatePhoneNumber('7682');
  }
  on InvalidPhonenumberException catch(_)
  {
    print("Invalid phone number");
  }
  catch(e)
  {
    print(e);
  }
}