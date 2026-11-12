/*  DART
    RELACIÓN 2 - EJERCICIO 2
    Álvaro Mozo Gaspar */

/**
 * Función que obtiene y muestra la fecha y hora actuales,
 * atrasadas y adelantadas según el número de horas indicado
 * Recibe un parámetro de tipo entero (horas)
 * No devuelve ningún valor
 */
void mostrarFechaHora(int horas) {

  // Obtenemos la fecha y hora actuales
  DateTime fechaActual = DateTime.now();

  // Mostramos el resultado por pantalla
  print("Fecha y hora actuales: $fechaActual");
  DateTime fechaAdelante = fechaActual.add(Duration(hours: horas));

  if (horas < 0) {
    print("Fecha y hora atrasadas ${-horas} horas: $fechaAdelante");
  } else {
    print("Fecha y hora adelantadas $horas horas: $fechaAdelante");
  }
}

void main() {

  // Llamada a la función para mostrar la fecha y hora actuales, atrasadas y adelantadas
  mostrarFechaHora(-7);
  mostrarFechaHora(7);

}