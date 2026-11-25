/**
 * DART
 * RELACIÓN 3 - EJERCICIO 4
 * Álvaro Mozo Gaspar
 */

/**
 * Programa que inicializa datos de varios tipos para
 * concatenarlos con "+" a un String.
 */

// Declaramos el tipo enumerado
enum EnumNum { uno, dos, tres }

/**
 * Función que convierte un dato de cualquier tipo a String
 * Recibe un parámetro de tipo dynamic
 * Devuelve una cadena de texto
 */
String typeToString(dynamic type) {
  String resultado = "";
  resultado += type.toString();
  return resultado;
}

// Declaramos las variables de diferentes tipos
String str = "String = ";
int num = 5;
double numDouble = 25.36;
bool booleano = true;
List<int> lista = [1, 2, 3, 4];
Map<int, String> mapa = {1: "Primero", 2: "Segundo", 3: "Tercero"};
EnumNum enumValor = EnumNum.uno;
Set<int> numSet = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

void main() {
  print("Concatenación con String\t" + str + typeToString("Hola"));
  print("Concatenación con entero\t" + typeToString(num));
  print("Concatenación con decimal\t" + typeToString(numDouble));
  print("Concatenación con booleano\t" + typeToString(booleano));
  print("Concatenación con Lista\t" + typeToString(lista));
  print("Concatenación con Map\t" + typeToString(mapa));
  print("Concatenación con Enum\t" + typeToString(enumValor));
  print("Concatenación con Set\t" + typeToString(numSet));
}