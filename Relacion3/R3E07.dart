/**
 * DART
 * RELACIÓN 3 - EJERCICIO 7
 * Álvaro Mozo Gaspar
 */

/**
 * Introducir una frase y una subcadena
 * Comprobar si está contenida en la frase
 * y obtener su primera y última posición
 */

import 'dart:io';

void main() {
  // Solicitamos la frase al usuario
  print("Introduzca una frase:");
  String frase = stdin.readLineSync()!;

  // Solicitamos la subcadena que queremos buscar
  print("Introduzca una subcadena:");
  String subcadena = stdin.readLineSync()!;

  // Comprobamos si la subcadena está contenida
  bool contiene = frase.contains(subcadena);

  print("¿La frase contiene la subcadena? $contiene");

  // Obtenemos la primera aparición
  int primeraPosicion = frase.indexOf(subcadena);

  // Obtenemos la última aparición
  int ultimaPosicion = frase.lastIndexOf(subcadena);

  if (contiene) {
    print("Primera posición: $primeraPosicion");
    print("Última posición: $ultimaPosicion");
  } else {
    print("La subcadena no se encuentra en la frase.");
  }
}