import 'dart:math';

void main() {
  final random = Random();
  
  // Definimos un número alto de lanzamientos (n > 100)
  int n = 100000; 

  // Inicializamos la lista de frecuencias para las caras 1 a 6
  List<int> frecuencias = List.filled(7, 0);

  // Simulación de los n lanzamientos del dado trucado
  for (int i = 0; i < n; i++) {
    // Generamos un número aleatorio entre 0 y 7 (8 opciones en total)
    int boleto = random.nextInt(8);
    int resultado;

    if (boleto < 5) {
      // Boletos 0, 1, 2, 3, 4 corresponden a las caras 1, 2, 3, 4, 5
      resultado = boleto + 1;
    } else {
      // Boletos 5, 6 y 7 corresponden a la cara 6 (3 veces más probable)
      resultado = 6;
    }

    frecuencias[resultado]++;
  }

  // Mostrar los resultados por pantalla
  print('Resultados del dado TRUCADO tras $n lanzamientos:\n');
  for (int cara = 1; cara <= 6; cara++) {
    int veces = frecuencias[cara];
    double porcentaje = (veces / n) * 100;
    
    print('Cara $cara: $veces veces (${porcentaje.toStringAsFixed(2)}%)');
  }
}