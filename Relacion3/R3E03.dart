/**
 * DART
 * RELACIÓN 3 - EJERCICIO 3
 * Álvaro Mozo Gaspar
 */

/**
 * Analizar una cadena y comprobar si está toda en mayúsculas,
 * toda en minúsculas o contiene ambas.
 */

import 'dart:io';

bool isMayus(String str) {
  bool isMayus = false;

  if (str == str.toUpperCase() && str.contains(RegExp(r'[A-ZÁÉÍÓÚÜÑ]'))) {
    isMayus = true;
  }

  return isMayus;
}

bool isMinus(String str) {
  bool isMinus = false;

  if (str == str.toLowerCase() && str.contains(RegExp(r'[a-záéíóúüñ]'))) {
    isMinus = true;
  }

  return isMinus;
}

void main() {
  print("Introduzca una cadena de texto por teclado: ");
  String input = stdin.readLineSync()!;

  if (isMayus(input)) {
    print("La cadena introducida solo contiene mayúsculas");
  } else if (isMinus(input)) {
    print("La cadena introducida solo contiene minúsculas");
  } else {
    print("La cadena introducida no está completamente en mayúsculas ni en minúsculas");
  }
}