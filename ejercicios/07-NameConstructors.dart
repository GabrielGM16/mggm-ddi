void main() {
 
  final Map<String, dynamic> rawJson = {
    'name': 'Spiderman',
    'powe': 'Araña',
    'isAlive': true
  };
  
  final spiderman = Hero.fromJson(rawJson);
  
  final other = Hero(power: 'none', name: 'other', isAlive: false);
  print(spiderman);
 
}

 class Hero{
    String name;
    String power;
    bool isAlive;
    
    Hero({
      required this.name,
      required this.power,
      required this.isAlive
    });
    
    Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found',
    power = json['power']?? 'no power Found',
    isAlive = json['isAlive']?? 'No isAlive Found';
  
  
  @override
  String toString(){
    return '$name, $power, isAlive: ${isAlive ? 'Yes': 'No'}';
  }
}