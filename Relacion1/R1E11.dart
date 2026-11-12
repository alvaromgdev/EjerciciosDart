/*  DART
    RELACIÓN 1 - EJERCICIO 11
    Álvaro Mozo Gaspar */

void main() {

  // Calcula el factorial de un número entero positivo n (n!) usando un bucle while
  int n = 7;
  int factorial = 1;
  print("Valor de n: $n");

  while (n > 0) {
    factorial *= n;
    n--;
  }

  print("El factorial es: $factorial");

}