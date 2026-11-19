/**
 * DART
 * RELACIÓN 3 - EJERCICIO 4
 * Álvaro Mozo Gaspar
 */

/**
 * Programa que inicializa datos de varios tipos para concatenarlo con "+" a un String
 */
String typeToString(dynamic type) {
  String resultado = "";
  resultado += type.toString();
  return resultado;
}

String str = "String = ";
int num = 5;
double numDouble = 25.36;
bool booleano = true;
List lista = [1, 2, 3, 4];
Map mapa = {1: "Primero", 2: "Segundo", 3: "Tercero"};
enum enumNum {uno, dos, tres}
Set numSet = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

void main() {
  print("Concatenación con entero\t" + typeToString(num));
  print("Concatenación con decimal\t" + typeToString(numDouble));
  print("Concatenación con booleano\t" + typeToString(booleano));
  print("Concatenación con Lista\t" + typeToString(lista));
  print("Concatenación con Map\t" + typeToString(mapa));
  print("Concatenación con enum\t" + typeToString(enumNum));
  print("Concatenación con Set\t" + typeToString(numSet));
}