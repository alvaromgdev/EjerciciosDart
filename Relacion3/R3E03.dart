/**
 * DART
 * RELACIÓN 3 - EJERCICIO 3
 * Álvaro Mozo Gaspar
 */

/**
 * Analizar una cadena y ver si está todo en mayúsculas, todo en minúsculas o ni uno ni lo otro
 */

import 'dart:io';
import './common.dart';

bool isMayus(String str) {
  bool isMayus = false;
  if (str == str.toUpperCase()) {
    isMayus = true;
  }
  return isMayus;
}

bool isMinus(String str) {
  bool isMinus = false;
  if (str == str.toLowerCase()) {
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
    print("La cadena introducida contiene tanto mayúsculas como minúsculas");
  }
}