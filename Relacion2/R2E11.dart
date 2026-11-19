/*  DART
    RELACIÓN 2 - EJERCICIO 11
    Álvaro Mozo Gaspar */

/**
 * Función que calcula la temperatura máxima
 * de una lista de temperaturas
 *
 * Recibe una lista de tipo List<double>
 * Devuelve un valor de tipo double
 *
 * Comprueba que la lista no esté vacía
 */
double calcularMaxima(List<double> temperaturas) {
  // Comprobamos que la lista no esté vacía
  if (temperaturas.isEmpty) {
    throw ArgumentError("La lista de temperaturas está vacía");
  }
  // Inicializamos la temperatura máxima con el primer elemento
  double maxima = temperaturas[0];

  // Recorremos la lista de temperaturas y comprobamos si encontramos una temperatura superior
  for (int i = 0; i < temperaturas.length; i++) {
    if (temperaturas[i] > maxima) {
      maxima = temperaturas[i];
    }
  }

  // Devolvemos la temperatura máxima
  return maxima;
}

/**
 * Función que calcula la temperatura mínima
 * de una lista de temperaturas.
 *
 * Recibe una lista de tipo List<double>.
 * Devuelve un valor de tipo double.
 *
 * Comprueba que la lista no esté vacía.
 */
double calcularMinima(List<double> temperaturas) {
  // Comprobamos que la lista no esté vacía.
  if (temperaturas.isEmpty) {
    throw ArgumentError("La lista de temperaturas está vacía");
  }
  // Inicializamos la temperatura mínima con el primer elemento
  double minima = temperaturas[0];

  // Recorremos la lista de temperaturas y comprobamos si encontramos una temperatura inferior
  for (int i = 0; i < temperaturas.length; i++) {
    if (temperaturas[i] < minima) {
      minima = temperaturas[i];
    }
  }

  // Devolvemos la temperatura mínima
  return minima;
}

/**
 * Función que calcula la temperatura media
 * de una lista de temperaturas
 *
 * Recibe una lista de tipo List<double>
 * Devuelve un valor de tipo double
 *
 * Comprueba que la lista no esté vacía
 */
double calcularMedia(List<double> temperaturas) {

  // Comprobamos que la lista no esté vacía
  if (temperaturas.isEmpty) {
    throw ArgumentError("La lista de temperaturas está vacía");
  }

  double suma = 0;
  for (int i = 0; i < temperaturas.length; i++) {
    suma = suma + temperaturas[i];

  }

  // Calculamos y devolvemos la media
  return suma / temperaturas.length;
}

void main() {
  List<double> temperaturas = [22.5, 25.0, 19.5, 27.0, 23.5, 21.0, 26.5];

  try {
    double maxima = calcularMaxima(temperaturas);
    double minima = calcularMinima(temperaturas);
    double media = calcularMedia(temperaturas);

    print("Temperatura máxima: $maxima °C");
    print("Temperatura mínima: $minima °C");
    print("Temperatura media: ${media.toStringAsFixed(2)} °C");
  } on ArgumentError catch (e) {
    // Mostramos el mensaje si la lista no contiene temperaturas
    print("Error: ${e.message}");
  }

  /**
   * Pregunta:
   * ¿Cómo solucionarías la pérdida de información del día
   * en el que se produjo la temperatura máxima o mínima?
   *
   * Existen varias posibilidades:
   *
   * 1. Utilizar un Map para relacionar cada día con su temperatura.
   *    Así podemos conservar la información de ambos datos.
   *
   * 2. Utilizar un Record para devolver simultáneamente
   *    la temperatura y el día en el que se produjo.
   *
   * 3. Crear una clase que almacene el día y la temperatura,
   *    devolviendo un objeto con ambos datos.
   *
   * De esta manera evitamos perder el contexto de las temperaturas
   * máxima y mínima.
   */
}