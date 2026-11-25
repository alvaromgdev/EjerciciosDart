/**
 * DART
 * RELACIÓN 3 - EJERCICIO 6
 * Álvaro Mozo Gaspar
 */

/**
 * Introducir una frase y realizar las siguientes operaciones:
 * - Invertir el orden de las palabras
 * - Invertir el orden de los caracteres
 * - Comprobar si es un palíndromo
 */

import 'dart:io';

/**
 * Función que invierte el orden de las palabras de una frase
 *
 * Recibe una cadena de texto
 * Devuelve una cadena con las palabras invertidas
 */
String invertirPalabras(String frase) {
  List<String> palabras = frase.split(" ");

  List<String> palabrasInvertidas = palabras.reversed.toList();

  String resultado = palabrasInvertidas.join(" ");

  return resultado;
}

/**
 * Función que invierte todos los caracteres de una frase
 *
 * Recibe una cadena de texto
 * Devuelve la cadena con los caracteres invertidos
 */
String invertirCaracteres(String frase) {
  String resultado = frase.split("").reversed.join("");

  return resultado;
}

/**
 * Función que comprueba si una frase es un palíndromo.
 *
 * Recibe una cadena de texto.
 * Devuelve true si es un palíndromo y false en caso contrario.
 *
 * Para realizar la comprobación:
 * - Convertimos la frase a minúsculas.
 * - Eliminamos los espacios.
 * - Eliminamos los signos de puntuación.
 * - Eliminamos los acentos.
 * - Comparamos la frase normalizada con su versión invertida.
 */
bool esPalindromo(String frase) {
  String fraseNormalizada = frase.toLowerCase();

  fraseNormalizada = fraseNormalizada
      .replaceAll(" ", "")
      .replaceAll(",", "")
      .replaceAll(".", "")
      .replaceAll("á", "a")
      .replaceAll("é", "e")
      .replaceAll("í", "i")
      .replaceAll("ó", "o")
      .replaceAll("ú", "u");

  String fraseInvertida = fraseNormalizada.split("").reversed.join("");

  bool resultado = fraseNormalizada == fraseInvertida;

  return resultado;
}

void main() {
  print("Introduzca una frase:");
  String frase = stdin.readLineSync()!;

  // Invertimos el orden de las palabras.
  String palabrasInvertidas = invertirPalabras(frase);

  print("Palabras invertidas: $palabrasInvertidas");

  // Invertimos todos los caracteres.
  String caracteresInvertidos = invertirCaracteres(frase);

  print("Caracteres invertidos: $caracteresInvertidos");

  // Comprobamos si la frase es un palíndromo.
  if (esPalindromo(frase)) {
    print("La frase es un palíndromo.");
  } else {
    print("La frase no es un palíndromo.");
  }
}
