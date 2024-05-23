void main() {
 
  final mySquere = Squere(side: 10);
  mySquere.side= 2;
  
  print('Area: ${mySquere.area}');
}

class Squere{
  double _side; //lado por lado
  
  Squere({required double side}): assert(side >= 0, 'side mut be >=0'),
  _side = side;
  
  double get area{
    return _side * _side;
  }
  
  set side(double value){
    if (value < 0) throw 'value must be >= 0';
    _side = value;
  }
  
  
}