/**
 * DART
 * RELACIÓN 3 - EJERCICIO 2
 * Álvaro Mozo Gaspar
 */

/**
 * Juego de adivinar un número entre 1 y 100
 */

import 'dart:math';
import './common.dart';

void main() {
  int randNum = Random().nextInt(99) + 1;
  bool guessed = false;
  int contador = 0;
  
  print("=== ADIVINA EL NÚMERO SECRETO ===");
  while (guessed == false) {
    int num = inputInt("Introduce un número entre 1 y 100: ");
    contador++;
    if (num == randNum) {
      print("¡FELICIDADES! Has adivinado el número secreto");
      print("Número secreto: $randNum");
      print("Número de intentos: $contador");
      guessed = true;
    } else {
      if (num > randNum) {
        print("El número introducido es mayor que el número secreto");
      } else {
        print("El número introducido es menor que el número secreto");
      }
    }
  }
}