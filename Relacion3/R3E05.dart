/**
 * DART
 * RELACIÓN 3 - EJERCICIO 5
 * Álvaro Mozo Gaspar
 */

/**
 * Convertir String a otros tipos
 */

// Importación necesaria para trabajar con JSON.
import 'dart:convert';

enum Color { rojo, verde, azul }

void main() {
  // --------------------------------------------------
  // CONVERSIÓN DE STRING A OTROS TIPOS MEDIANTE parse()
  // --------------------------------------------------

  /**
   * Utilizamos parse() para convertir cadenas que
   * representan números o valores booleanos
   *
   * int.parse() convierte String a int
   * double.parse() convierte String a double
   * bool.parse() convierte String a bool
   *
   * Si la cadena no representa un valor válido,
   * parse() puede lanzar una excepción
   */

  String intString = "100";
  String doubleString = "100.15";
  String boolString = "false";

  int intParseado = int.parse(intString);
  double doubleParseado = double.parse(doubleString);
  bool boolParseado = bool.parse(boolString);

  print("Entero: $intParseado");
  print("Double: $doubleParseado");
  print("Bool: $boolParseado");

  // --------------------------------------------------
  // CONVERSIÓN DE STRING A LIST, ENUM Y SET
  // --------------------------------------------------

  /**
   * No existe un método parse() general para convertir
   * una cadena directamente en List, Map, Enum o Set
   *
   * Para convertir una cadena en List, podemos utilizar
   * split(), que divide la cadena según un separador
   */

  String textoLista = "Rojo,Verde,Azul,Amarillo,Naranja";

  List<String> listaColores = textoLista.split(",");

  print("List: $listaColores");

  /**
   * Para convertir una cadena en Enum, podemos utilizar
   * values.byName(), que busca un valor del Enum
   * mediante su nombre
   */

  String textoColor = "verde";

  Color colorSeleccionado = Color.values.byName(textoColor);

  print("Enum: $colorSeleccionado");

  /**
   * Para crear un Set a partir de una List, podemos
   * utilizar toSet()
   *
   * El Set elimina los elementos duplicados
   */

  List<int> listaNumeros = [1, 2, 2, 3, 3, 4];

  Set<int> conjuntoNumeros = listaNumeros.toSet();

  print("Set: $conjuntoNumeros");

  // --------------------------------------------------
  // CONVERSIÓN DE STRING A MAP MEDIANTE JSON
  // --------------------------------------------------

  /**
   * jsonDecode() permite convertir un String con formato
   * JSON en un objeto Map
   *
   * Utilizamos Map<String, dynamic> porque las claves
   * son String y los valores pueden tener distintos tipos
   */

  String textoMapa = '{"Primero": "1", "Segundo": "2", "Tercero": "3"}';

  Map<String, dynamic> mapaDatos = jsonDecode(textoMapa);

  print("Map desde String: $mapaDatos");

  // --------------------------------------------------
  // CONVERSIÓN DE STRING A SET MEDIANTE JSON
  // --------------------------------------------------

  /**
   * jsonDecode() convierte el String JSON en una List
   *
   * Después utilizamos cast<int>() para indicar que
   * sus elementos son enteros y toSet() para convertir
   * la lista en un Set, eliminando duplicados
   */

  String textoConjunto = '[1, 2, 3, 2, 1]';

  List<dynamic> listaJson = jsonDecode(textoConjunto);

  Set<int> conjuntoDesdeJson = listaJson.cast<int>().toSet();

  print("Set desde String: $conjuntoDesdeJson");

  // --------------------------------------------------
  // CONVERSIÓN DE LIST, MAP, ENUM Y SET A STRING
  // MEDIANTE toString()
  // --------------------------------------------------

  /**
   * Podemos utilizar toString() para convertir estos
   * tipos de datos en una representación textual
   *
   * En el caso de Enum, toString() devuelve el nombre
   * del tipo enumerado y su valor
   */

  String listaComoTexto = listaColores.toString();
  String mapaComoTexto = mapaDatos.toString();
  String enumComoTexto = colorSeleccionado.toString();
  String conjuntoComoTexto = conjuntoNumeros.toString();

  print("List a String: $listaComoTexto");
  print("Map a String: $mapaComoTexto");
  print("Enum a String: $enumComoTexto");
  print("Set a String: $conjuntoComoTexto");

  // --------------------------------------------------
  // CONVERSIÓN DE MAP Y SET A STRING MEDIANTE JSON
  // --------------------------------------------------

  /**
   * jsonEncode() convierte datos compatibles con JSON
   * en un String con formato JSON
   *
   * Para convertir un Set, primero debemos pasarlo
   * a List porque JSON no admite directamente los Set
   */

  String mapaJson = jsonEncode(mapaDatos);

  String conjuntoJson = jsonEncode(conjuntoNumeros.toList());

  print("Map a String JSON: $mapaJson");
  print("Set a String JSON: $conjuntoJson");

  // --------------------------------------------------
  // CONVERSIÓN DE DOUBLE A STRING Y FORMATO
  // --------------------------------------------------

  /**
   * Para convertir un double a String podemos utilizar
   * toString()
   *
   * También existen métodos que permiten controlar
   * el formato del número:
   *
   * toStringAsFixed():
   * Indica el número de decimales
   *
   * toStringAsPrecision():
   * Indica el número de cifras significativas
   *
   * toStringAsExponential():
   * Convierte el número a notación exponencial
   */

  double numero = 100.12345;

  String numeroString = numero.toString();

  String numeroDosDecimales = numero.toStringAsFixed(2);

  String numeroTresCifras = numero.toStringAsPrecision(3);

  String numeroExponencial = numero.toStringAsExponential(2);

  print("Double a String: $numeroString");
  print("Dos decimales: $numeroDosDecimales");
  print("Tres cifras significativas: $numeroTresCifras");
  print("Notación exponencial: $numeroExponencial");
}