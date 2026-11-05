void main() {
  // Usamos int? para permitir que haya edades "no inicializadas" (null)
  Map<String, int?> personas = {
    'Luis': 25,
    'Marta': null, // No inicializada
    'Sofía': 42,
  };

  // 1. Recorrer mostrando todo (Clave - Valor)
  print('--- TODO (CLAVE-VALOR) ---');
  for (var entry in personas.entries) {
    // Si la edad es null, mostramos un mensaje alternativo
    String edadTexto = entry.value != null ? '${entry.value} años' : 'No asignada';
    print('${entry.key}: $edadTexto');
  }

  // 2. Recorrer mostrando solo las claves
  print('\n--- SOLO CLAVES ---');
  for (var nombre in personas.keys) {
    print('Nombre: $nombre');
  }

  // 3. Recorrer mostrando solo los valores
  print('\n--- SOLO VALORES ---');
  for (var edad in personas.values) {
    print('Edad: ${edad ?? "Desconocida"}');
  }
}
