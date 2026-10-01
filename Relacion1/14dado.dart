import 'dart:math';

void main() {
  // Instanciamos el generador de números aleatorios
  final random = Random();

  // nextInt(6) genera números de 0 a 5, por lo que sumamos 1 para simular un dado (1 a 6)
  int resultado = random.nextInt(6) + 1;

  print('Resultado del lanzamiento del dado: $resultado');
}