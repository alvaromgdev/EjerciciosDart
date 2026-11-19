/*  DART
    RELACIÓN 2 - EJERCICIO 6
    Álvaro Mozo Gaspar */

/**
 * Calcula la suma de los n números enteros positivos desde 1 hasta n
 *
 * Parámetro:
 * - horas: valor de n (número entero positivo) hasta el que se desea calcular la suma
 *
 * Retorno:
 * - Suma de los n números enteros positivos desde 1 hasta n (int)
 */
int calcularSuma(int n) {
  // Inicializamos la variable suma a 0
  int suma = 0;

  // Comprobamos si n es un número entero positivo
  if (n < 1) {
    print("El valor de n debe ser un número entero positivo");
    return suma; // Retornamos 0 si n no es válido
  }

  // Calculamos la suma de los números enteros positivos desde 1 hasta n
  for (int i = 1; i <= n; i++) {
    suma += i;
  }

  // Devolvemos la suma calculada
  return suma;
}

void main() {
  int n1 = 5;
  int resultado1 = calcularSuma(n1);

  int n2 = 10;
  int resultado2 = calcularSuma(n2);

  print("La suma de los $n1 números enteros positivos desde 1 hasta $n1 es: $resultado1");
  print("La suma de los $n2 números enteros positivos desde 1 hasta $n2 es: $resultado2");
}