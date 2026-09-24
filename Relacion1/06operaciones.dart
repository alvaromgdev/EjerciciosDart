import 'dart:io';

void main() {
  print("Introduce el primer número:");
  int numero1 = int.parse(stdin.readLineSync()!);

  print("Introduce el segundo número:");
  int numero2 = int.parse(stdin.readLineSync()!);

  print("Introduce el operador (+, -, *, /, %):");
  String operador = stdin.readLineSync()!;

  switch (operador) {
    case "+":
      print("Resultado: ${numero1 + numero2}");
      break;

    case "-":
      print("Resultado: ${numero1 - numero2}");
      break;

    case "*":
      print("Resultado: ${numero1 * numero2}");
      break;

    case "/":
      print("Resultado: ${numero1 ~/ numero2}");
      break;

    case "%":
      print("Resultado: ${numero1 % numero2}");
      break;

    default:
      print("Operador no válido");
  }
}