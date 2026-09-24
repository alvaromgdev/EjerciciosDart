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
}