void main() {
  // Los dos números enteros positivos
  int a = 48;
  int b = 18;

  // Guardamos los valores originales para mostrarlos en el mensaje final
  int num1 = a;
  int num2 = b;

  // Aplicación del algoritmo de Euclides
  while (b != 0) {
    int residuo = a % b;
    a = b;        // El divisor pasa a ser el nuevo dividendo
    b = residuo;  // El residuo pasa a ser el nuevo divisor
  }

  // El último divisor no nulo (guardado en 'a') es el MCD
  print('El MCD de $num1 y $num2 es: $a');
}