void main() {
  
  final plantaViento = PlantaVieto(energiaInicial: 100);
  final plantaNuclear = PlantaNuclear(cantidadEnergia: 100);

  print('viento= ${cargarBateria{plantaViento}}');
  print('Nuclear = ${cargarBateria{plantaNuclear}}');                               
                                 
}

double cantidadEnergia(PlantaEnergia planta){
  if(planta.cantidadaEnergia<10){
    throw Exception('Sin ENergiaSuficiente');
  }
  
  return planta.cantidadEnergia -10;
  
}

enum TipoPlanta{
  agua,
  viento,
  nuclear
}
  


abstract class Plantaenergia{
  double cantidadEnergia;
  final TipoPlanta tipo; //Agua o viento(nuclear etc..)
  
  Plantaenergia({
    required this.cantidadEnergia,
    required this.tipo
  });
  
  void consumirEnergia(double cantidad);
}

//extend or implements
//
class PlantaAire extends Plantaenergia{
  PlantaAire({required double energiaInicial})
    :super(cantidadEnergia: energiaInicial, tipo: TipoPlanta.viento);
  
  @override
  void consumirEnergia(double cantidad){
    cantidadEnergia -= cantidad;
  }
}

class Plantanuclear implements Plantaenergia{
  @override
  double cantidadEnergia;
  
  @override
  final TipoPlanta tipo = TipoPlanta.nuclear;
  
  Plantanuclear({required this.cantidadEnergia});
  
  @override
  void consumirEnergia(double cantidad){
    cantidadEnergia -= cantidad;
  }
  
}