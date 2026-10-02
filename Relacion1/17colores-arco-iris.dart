enum ColorArcoIris { rojo, naranja, amarillo, verde, azul, anil, violeta }

void main() {
  // 1. Mostrar todos los valores
  print('Todos los colores: ${ColorArcoIris.values}');

  // 2. Mostrar solo uno por su índice (ej. índice 3 es verde)
  print('Color en el índice 3: ${ColorArcoIris.values[3]}');

  // 3. Acceder por su nombre usando byName
  ColorArcoIris colorObtenido = ColorArcoIris.values.byName('azul');
  print('Color obtenido por nombre ("azul"): $colorObtenido');

  // 4. Provocar la excepción buscando uno que no existe
  print('\nBuscando un color inexistente...');
  ColorArcoIris.values.byName('negro'); // Esto romperá el programa
}
