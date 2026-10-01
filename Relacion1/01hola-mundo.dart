/* RELACIÓN 1 - EJERCICIO 1
   1hola-mundo.dart
   24 Septiembre 2026
   Álvaro Mozo Gaspar */

void main() {

  String nombre = "Álvaro"; // Tipo y nombre de la variable
  int veces = 1;
  // var nombre2 = "Hola mundo"; // Se podría no indicar el tipo de la variable, Dart lo infiere automáticamente

  print("¡Hola, $nombre!"); // La variable con dólar delante dentro del print muestra su valor
  print("Has ejecutado el programa ${veces*2-1} vez(es)"); // Si es una expresión se pone entre llaves
}