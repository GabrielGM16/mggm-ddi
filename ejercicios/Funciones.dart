void main() {
  print(saludar());
  print(helloTodos());
  print(agregarNumero(2,2));
  print(agregarDosNUmeros(6));
  print(greetPerson( mensaje: "que hubo", name :"Juan"));
  print(greetPerson( name :"Pablo"));
}

String saludar(){
  return "Hola a todos";
}

//lambda

String helloTodos() => "Hello Everyone";

int agregarNumero(int a , int b){
  return a +b;
}

//convertir funcion a lambda se debe llmar "addTwoNumbers"

//int addTwoNumbers() => ([int a] + [int b] );

//variables opcionales

int agregarDosNUmeros(int a, [int? b/*int b = 0*/]){
  //b = b ?? 0;
  b ??=0;
  return a + b;
}

//variable por referencia

String greetPerson({required String name, String? mensaje = 'Hola'}){
  return '$mensaje, $name';
}