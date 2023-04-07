class Recipe {
  final List<String> ingredients;
  final int calories;
  final double milligramsOfSodium;

  const Recipe(this.ingredients, this.calories, this.milligramsOfSodium);

  @override
  String toString() => '$ingredients $calories $milligramsOfSodium';
}



void main(){
  var recipe = Recipe(['Chile', 'Mole', 'Chipotle'], 100, 5.6);
  print(recipe);
}