/**
 * DART
 * RELACIÓN 3 - EJERCICIO 1
 * Álvaro Mozo Gaspar
 */

import 'common.dart';

/**
 * Función que calcula la suma de los primeros n números naturales.
 *
 * Recibe un número entero (n).
 * Devuelve la suma de los primeros n números naturales.
 */
int sumarNaturales(int n) {

  // Comprobamos que n sea positivo.
  if (n <= 0) {
    throw ArgumentError("El número debe ser positivo.");
  }

  // Variable acumuladora para almacenar la suma.
  int suma = 0;

  // Sumamos los números desde 1 hasta n.
  for (int i = 1; i <= n; i++) {
    suma = suma + i;
  }

  return suma;
}

void main() {

  // Solicitamos el número al usuario.
  int n = inputPositiveInt("Introduce un número entero positivo: ");

  try {

    // Calculamos la suma de los primeros n naturales.
    int resultado = sumarNaturales(n);

    // Mostramos el resultado.
    print("La suma de los primeros $n números naturales es: $resultado");

  } on ArgumentError catch (e) {
    print("Error: ${e.message}");
  }
}
