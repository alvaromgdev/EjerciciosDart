/**
 * DART
 * RELACIÓN 3 - EJERCICIO 10
 * Álvaro Mozo Gaspar
 */

/**
 * Validar un correo electrónico
 */

import 'dart:io';
import './validaciones.dart';

void main() {
  print("Introduzca un correo electrónico:");
  String email = stdin.readLineSync()!;

  if (isEmail(email)) {
    print("El correo electrónico es válido");
  } else {
    print("El correo electrónico no es válido");
  }
}