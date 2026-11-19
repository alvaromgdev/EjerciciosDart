/*  DART
    RELACIÓN 2 - EJERCICIO 7
    Álvaro Mozo Gaspar */

/**
 * Calcula el factorial de un número entero positivo
 *
 * Parámetro:
 * - n: valor del número (número entero positivo) del que se desea calcular el factorial
 *
 * Retorno:
 * - Factorial del número n (int)
 */
int calcularFactorial(int n) {
  // Inicializamos la variable factorial a 1
  int factorial = 1;

  // Comprobamos si n es un número entero positivo
  if (n < 1) {
    print("El valor de n debe ser un número entero positivo");
    return factorial; // Retornamos 1 si n no es válido
  }

  // Calculamos el factorial del número n
  for (int i = 1; i <= n; i++) {
    factorial *= i;
  }

  // Devolvemos el factorial calculado
  return factorial;
}

void main() {
  int n1 = 5;
  int resultado1 = calcularFactorial(n1);

  int n2 = 10;
  int resultado2 = calcularFactorial(n2);

  print("El factorial de $n1 es: $resultado1");
  print("El factorial de $n2 es: $resultado2");
}