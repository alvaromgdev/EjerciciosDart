/*  DART
    RELACIÓN 2 - EJERCICIO 17
    Álvaro Mozo Gaspar */

/**
 * Función recursiva auxiliar que calcula el cociente
 * de una división mediante el método de las restas sucesivas
 *
 * Recibe dos parámetros de tipo entero
 * Devuelve un valor de tipo entero
 */
int _calcularCocienteRecursivo(int dividendo, int divisor) {

  // Establecemos el caso base
  if (dividendo < divisor) {
    return 0;
  }

  // Realizamos la llamada recursiva restando el divisor
  return 1 + _calcularCocienteRecursivo(dividendo - divisor, divisor);
}

/**
 * Función que comprueba los argumentos y calcula el cociente
 *
 * Recibe dos parámetros de tipo entero positivo
 * Devuelve un valor de tipo entero
 *
 * Comprueba que el dividendo y el divisor sean positivos
 */
int calcularCociente(int dividendo, int divisor) {

  // Comprobamos que el divisor no sea cero
  if (divisor == 0) {
    throw ArgumentError("El divisor no puede ser cero");
  }

  // Comprobamos que los dos números sean positivos
  if (dividendo <= 0 || divisor < 0) {
    throw ArgumentError("El dividendo y el divisor deben ser positivos");
  }

  // Invocamos a la función recursiva auxiliar
  return _calcularCocienteRecursivo(dividendo, divisor);
}

/**
 * Función recursiva auxiliar que calcula el resto
 * de una división mediante el método de las restas sucesivas
 *
 * Recibe dos parámetros de tipo entero
 * Devuelve un valor de tipo entero
 */
int _calcularRestoRecursivo(int dividendo, int divisor) {

  // Establecemos el caso base
  if (dividendo < divisor) {
    return dividendo;
  }

  // Realizamos la llamada recursiva restando el divisor
  return _calcularRestoRecursivo(dividendo - divisor, divisor);
}

/**
 * Función que comprueba los argumentos y calcula el resto
 *
 * Recibe dos parámetros de tipo entero positivo
 * Devuelve un valor de tipo entero
 *
 * Comprueba que el dividendo y el divisor sean positivos
 */
int calcularResto(int dividendo, int divisor) {

  // Comprobamos que el divisor no sea cero
  if (divisor == 0) {
    throw ArgumentError("El divisor no puede ser cero");
  }

  // Comprobamos que los dos números sean positivos
  if (dividendo <= 0 || divisor < 0) {
    throw ArgumentError("El dividendo y el divisor deben ser positivos");
  }

  // Invocamos a la función recursiva auxiliar
  return _calcularRestoRecursivo(dividendo, divisor);
}

void main() {
  try {
    int dividendo1 = 17;
    int divisor1 = 5;

    int cociente1 = calcularCociente(dividendo1, divisor1);
    int resto1 = calcularResto(dividendo1, divisor1);

    print("División de $dividendo1 entre $divisor1:");
    print("Cociente: $cociente1");
    print("Resto: $resto1");

    int dividendo2 = 20;
    int divisor2 = 4;

    int cociente2 = calcularCociente(dividendo2, divisor2);
    int resto2 = calcularResto(dividendo2, divisor2);

    print("\nDivisión de $dividendo2 entre $divisor2:");
    print("Cociente: $cociente2");
    print("Resto: $resto2");
  } on ArgumentError catch (e) {
    // Mostramos el mensaje si alguno de los valores no es válido
    print("Error: ${e.message}");
  }
}