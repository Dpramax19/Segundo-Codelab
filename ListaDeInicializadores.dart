class FirstTwoLetters {
  final String letterOne;
  final String letterTwo;

  FirstTwoLetters(String word)
      : assert(word.length >= 2),
        letterOne = word[0],
        letterTwo = word[1];

  @override
  String toString() => '$letterOne $letterTwo';
}

void main(){

  var firstTwoLetters = FirstTwoLetters('word');
   print(firstTwoLetters);

}