class Color {
  int red;
  int green;
  int blue;
  
  Color(this.red, this.green, this.blue);

  Color.black()
      : red = 0,
        green = 0,
        blue = 0;
  
  @override
  String toString() => '$red $green $blue';
  
}


void main(){
    
   var color = Color.black();
   print(color);
  
}