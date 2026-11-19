/**
 * COMMON - Relación 3
 * Librería de funciones comunes para la Relación 3
 */

import 'dart:io';

int inputInt(String mensaje) {
  bool isNum = false;
  int num = 0;
  while (isNum == false) {
    print(mensaje);
    try {
      num = int.parse(stdin.readLineSync()!).abs();
      isNum = true;
    } on FormatException {
      print("Error: Debe introducir un número entero. Por favor, inténtelo de nuevo.");
    }
  }
  return num;
}

int menu(String menu, int min, int max) {
  print(menu);
  int respuesta = 0;
  while(respuesta < min || respuesta > max) {
    respuesta = inputInt("Introduzca la opción a elegir: ");
    if (respuesta < min || respuesta > max) {
      print("Error: Respuesta no válida. Inténtelo de nuevo.");
    }
  }
  return respuesta;
}