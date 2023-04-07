class MyClass {
  final int anInt;
  final String aString;
  final double aDouble;
  
  MyClass(this.anInt, this.aString, this.aDouble);

  @override
  String toString() => '$anInt $aString $aDouble';
}

void main(){
  var Myclass = MyClass(8 , 'Hola' ,  56.4);
  print(Myclass);
}