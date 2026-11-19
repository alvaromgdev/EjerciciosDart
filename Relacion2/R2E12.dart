/*  DART
    RELACIÓN 2 - EJERCICIO 12
    Álvaro Mozo Gaspar */

/**
 * Función que busca y muestra la temperatura máxima
 * de un Map que relaciona los días con sus temperaturas
 *
 * Recibe un parámetro de tipo Map<String, double>
 * No devuelve ningún valor
 *
 * Comprueba que el mapa no esté vacío
 */
void mostrarMaxima(Map<String, double> temperaturas) {
  // Comprobamos que el mapa no esté vacío
  if (temperaturas.isEmpty) {
    throw ArgumentError("El mapa de temperaturas está vacío.");
  }

  // Inicializamos la temperatura máxima con el primer elemento
  String diaMaximo = temperaturas.keys.first;
  double maxima = temperaturas[diaMaximo]!;

  // Recorremos las entradas del mapa
  for (MapEntry<String, double> entrada in temperaturas.entries) {
    // Comprobamos si encontramos una temperatura superior
    if (entrada.value > maxima) {
      maxima = entrada.value;
      diaMaximo = entrada.key;
    }

  }

  // Mostramos la temperatura máxima y el día correspondiente
  print("Temperatura máxima: $maxima °C - $diaMaximo");
}

/**
 * Función que busca y muestra la temperatura mínima
 * de un Map que relaciona los días con sus temperaturas
 *
 * Recibe un parámetro de tipo Map<String, double>
 * No devuelve ningún valor
 *
 * Comprueba que el mapa no esté vacío
 */
void mostrarMinima(Map<String, double> temperaturas) {

  // Comprobamos que el mapa no esté vacío
  if (temperaturas.isEmpty) {
    throw ArgumentError("El mapa de temperaturas está vacío.");
  }

  // Inicializamos la temperatura mínima con el primer elemento
  String diaMinimo = temperaturas.keys.first;
  double minima = temperaturas[diaMinimo]!;

  // Recorremos las entradas del mapa
  for (MapEntry<String, double> entrada in temperaturas.entries) {

    // Comprobamos si encontramos una temperatura inferior
    if (entrada.value < minima) {
      minima = entrada.value;
      diaMinimo = entrada.key;
    }

  }

  // Mostramos la temperatura mínima y el día correspondiente
  print("Temperatura mínima: $minima °C - $diaMinimo");

}

/**
 * Función que calcula y muestra la temperatura media
 * de un Map que relaciona los días con sus temperaturas
 *
 * Recibe un parámetro de tipo Map<String, double>
 * No devuelve ningún valor
 *
 * Comprueba que el mapa no esté vacío
 */
void mostrarMedia(Map<String, double> temperaturas) {
  // Comprobamos que el mapa no esté vacío
  if (temperaturas.isEmpty) {
    throw ArgumentError("El mapa de temperaturas está vacío");
  }

  // Inicializamos la variable acumuladora
  double suma = 0;

  // Recorremos las temperaturas del mapa
  for (MapEntry<String, double> entrada in temperaturas.entries) {

    // Acumulamos el valor de cada temperatura
    suma = suma + entrada.value;

  }

  // Calculamos la media
  double media = suma / temperaturas.length;

  // Mostramos la temperatura media
  print("Temperatura media: ${media.toStringAsFixed(2)} °C");

}

void main() {
  // Declaramos e inicializamos el mapa de temperaturas máximas
  Map<String, double> temperaturas = {
    "Lunes": 22.5,
    "Martes": 25.0,
    "Miércoles": 19.5,
    "Jueves": 27.0,
    "Viernes": 23.5,
    "Sábado": 21.0,
    "Domingo": 26.5
  };

  try {
    mostrarMaxima(temperaturas);
    mostrarMinima(temperaturas);
    mostrarMedia(temperaturas);

  } on ArgumentError catch (e) {
    // Mostramos el mensaje si el mapa está vacío
    print("Error: ${e.message}");
  }
}