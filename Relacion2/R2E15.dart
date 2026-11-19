/*  DART
    RELACIÓN 2 - EJERCICIO 15
    Álvaro Mozo Gaspar */

/**
 * Función recursiva que calcula el factorial
 * de un número entero positivo
 *
 * Recibe un parámetro de tipo entero (n)
 * Devuelve un valor de tipo entero
 *
 * Comprueba que n sea positivo
 */
int calcularFactorial(int n) {
  // Comprobamos que el número sea positivo
  if (n <= 0) {
    throw ArgumentError("El número debe ser positivo.");
  }

  // Establecemos el caso base
  if (n == 1) {
    return 1;
  }

  // Realizamos la llamada recursiva
  return n * calcularFactorial(n - 1);
}

void main() {
  try {
    int numero1 = 5;
    int factorial1 = calcularFactorial(numero1);

    print("El factorial de $numero1 es: $factorial1");

    int numero2 = 7;
    int factorial2 = calcularFactorial(numero2);

    print("El factorial de $numero2 es: $factorial2");
  } on ArgumentError catch (e) {
    // Mostramos el mensaje si el número no es válido
    print("Error: ${e.message}");
  }
}