void main() {
  // --- LISTA DE DÍAS ---
  // Declarar lista con días laborables y mostrarla
  List<String> dias = ['Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes'];
  print('Lista inicial (laborables): $dias');

  // Añadir fin de semana
  dias.addAll(['Sábado', 'Domingo']);

  // Recorrer día por día usando forEach
  print('\nDías de la semana recorridos con forEach:');
  dias.forEach((dia) => print('- $dia'));

  // --- MAP DE NOMBRES Y EDADES ---
  Map<String, int> personas = {
    'Ana': 21,
    'Carlos': 34,
    'Elena': 28,
  };

  // Recorrer el Map usando forEach
  print('\nPersonas y edades recorridas con forEach:');
  personas.forEach((nombre, edad) {
    print('$nombre tiene $edad años.');
  });
}