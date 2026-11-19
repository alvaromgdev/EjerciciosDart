/*  DART
    RELACIÓN 2 - EJERCICIO 20
    LIBRERÍA DE FUNCIONES
    Álvaro Mozo Gaspar */

/**
 * Función que calcula la temperatura máxima de una lista
 *
 * Recibe una lista de temperaturas decimales
 * Devuelve la temperatura máxima
 */
double calcularMaxima(List<double> temperaturas) {
  if (temperaturas.isEmpty) {
    throw ArgumentError("La lista de temperaturas está vacía");
  }

  // Inicializamos la máxima con el primer elemento
  double maxima = temperaturas[0];

  // Recorremos la lista buscando la temperatura más alta
  for (int i = 1; i < temperaturas.length; i++) {
    if (temperaturas[i] > maxima) {
      maxima = temperaturas[i];
    }
  }

  return maxima;
}

/**
 * Función que calcula la temperatura mínima de una lista
 *
 * Recibe una lista de temperaturas decimales
 * Devuelve la temperatura mínima
 */
double calcularMinima(List<double> temperaturas) {
  if (temperaturas.isEmpty) {
    throw ArgumentError("La lista de temperaturas está vacía");
  }

  // Inicializamos la mínima con el primer elemento
  double minima = temperaturas[0];

  // Recorremos la lista buscando la temperatura más baja
  for (int i = 1; i < temperaturas.length; i++) {
    if (temperaturas[i] < minima) {
      minima = temperaturas[i];
    }
  }

  return minima;
}

/**
 * Función que calcula la temperatura media de una lista
 *
 * Recibe una lista de temperaturas decimales
 * Devuelve la temperatura media
 */
double calcularMedia(List<double> temperaturas) {
  if (temperaturas.isEmpty) {
    throw ArgumentError("La lista de temperaturas está vacía");
  }

  // Variable para acumular la suma de temperaturas
  double suma = 0;

  // Sumamos todos los elementos de la lista
  for (int i = 0; i < temperaturas.length; i++) {
    suma = suma + temperaturas[i];
  }

  // Calculamos y devolvemos la media
  return suma / temperaturas.length;
}