/**
 * DART
 * RELACIÓN 3 - EJERCICIO 11
 * Álvaro Mozo Gaspar
 */

/**
 * Validar un DNI español
 */

import 'dart:io';
import './validaciones.dart';

void main() {
  print("Introduzca un DNI:");
  String dni = stdin.readLineSync()!;

  if (isDNI(dni)) {
    print("El DNI es válido");
  } else {
    print("El DNI no es válido");
  }
}