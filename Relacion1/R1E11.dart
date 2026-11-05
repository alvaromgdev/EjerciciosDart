void main() {

  int n = 7;
  int factorial = 1;
  print("Valor de n: $n");

  while (n > 0) {
    factorial *= n;
    n--;
  }

  print("El factorial es: $factorial");

}