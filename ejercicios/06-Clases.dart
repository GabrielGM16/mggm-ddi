void main() {
 
  final Hero wolvering = new Hero(name: "wolvering", power: "Otro");
  
  print(wolvering);
  print(wolvering.name);
  print(wolvering.power);
  
  //generra otro superrheroe sin poder
  //y mostrar toda la informacion
  
  print("");
  print("-------------------------------------------------------------------------------------");
  print("");
  
   final Hero donPancho = new Hero(name: "Don Pancho" );
  
  print(donPancho);
  print(donPancho.name);
  print(donPancho.power);
  
  
  
}

class Hero{
  String name;
  String power;
  
  Hero({required this.name, this.power = 'Sin Poder'});
  
  //Hero (this.name, this.power);
  
  //Hero (String pName, pPower): name = pName,power = pPower;
  
  @override
  String toString(){
    return '$name - $power';
  }
} 
