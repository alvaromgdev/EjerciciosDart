/*  DART
    RELACIÓN 2 - EJERCICIO 1
    Álvaro Mozo Gaspar */

/**
 * Función que obtiene y muestra la fecha y hora actuales
 * No recibe parámetros y no devuelve ningún valor
 */
void mostrarFechaHora() {

  // Obtenemos la fecha y hora actuales
  DateTime fechaActual = DateTime.now();

  // Mostramos el resultado por pantalla
  print("Fecha y hora actuales: $fechaActual");
}

void main() {

  // Llamada a la función para mostrar la fecha y hora actuales
  mostrarFechaHora();

}