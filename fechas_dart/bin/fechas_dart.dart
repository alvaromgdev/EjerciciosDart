/**
 * DART
 * RELACIÓN 3 - EJERCICIO 16
 * Álvaro Mozo Gaspar
 */

/**
 * Manejo de fechas y horas
 */

import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

Future<void> main() async {

  // 1. Obtenemos la fecha y hora actuales
  DateTime fechaActual = DateTime.now();

  print("=== FECHA Y HORA ACTUALES ===");
  print("Fecha actual: $fechaActual");

  // 2. Consultamos las diferentes partes de la fecha
  print("\n=== COMPONENTES DE LA FECHA ===");
  print("Año: ${fechaActual.year}");
  print("Mes: ${fechaActual.month}");
  print("Día: ${fechaActual.day}");
  print("Hora: ${fechaActual.hour}");
  print("Minutos: ${fechaActual.minute}");
  print("Segundos: ${fechaActual.second}");
  print("Día de la semana: ${fechaActual.weekday}");

  // 3. Construimos una fecha concreta
  DateTime fechaConcreta = DateTime(2026, 12, 25, 10, 30);

  print("\n=== FECHA CONCRETA ===");
  print(fechaConcreta);

  // 4. Añadimos y restamos tiempo
  DateTime fechaFutura = fechaActual.add(Duration(days: 7));
  DateTime fechaPasada = fechaActual.subtract(Duration(days: 7));

  print("\n=== OPERACIONES CON FECHAS ===");
  print("Dentro de 7 días: $fechaFutura");
  print("Hace 7 días: $fechaPasada");

  // 5. Calculamos la diferencia entre dos fechas
  Duration diferencia = fechaActual.difference(fechaConcreta);

  print("\n=== DIFERENCIA ENTRE FECHAS ===");
  print("Días de diferencia: ${diferencia.inDays}");
  print("Horas de diferencia: ${diferencia.inHours}");

  // 6. Comparamos dos fechas
  int comparacion = fechaActual.compareTo(fechaConcreta);

  print("\n=== COMPARACIÓN DE FECHAS ===");

  if (comparacion < 0) {
    print("La fecha actual es anterior.");
  } else if (comparacion > 0) {
    print("La fecha actual es posterior.");
  } else {
    print("Las fechas son iguales.");
  }

  // 7. Convertimos la fecha a formato ISO 8601
  String fechaISO = fechaActual.toIso8601String();

  print("\n=== FORMATO ISO 8601 ===");
  print(fechaISO);

  // 8. Convertimos una cadena en un objeto DateTime
  DateTime fechaParseada = DateTime.parse('2026-12-25T10:30:00');

  print("\n=== PARSEAR FECHA ===");
  print(fechaParseada);

  // 9. Inicializamos los datos de idioma español
  await initializeDateFormatting('es_ES', null);

  // 10. Formateamos la fecha utilizando intl
  DateFormat formato = DateFormat('dd/MM/yyyy HH:mm:ss', 'es_ES');

  String fechaFormateada = formato.format(fechaActual);

  print("\n=== FECHA FORMATEADA ===");
  print(fechaFormateada);

  // 11. Mostramos la fecha con el nombre del día y del mes
  DateFormat formatoLargo = DateFormat.yMMMMEEEEd('es_ES');

  print("\n=== FECHA EN ESPAÑOL ===");
  print(formatoLargo.format(fechaActual));

}