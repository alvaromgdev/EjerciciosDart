/*  DART
    RELACIÓN 1 - EJERCICIO 5
    Álvaro Mozo Gaspar */

void main() {

  // Declaración de variables para los lados del triángulo
  double lado1 = 5.0;
  double lado2 = 7.0;
  double lado3 = 6.0;

  // Mostrar los valores de los lados
  print("Lado 1: $lado1");
  print("Lado 2: $lado2"); 
  print("Lado 3: $lado3");

  // Determinar el tipo de triángulo según la longitud de sus lados
  if (lado1 == lado2 && lado2 == lado3) {
    print("El triángulo es equilátero");
  } else if (lado1 == lado2 || lado1 == lado3 || lado2 == lado3) {
    print("El triángulo es isósceles");
  } else {
    print("El triángulo es escaleno");
  }
}