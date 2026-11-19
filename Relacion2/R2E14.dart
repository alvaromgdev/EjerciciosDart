/*  DART
    RELACIÓN 2 - EJERCICIO 14
    Álvaro Mozo Gaspar */

/**
 * Función recursiva que calcula la suma de los n primeros
 * números naturales
 *
 * Recibe un parámetro de tipo entero (n)
 * Devuelve un valor de tipo entero
 *
 * Comprueba que n sea positivo
 */
int sumarNaturales(int n) {
  // Comprobamos que el número sea positivo
  if (n <= 0) {
    throw ArgumentError("El número debe ser positivo");
  }

  // Establecemos el caso base
  if (n == 1) {
    return 1;
  }

  // Realizamos la llamada recursiva
  return n + sumarNaturales(n - 1);
}

void main() {
  try {
    int numero1 = 5;
    int suma1 = sumarNaturales(numero1);

    print("La suma de los $numero1 primeros números naturales es: $suma1");

    int numero2 = 10;
    int suma2 = sumarNaturales(numero2);

    print("La suma de los $numero2 primeros números naturales es: $suma2");
  } on ArgumentError catch (e) {
    // Mostramos el mensaje si el número no es válido
    print("Error: ${e.message}");
  }
}