import 'dart:math';

void main() {
  double a = 1;
  double b = -5;
  double c = 6;

  print("Ecuación de segundo grado: ax² + bx + c = 0");
  print("a = $a, b = $b, c = $c");

  double denominador = b * b - 4 * a * c;

  if (denominador < 0) {
    print("Las raíces no son reales");
  } else if (denominador == 0) {
    double x = -b / (2 * a);
    print("La ecuación tiene una única raíz: $x");
  } else {
    double x1 = (-b + sqrt(denominador)) / (2 * a);
    double x2 = (-b - sqrt(denominador)) / (2 * a);

    print("Primera raíz: $x1");
    print("Segunda raíz: $x2");
  }
}