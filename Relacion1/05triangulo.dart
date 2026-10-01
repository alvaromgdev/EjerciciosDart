void main() {

  double lado1 = 5.0;
  double lado2 = 7.0;
  double lado3 = 6.0;

  print("Lado 1: $lado1");
  print("Lado 2: $lado2"); 
  print("Lado 3: $lado3");

  if (lado1 == lado2 && lado2 == lado3) {
    print("El triángulo es equilátero");
  } else if (lado1 == lado2 || lado1 == lado3 || lado2 == lado3) {
    print("El triángulo es isósceles");
  } else {
    print("El triángulo es escaleno");
  }
}