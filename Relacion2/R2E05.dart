/*  DART
    RELACIÓN 2 - EJERCICIO 5
    Álvaro Mozo Gaspar */

/**
 * Función que calcula la fecha y hora adelantadas
 *
 * Parámetro:
 * - horas: número de horas que queremos adelantar
 *
 * Retorno:
 * - Fecha y hora resultante (DateTime)
 */

DateTime calcularFechaAdelantada(int horas) {
  // Obtenemos la fecha y hora actual
  DateTime fechaActual = DateTime.now();

  // Calculamos la nueva fecha adelantando las horas especificadas
  DateTime fechaAdelantada = fechaActual.add(Duration(hours: horas));

  // Devolvemos la fecha y hora resultante
  return fechaAdelantada;
}

void main() {
  // Fecha y hora adelantadas 7 horas
  DateTime fechaAdelantada = calcularFechaAdelantada(7);

  // Fecha y hora atrasadas 7 horas
  DateTime fechaAtrasada = calcularFechaAdelantada(-7);

  // Muestra el resultado por pantalla
  print("Fecha y hora actual: ${DateTime.now()}");
  print("Fecha y hora adelantadas 7 horas: $fechaAdelantada");
  print("Fecha y hora atrasadas 7 horas: $fechaAtrasada");
}
