/*  DART
    RELACIÓN 2 - EJERCICIO 16
    Álvaro Mozo Gaspar */

/**
 * Función recursiva auxiliar que calcula el MCD
 * de dos números mediante el algoritmo de Euclides
 *
 * Recibe dos parámetros de tipo entero
 * Devuelve un valor de tipo entero
 */
int _calcularMCDRecursivo(int numero1, int numero2) {

  // Establecemos el caso base
  if (numero2 == 0) {
    return numero1;
  }

  // Realizamos la llamada recursiva aplicando el algoritmo de Euclides
  return _calcularMCDRecursivo(numero2, numero1 % numero2);
}

/**
 * Función que comprueba los argumentos y calcula el MCD
 *
 * Recibe dos parámetros de tipo entero positivo
 * Devuelve un valor de tipo entero
 *
 * Comprueba que ambos números sean positivos
 */
int calcularMCD(int numero1, int numero2) {
  // Comprobamos que los dos números sean positivos
  if (numero1 <= 0 || numero2 <= 0) {
    throw ArgumentError("Los dos números deben ser enteros positivos.");
  }

  // Invocamos a la función recursiva auxiliar
  return _calcularMCDRecursivo(numero1, numero2);
}

void main() {
  try {
    int numero1 = 48;
    int numero2 = 18;
    int mcd1 = calcularMCD(numero1, numero2);

    print("El MCD de $numero1 y $numero2 es: $mcd1");

    int numero3 = 60;
    int numero4 = 24;
    int mcd2 = calcularMCD(numero3, numero4);

    print("El MCD de $numero3 y $numero4 es: $mcd2");
  } on ArgumentError catch (e) {
    // Mostramos el mensaje si alguno de los números no es válido
    print("Error: ${e.message}");
  }
}