void main() {
  print('=== LAS 10 TABLAS DE MULTIPLICAR ===');
  print('');

  // Bucle externo: Controla qué tabla se está imprimiendo (del 1 al 10)
  for (int tabla = 1; tabla <= 10; tabla++) {
    print('--- TABLA DEL $tabla ---');
    
    // Bucle interno: Controla el multiplicador de la tabla actual (del 1 al 10)
    for (int i = 1; i <= 10; i++) {
      print('$tabla x $i = ${tabla * i}');
    }
    
    print('');
  }
}