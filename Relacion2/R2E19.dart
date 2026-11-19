/*  DART
    RELACIÓN 2 - EJERCICIO 19
    Álvaro Mozo Gaspar */

/**
 * Función que comprueba si un número es primo
 *
 * Recibe un parámetro entero (n)
 * Devuelve true si es primo y false en caso contrario
 */
bool esPrimo(int n) {
  if (n <= 0) {
    throw ArgumentError("El número debe ser positivo");
  }

  // El número 1 no es primo
  if (n == 1) {
    return false;
  }

  // Comprobamos si tiene algún divisor distinto de 1 y de sí mismo
  for (int divisor = 2; divisor < n; divisor++) {
    if (n % divisor == 0) {
      return false;
    }
  }

  return true;
}

/**
 * Función que genera una lista con los números primos
 * comprendidos entre 1 y n
 *
 * Recibe un parámetro entero (n)
 * Devuelve una lista de números enteros
 */
List<int> generarPrimos(int n) {

  if (n <= 0) {
    throw ArgumentError("El límite debe ser un número positivo");
  }

  // Lista donde almacenaremos los números primos
  List<int> primos = [];

  // Recorremos los números comprendidos entre 1 y n
  for (int numero = 1; numero <= n; numero++) {
    if (esPrimo(numero)) {
      primos.add(numero);
    }
  }

  return primos;
}

void main() {
  // Límites superiores para generar las listas
  int n1 = 20;
  int n2 = 50;

  try {
    // Inicializamos las listas con los valores devueltos
    List<int> listaPrimos1 = generarPrimos(n1);
    List<int> listaPrimos2 = generarPrimos(n2);

    print("Números primos entre 1 y $n1: $listaPrimos1");
    print("Números primos entre 1 y $n2: $listaPrimos2");

  } on ArgumentError catch (e) {
    print("Error: ${e.message}");
  }
}