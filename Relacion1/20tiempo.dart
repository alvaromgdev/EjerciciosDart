void main() {
  // Declaración del Map con días y temperaturas máximas
  Map<String, double> temperaturas = {
    'Lunes': 28.5,
    'Martes': 31.2,
    'Miércoles': 29.0,
    'Jueves': 33.4,
    'Viernes': 30.1,
    'Sábado': 34.0,
    'Domingo': 27.8,
  };

  // Inicializamos variables de control usando el primer elemento del Map
  String diaMax = temperaturas.keys.first;
  double tMax = temperaturas.values.first;

  String diaMin = temperaturas.keys.first;
  double tMin = temperaturas.values.first;

  double sumaTotal = 0;

  // Procesamos los datos en un único recorrido
  temperaturas.forEach((dia, temp) {
    sumaTotal += temp;

    // Calcular la mayor temperatura
    if (temp > tMax) {
      tMax = temp;
      diaMax = dia;
    }

    // Calcular la menor temperatura
    if (temp < tMin) {
      tMin = temp;
      diaMin = dia;
    }
  });

  // Calcular la media aritmética
  double media = sumaTotal / temperaturas.length;

  // Mostrar resultados estadísticos
  print('=== ESTADÍSTICAS DEL TIEMPO ===');
  print('Temperatura Máxima: $tMax°C registrada el $diaMax');
  print('Temperatura Mínima: $tMin°C registrada el $diaMin');
  print('Media aritmética de las máximas: ${media.toStringAsFixed(2)}°C');
}
