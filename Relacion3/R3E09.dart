/**
 * DART
 * RELACIÓN 3 - EJERCICIO 9
 * Álvaro Mozo Gaspar
 */

/**
 * Validar una URL
 */

import 'dart:io';
import './validaciones.dart';

void main() {
  print("Introduzca una URL:");
  String url = stdin.readLineSync()!;

  if (isURL(url)) {
    print("La URL es válida");
  } else {
    print("La URL no es válida");
  }
}
