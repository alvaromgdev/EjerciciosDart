/**
 * DART
 * RELACIÓN 3 - EJERCICIO 8
 * Álvaro Mozo Gaspar
 */

/**
 * Validar si una cadena representa un color RGB
 */

import 'dart:io';
import './validaciones.dart';

void main() {
  print("Introduzca un color RGB:");
  String color = stdin.readLineSync()!;

  if (isRGB(color)) {
    print("El color introducido es válido");
  } else {
    print("El color introducido no es válido");
  }
}