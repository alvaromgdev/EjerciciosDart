/**
 * COMMON - Relación 3
 * Librería de funciones comunes para la Relación 3
 */

import 'dart:io';

/**
 * Función que solicita un número entero por teclado
 * Recibe un mensaje de tipo String
 * Devuelve un número entero
 */
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

/**
 * Función que solicita un número entero positivo por teclado
 * Recibe un mensaje de tipo String
 * Devuelve un número entero mayor que 0
 */
int inputPositiveInt(String mensaje) {
  bool isNum = false;
  int num = 0;
  while (isNum == false) {
    print(mensaje);
    try {
      num = int.parse(stdin.readLineSync()!);
      if (num > 0) {
        isNum = true;
      } else {
        print("Error: Debe introducir un número entero positivo. Por favor, inténtelo de nuevo.");
      }
    } on FormatException {
      print("Error: Debe introducir un número entero. Por favor, inténtelo de nuevo.");
    }
  }
  return num;
}

/**
 * Función que solicita un una opción numérica para menús
 * Recibe un mensaje de tipo String, y dos enteros, mínimo y máximo
 * Devuelve un número entero, número de opción del menú
 */
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