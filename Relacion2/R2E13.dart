/*  DART
    RELACIÓN 2 - EJERCICIO 13
    Álvaro Mozo Gaspar */

/**
 * Función que comprueba si un número entero positivo
 * es primo buscando posibles divisores
 *
 * Recibe un parámetro de tipo entero (n)
 * Devuelve un valor booleano:
 * true si el número es primo y false si no lo es
 *
 * Comprueba que el número sea positivo.
 */
bool esPrimo(int n) {
  // Comprobamos que el número sea positivo
  if (n <= 0) {
    throw ArgumentError("El número debe ser un entero positivo.");
  }

  // Comprobamos si el número es 1
  if (n == 1) {
    return false;
  }

  // Buscamos divisores desde el número 2 hasta n - 1
  for (int divisor = 2; divisor < n; divisor++) {
    // Comprobamos si la división tiene resto cero
    if (n % divisor == 0) {
      return false;
    }
  }

  // Si no hemos encontrado ningún divisor, el número es primo
  return true;
}

void main() {
  // Inicializamos el número entero positivo
  int numero1 = 7;
  int numero2 = 21;
  int numero3 = 37;
  int numero4 = 59;

  try {
    bool resultado = esPrimo(numero1);

    if (resultado) {
      print("El número $numero1 es primo");
    } else {
      print("El número $numero1 no es primo");
    }
  } on ArgumentError catch (e) {
    // Mostramos el mensaje si el número no es válido
    print("Error: ${e.message}");
  }

  try {
    bool resultado = esPrimo(numero2);

    if (resultado) {
      print("El número $numero2 es primo");
    } else {
      print("El número $numero2 no es primo");
    }
  } on ArgumentError catch (e) {
    // Mostramos el mensaje si el número no es válido
    print("Error: ${e.message}");
  }

  try {
    bool resultado = esPrimo(numero3);

    if (resultado) {
      print("El número $numero3 es primo");
    } else {
      print("El número $numero3 no es primo");
    }
  } on ArgumentError catch (e) {
    // Mostramos el mensaje si el número no es válido
    print("Error: ${e.message}");
  }

  try {
    bool resultado = esPrimo(numero4);

    if (resultado) {
      print("El número $numero4 es primo");
    } else {
      print("El número $numero4 no es primo");
    }
  } on ArgumentError catch (e) {
    // Mostramos el mensaje si el número no es válido
    print("Error: ${e.message}");
  }
}