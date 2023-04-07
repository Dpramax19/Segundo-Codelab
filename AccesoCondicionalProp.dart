// This method should return the uppercase version of `str`
// or null if `str` is null.
String? upperCaseIt(String? str) {
  return str?.toUpperCase();
}

void main(){
  String str = 'str';         
//String? str = null; Mandaria en pantalla null
  print(upperCaseIt(str));
}