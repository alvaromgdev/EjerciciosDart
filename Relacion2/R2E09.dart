/*  DART
    RELACIÓN 2 - EJERCICIO 9
    Álvaro Mozo Gaspar */

/**
 * Función que calcula el cociente de la división
 * entre dos números enteros positivos mediante
 * el método de las restas sucesivas
 *
 * Recibe dos parámetros de tipo entero
 * Devuelve un valor de tipo entero
 *
 * Comprueba que ambos números sean positivos
 * y que el divisor no sea 0
 */
int calcularCociente(int dividendo, int divisor) {
  // Comprobamos que el divisor no sea 0
  if (divisor == 0) {
    throw ArgumentError("El divisor no puede ser cero");
  }
  // Comprobamos que los dos números sean positivos
  if (dividendo <= 0 || divisor < 0) {
    throw ArgumentError("El dividendo y el divisor deben ser positivos");
  }
  // Inicializamos el cociente a cero
  int cociente = 0;

  // Restamos el divisor mientras el dividendo sea mayor o igual
  while (dividendo >= divisor) {
    // Restamos el divisor al dividendo
    dividendo = dividendo - divisor;
    // Incrementamos el cociente
    cociente++;
  }

  // Devolvemos el cociente calculado
  return cociente;
}

/**
 * Función que calcula el resto de la división
 * entre dos números enteros positivos mediante
 * el método de las restas sucesivas
 *
 * Recibe dos parámetros de tipo entero
 * Devuelve un valor de tipo entero
 *
 * Comprueba que ambos números sean positivos
 * y que el divisor no sea 0.
 */
int calcularResto(int dividendo, int divisor) {
  // Comprobamos que el divisor no sea 0
  if (divisor == 0) {
    throw ArgumentError("El divisor no puede ser 0");
  }
  // Comprobamos que los dos números sean positivos
  if (dividendo <= 0 || divisor < 0) {
    throw ArgumentError("El dividendo y el divisor deben ser positivos");
  }

  // Restamos el divisor mientras el dividendo sea mayor o igual
  while (dividendo >= divisor) {
    // Restamos el divisor al dividendo
    dividendo = dividendo - divisor;
  }

  // Devolvemos el resto de la división
  return dividendo;
}

void main() {
  // Inicializamos los dos números enteros
  int dividendo1 = 17;
  int divisor1 = 5;

  try {
    int cociente1 = calcularCociente(dividendo1, divisor1);
    int resto1 = calcularResto(dividendo1, divisor1);

    print("Dividendo: $dividendo1");
    print("Divisor: $divisor1");
    print("Cociente: $cociente1");
    print("Resto: $resto1");
  } on ArgumentError catch (e) {
    // Mostramos el mensaje si alguno de los valores no es válido
    print("Error: ${e.message}");
  }

  print(""); // Línea en blanco para separar los resultados

  // Inicializamos los dos números enteros
  int dividendo2 = 28;
  int divisor2 = 6;

  try {
    int cociente2 = calcularCociente(dividendo2, divisor2);
    int resto2 = calcularResto(dividendo2, divisor2);

    print("Dividendo: $dividendo2");
    print("Divisor: $divisor2");
    print("Cociente: $cociente2");
    print("Resto: $resto2");
  } on ArgumentError catch (e) {
    // Mostramos el mensaje si alguno de los valores no es válido
    print("Error: ${e.message}");
  }

/**
 * Pregunta 1:
 * ¿Qué estructura de datos permitiría devolver dos valores simultáneamente?
 * En Dart podemos utilizar un Record (registro).
 * Por ejemplo:
 * 
 * (int, int) calcularDivision(int dividendo, int divisor) {
 *    int cociente = dividendo ~/ divisor;
 *    int resto = dividendo % divisor;
 * 
 *    return (cociente, resto);
 *  }
 * 
 *  De esta manera, una única función podría devolver
 *  simultáneamente el cociente y el resto.
 * 
 *  Pregunta 2:
 *  ¿Por qué no sería recomendable hacer una función así?
 * 
 *  El principio SRP (Single Responsibility Principle),
 *  o principio de responsabilidad única, establece que
 *  una función, clase o módulo debe tener una única responsabilidad.
 * 
 *  En este caso, calcular el cociente y calcular el resto
 *  son dos responsabilidades diferentes.
 * 
 *  Por ello, es preferible utilizar dos funciones independientes,
 *  de modo que cada una se encargue de una única operación.
 */
}