class BigObject {
  int anInt = 0;
  String aString = '';
  List<double> aList = [];
  bool done  = false;
  
  void allDone() {
    done = true;
  }
}

BigObject fillObject(BigObject obj) {
  return obj
    ..anInt = 1
    ..aString = 'String!'
    ..aList.add(3)
    ..allDone();
}

void main(){
 var bigObject = BigObject();
 fillObject(bigObject);
 print(' ${bigObject.anInt} ${bigObject.aString} ${bigObject.aList} ${bigObject.done}');
}