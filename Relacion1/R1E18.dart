enum ColorArcoIris { rojo, naranja, amarillo, verde, azul, anil, violeta }

void main() {
  try {
    print('Intentando buscar el color "negro"...');
    
    // Provocamos el error de forma controlada
    ColorArcoIris color = ColorArcoIris.values.byName('negro');
    print('Color encontrado: $color'); // No llegará a ejecutarse

  } catch (error) {
    // Captura el ArgumentError y maneja la situación
    print('Se ha producido un error controlado: $error');

  } finally {
    // Este bloque se ejecuta SIEMPRE, haya error o no
    print('Bloque "finally" ejecutado de forma obligatoria.');
  }
}
