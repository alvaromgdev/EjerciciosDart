/**
 * DART
 * RELACIÓN 3 - EJERCICIO 14
 * Álvaro Mozo Gaspar
 */

/**
 * Manejo de mapas
 */

import 'dart:io';
import './common.dart';

void main() {

  // Declaramos el mapa inicial del grupo de WhatsApp
  Map<String, String> grupoWhatsapp = {
    'Juan': '611222333',
    'María': '612345678',
    'Ana': '666778899'
  };

  int opcion = 0;

  // Repetimos el menú hasta seleccionar la opción 5
  while (opcion != 5) {

    opcion = menu(
      "\n=== MENÚ DEL GRUPO DE WHATSAPP ===\n"
      "1. Incluir persona\n"
      "2. Eliminar persona\n"
      "3. Buscar persona\n"
      "4. Mostrar componentes del grupo\n"
      "5. Salir",
      1,
      5
    );

    switch (opcion) {

      // 1. Incluir persona
      case 1:

        stdout.write("Introduzca el nombre de la persona: ");
        String nombre = stdin.readLineSync()!;

        stdout.write("Introduzca su número de teléfono: ");
        String telefono = stdin.readLineSync()!;

        // Insertamos la persona solamente si no existe
        grupoWhatsapp.putIfAbsent(nombre, () => telefono);

        if (grupoWhatsapp[nombre] == telefono) {
          print("Persona incluida o ya existente en el grupo.");
        }

        break;

      // 2. Eliminar persona
      case 2:

        stdout.write("Introduzca el nombre de la persona que desea eliminar: ");
        String nombre = stdin.readLineSync()!;

        if (grupoWhatsapp.containsKey(nombre)) {
          grupoWhatsapp.remove(nombre);
          print("Persona eliminada correctamente.");
        } else {
          print("La persona no existe en el grupo.");
        }

        break;

      // 3. Buscar persona
      case 3:

        stdout.write("Introduzca el nombre de la persona que desea buscar: ");
        String nombre = stdin.readLineSync()!;

        if (grupoWhatsapp.containsKey(nombre)) {
          print("Nombre: $nombre");
          print("Teléfono: ${grupoWhatsapp[nombre]}");
        } else {
          print("La persona no existe en el grupo.");
        }

        break;

      // 4. Mostrar componentes del grupo
      case 4:

        if (grupoWhatsapp.isEmpty) {
          print("El grupo está vacío.");
        } else {
          print("Componentes del grupo:");

          // Recorremos las parejas clave-valor
          for (MapEntry<String, String> persona in grupoWhatsapp.entries) {
            print("Nombre: ${persona.key} - Teléfono: ${persona.value}");
          }

          print("Número de personas: ${grupoWhatsapp.length}");
          print("Nombres: ${grupoWhatsapp.keys}");
          print("Teléfonos: ${grupoWhatsapp.values}");
        }

        break;

      // 5. Salir
      case 5:

        print("FIN DEL PROGRAMA");
        break;
    }
  }
}