void main() {
  // Datos de entrada
  int dividendo = 17;
  int divisor = 5;

  // Validación inicial
  if (dividendo < 0 || divisor <= 0) {
    print('Ambos números deben ser positivos y el divisor mayor que cero.');
  } else {
      int cociente = 0;
      int resto = dividendo;

      // Algoritmo de restas sucesivas
      while (resto >= divisor) {
        resto -= divisor;
        cociente++;
      }

      // Resultados
      print('Dividendo: $dividendo');
      print('Divisor: $divisor');
      print('Cociente: $cociente');
      print('Resto: $resto');
  }
}