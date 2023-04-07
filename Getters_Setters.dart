class InvalidPriceException {}

class ShoppingCart {
  List<double> _prices = [4.5, 8.3, 5.6, 2.3];
  
  double get total => _prices.fold(0, (e, t) => e + t);
  
  set prices(List<double> value) {
    if (value.any((p) => p < 0)) {
      throw InvalidPriceException();
    }
    
    _prices = value;
  }
  
}

void main(){
  var carritoCompras = ShoppingCart();
  print(carritoCompras.total);
}