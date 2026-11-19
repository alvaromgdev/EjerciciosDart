/*  DART
    RELACIÓN 2 - EJERCICIO 20
    PROGRAMA PRINCIPAL
    Álvaro Mozo Gaspar */

// Importamos la librería con las funciones de temperaturas.
import 'temperaturas.dart';

void main() {
  // Declaramos dos listas de temperaturas
  List<double> temperaturas1 = [18.5, 21.0, 24.5, 19.0, 22.5];
  List<double> temperaturas2 = [12.0, 15.5, 17.0, 14.5, 20.0];

  try {
    // Calculamos los resultados de la primera lista
    print("PRIMERA LISTA DE TEMPERATURAS");
    print("Temperaturas: $temperaturas1");
    print("Temperatura máxima: ${calcularMaxima(temperaturas1)}");
    print("Temperatura mínima: ${calcularMinima(temperaturas1)}");
    print("Temperatura media: ${calcularMedia(temperaturas1)}");

    print("");

    // Calculamos los resultados de la segunda lista
    print("SEGUNDA LISTA DE TEMPERATURAS");
    print("Temperaturas: $temperaturas2");
    print("Temperatura máxima: ${calcularMaxima(temperaturas2)}");
    print("Temperatura mínima: ${calcularMinima(temperaturas2)}");
    print("Temperatura media: ${calcularMedia(temperaturas2)}");

  } on ArgumentError catch (e) {
    print("Error: ${e.message}");
  }
}