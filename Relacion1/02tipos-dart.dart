void main() {
  // Declaración de variables de distintos tipos
  String nombre = "Álvaro";
  int edad = 23;
  double altura = 1.70;
  bool esMayor = true;

  dynamic variableDinamica = "Hola"; // Puede cambiar de tipo

  print("Variable dinámica: $variableDinamica, de tipo ${variableDinamica.runtimeType}");
  print("¡Hola, $nombre! Tienes $edad años, mides $altura metros y es mayor de edad: $esMayor.");

  variableDinamica = 42;
  print("Variable dinámica: $variableDinamica, de tipo ${variableDinamica.runtimeType}");

  List<String> listaNombres = ["Álvaro", "María", "Juan"];
  print("Lista de nombres: $listaNombres");

  // Bucle for para recorrer la lista de nombres
  for (int i = 0; i < listaNombres.length; i++) {
    print("Nombre en la posición $i: ${listaNombres[i]}");
  }

  // Bucle for each para recorrer la lista de nombres
  listaNombres.forEach(print);

  // Arrays asociativos (Mapas)
  Map<String, int> mapaEdades = {
    "Álvaro": 23,
    "María": 30,
    "Juan": 25
  };
  print("Mapa de edades: $mapaEdades");

  mapaEdades.forEach((nombre, edad) {
    print("$nombre tiene $edad años");
  });

  // También se pueden declarar sets conjuntos, que son colecciones de elementos únicos
  Set<String> conjuntoNombres = {"Álvaro", "María", "Juan"};
  print("Conjunto de nombres: $conjuntoNombres");

  for (String nombre in conjuntoNombres) {
    print("Nombre en el conjunto: $nombre");
  }

  // Se pueden declarar estructuras de datos record
  (String, int, double) persona = ("Álvaro", 23, 1.70);
  print("Datos de la persona: $persona");
  print("Nombre: ${persona.$1}, Edad: ${persona.$2}, Altura: ${persona.$3}");
}