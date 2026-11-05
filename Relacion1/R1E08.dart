import 'dart:io';

void main() {
  stdout.write('Introduce un número entero entre 1 y 10: ');
  
  // 1. Manejo del Null Safety: Capturamos la entrada en un String nullable
  String? entrada = stdin.readLineSync();

  // 2. Testeo y validación de la entrada: 
  // tryParse devuelve null si la entrada no es un número válido (evitando excepciones)
  // Usamos ?? para asignar 0 en caso de que sea null o inválido
  int numero = int.tryParse(entrada ?? '') ?? 0;

  // Filtramos que esté estrictamente en el rango solicitado
  if (numero < 1 || numero > 10) {
    print('Error: Entrada no válida. Debe ser un número entero entre 1 y 10.');
    return; // Finaliza la ejecución de forma segura
  }

  // 3. Imprimir la tabla de multiplicar si la entrada supera las pruebas
  print('\n--- TABLA DEL $numero ---');
  for (int i = 1; i <= 10; i++) {
    print('$numero x $i = ${numero * i}');
  }
}