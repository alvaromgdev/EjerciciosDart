import 'dart:io';

void main() {
  print("Introduzca el primer número:");
  int numero1 = int.parse(stdin.readLineSync()!);

  print("Introduzca el segundo número:");
  int numero2 = int.parse(stdin.readLineSync()!);

  print("Introduzca el operador (+, -, *, /, %):");
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
      if (numero2 == 0) {
        print("Error: División por cero");
      } else {
        print("Resultado: ${numero1 / numero2}");
      }
      break;

    case "%":
      print("Resultado: ${numero1 % numero2}");
      break;

    default:
      print("Operador no válido");
  }
}