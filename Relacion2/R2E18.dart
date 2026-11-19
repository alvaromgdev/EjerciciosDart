/*  DART
    RELACIÓN 2 - EJERCICIO 18
    Álvaro Mozo Gaspar */

/**
 * Función que genera los términos de la serie de Fibonacci
 * hasta alcanzar el término n-ésimo
 *
 * Recibe un parámetro entero (n)
 * Devuelve una lista de números enteros
 */
List<int> generarFibonacci(int n) {
  // Comprobamos que el número de términos sea positivo
  if (n <= 0) {
    throw ArgumentError("El número de términos debe ser positivo");
  }

  // Lista donde almacenaremos los términos de Fibonacci
  List<int> fibonacci = [];

  // Primeros dos términos de la serie
  int primero = 0;
  int segundo = 1;

  // Generamos los términos hasta alcanzar n
  for (int i = 0; i < n; i++) {

    fibonacci.add(primero);

    // Calculamos el siguiente término
    int siguiente = primero + segundo;

    primero = segundo;
    segundo = siguiente;
  }

  return fibonacci;
}

void main() {
  int n1 = 8;
  int n2 = 12;

  try {
    List<int> serie1 = generarFibonacci(n1);
    List<int> serie2 = generarFibonacci(n2);

    print("Serie de Fibonacci con $n1 términos: $serie1");
    print("Serie de Fibonacci con $n2 términos: $serie2");

  } on ArgumentError catch (e) {
    print("Error: ${e.message}");
  }
}