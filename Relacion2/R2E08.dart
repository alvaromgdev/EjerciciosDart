/*  DART
    RELACIÓN 2 - EJERCICIO 8
    Álvaro Mozo Gaspar */

/**
 * Función que calcula el máximo común divisor (MCD)
 * de dos números enteros positivos mediante
 * el algoritmo de Euclides
 *
 * Recibe dos parámetros de tipo entero
 * Devuelve un valor de tipo entero
 *
 * Comprueba que ambos números sean positivos
 * Si alguno no lo es, genera una excepción
 */
int calcularMCD(int a, int b) {
  // Comprobamos que ambos números sean positivos
  if (a <= 0 || b <= 0) {
    throw ArgumentError('Los números deben ser enteros positivos');
  }

  // Repetimos el algoritmo mientras el segundo número no sea 0
  while (b != 0) {
    // Calculamos el resto de la división
    int resto = a % b;

    // Actualizamos los valores para la siguiente iteración
    a = b;
    b = resto;
  }

  // Devolvemos el máximo común divisor
  return a;
}

void main() {
  // Inicializamos los dos números enteros
  int a1 = 48;
  int b1 = 18;

  try {
    int mcd1 = calcularMCD(a1, b1);

    print("El MCD de $a1 y $b1 es: $mcd1");
  } on ArgumentError catch (e) {
    // Mostramos el mensaje si alguno de los números no es válido
    print("Error: ${e.message}");
  }

  // Inicializamos los dos números enteros
  int a2 = 84;
  int b2 = 49;

  try {
    int mcd2 = calcularMCD(a2, b2);

    print("El MCD de $a2 y $b2 es: $mcd2");
  } on ArgumentError catch (e) {
    // Mostramos el mensaje si alguno de los números no es válido
    print("Error: ${e.message}");
  }
}