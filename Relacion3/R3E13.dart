/**
 * DART
 * RELACIÓN 3 - EJERCICIO 13
 * Álvaro Mozo Gaspar
 */

/**
 * Manejo de listas
 */

import 'dart:io';
import './common.dart';

void main() {
  // Declaramos la lista inicial de colores
  List<String> colores = ['rojo', 'verde', 'azul'];
  int opcion = 0;

  // Repetimos el menú hasta seleccionar la opción 5
  while (opcion != 5) {
    opcion = menu(
      "\n=== MENÚ DE COLORES ===\n"
      "1. Incluir color\n"
      "2. Eliminar color\n"
      "3. Buscar color\n"
      "4. Mostrar lista de colores\n"
      "5. Salir",
      1,
      5
    );

    switch (opcion) {

      // 1. Incluir color
      case 1:

        stdout.write("Introduzca el color que desea incluir: ");
        String color = stdin.readLineSync()!;

        // Comprobamos que el color no esté ya incluido
        if (colores.contains(color)) {
          print("El color ya existe en la lista.");
        } else {
          colores.add(color);
          print("Color incluido correctamente.");
        }

        break;

      // 2. Eliminar color
      case 2:

        stdout.write("Introduzca el color que desea eliminar: ");
        String color = stdin.readLineSync()!;

        // Buscamos la posición del color
        int posicion = colores.indexOf(color);

        if (posicion != -1) {
          colores.removeAt(posicion);
          print("Color eliminado correctamente.");
        } else {
          print("El color no existe en la lista.");
        }

        break;

      // 3. Buscar color
      case 3:

        stdout.write("Introduzca el color que desea buscar: ");
        String color = stdin.readLineSync()!;

        int posicion = colores.indexOf(color);

        if (posicion != -1) {
          print("El color se encuentra en la posición $posicion.");
        } else {
          print("El color no existe en la lista.");
        }

        break;

      // 4. Mostrar lista de colores
      case 4:

        if (colores.isEmpty) {
          print("La lista de colores está vacía.");
        } else {
          print("Lista de colores: $colores");
          print("Número de colores: ${colores.length}");
        }

        break;

      // 5. Salir
      case 5:

        print("FIN DEL PROGRAMA");
        break;
    }
  }
}