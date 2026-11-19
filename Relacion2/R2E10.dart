/*  DART
    RELACIÓN 2 - EJERCICIO 10
    Álvaro Mozo Gaspar */

/**
 * Función que convierte un número entero positivo
 * a otra base numérica mediante divisiones sucesivas
 *
 * Recibe un parámetro obligatorio de tipo entero (numero)
 * y un parámetro opcional de tipo entero (base),
 * cuyo valor por defecto es 2.
 *
 * Devuelve una cadena de tipo String con el número convertido
 *
 * Comprueba que el número no sea negativo
 * y que la base esté comprendida entre 2 y 8
 */
String convertirBase(int numero, [int base = 2]) {

  // Comprobamos que el número no sea negativo
  if (numero < 0) {
    throw ArgumentError("El número debe ser positivo");
  }

  // Comprobamos que la base esté comprendida entre 2 y 8
  if (base < 2 || base > 8) {
    throw ArgumentError("La base debe estar comprendida entre 2 y 8");
  }

  // Declaramos la cadena con los dígitos disponibles
  const String digitos = "01234567";

  // Inicializamos la cadena que almacenará el resultado
  String resultado = "";

  // Comprobamos si el número es 0
  if (numero == 0) {
    return "0";
  }

  // Realizamos las divisiones sucesivas mientras el número sea mayor que cero
  while (numero > 0) {

    // Calculamos el resto de la división
    int resto = numero % base;

    // Añadimos el dígito correspondiente al principio del resultado
    resultado = digitos[resto] + resultado;

    // Actualizamos el número con el cociente de la división
    numero = numero ~/ base;

  }

  // Devolvemos el número convertido en una cadena.
  return resultado;
}

void main() {
  // Inicializamos los números enteros que queremos convertir
  int numero1 = 25;
  int numero2 = 38;

  try {
    // Convertimos el número a binario utilizando la base por defecto
    String binario = convertirBase(numero1);

    // Mostramos el resultado por pantalla
    print("El número $numero1 en base 2 es: $binario");

    // Convertimos el número a base 8
    String octal = convertirBase(numero1, 8);

    // Mostramos el resultado por pantalla
    print("El número $numero1 en base 8 es: $octal");
  } on ArgumentError catch (e) {
    // Mostramos el mensaje si alguno de los argumentos no es válido
    print("Error: ${e.message}");
  }

  print(""); // Línea en blanco para separar los resultados

  try {
    // Convertimos el número a binario utilizando la base por defecto
    String binario = convertirBase(numero2);

    // Mostramos el resultado por pantalla
    print("El número $numero2 en base 2 es: $binario");

    // Convertimos el número a base 8
    String octal = convertirBase(numero2, 8);

    // Mostramos el resultado por pantalla
    print("El número $numero2 en base 8 es: $octal");
  } on ArgumentError catch (e) {
    // Mostramos el mensaje si alguno de los argumentos no es válido
    print("Error: ${e.message}");
  }

  /**
   * Pregunta:
   * ¿Qué habría que añadir a la función para que también pudiera
   * convertir a base 16?
   *
   * Para permitir la conversión a hexadecimal habría que ampliar
   * la cadena de dígitos disponibles, añadiendo las letras
   * A, B, C, D, E y F para representar los valores del 10 al 15.
   *
   * También habría que ampliar la comprobación de la base
   * para permitir valores comprendidos entre 2 y 16.
   */
}