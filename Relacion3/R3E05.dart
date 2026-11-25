/**
 * DART
 * RELACIÓN 3 - EJERCICIO 5
 * Álvaro Mozo Gaspar
 */

/**
 * Convertir String a otros tipos
 */

enum Color { rojo, verde, azul }

void main() {
  // --------------------------------------------------
  // CONVERSIÓN DE STRING A OTROS TIPOS MEDIANTE parse()
  // --------------------------------------------------

  /**
   * Utilizamos parse() para convertir cadenas que
   * representan números o valores booleanos.
   *
   * int.parse() convierte String a int.
   * double.parse() convierte String a double.
   * bool.parse() convierte String a bool.
   *
   * Si la cadena no representa un valor válido,
   * parse() puede lanzar una excepción.
   */

  String intString = "100";
  String doubleString = "100.1";
  String boolString = "false";

  int intParseado = int.parse(intString);
  double doubleParseado = double.parse(doubleString);
  bool boolParseado = bool.parse(boolString);

  print("Entero: $intParseado");
  print("Double: $doubleParseado");
  print("Bool: $boolParseado");

  // --------------------------------------------------
  // ¿QUÉ OCURRE CON LIST, MAP, ENUM Y SET?
  // --------------------------------------------------

  /**
   * No existe un método parse() general para convertir
   * una cadena directamente en List, Map, Enum o Set.
   *
   * Para convertir una cadena en List, podemos utilizar
   * split(), que divide la cadena según un separador.
   */

  String listaString = "rojo,verde,azul";

  List<String> lista = listaString.split(",");

  print("List: $lista");

  /**
   * Para convertir una cadena en Enum, podemos utilizar
   * values.byName(), que busca un valor del Enum
   * mediante su nombre.
   */

  String colorString = "verde";

  Color color = Color.values.byName(colorString);

  print("Enum: $color");

  /**
   * Para crear un Set a partir de una List, podemos
   * utilizar toSet().
   *
   * El Set elimina los elementos duplicados.
   */

  List<int> listaNumeros = [1, 2, 2, 3, 3, 4];

  Set<int> conjunto = listaNumeros.toSet();

  print("Set: $conjunto");

  /**
   * Para crear un Map desde una cadena, necesitamos
   * analizar su contenido según el formato utilizado.
   *
   * No existe un método Map.parse() general.
   */

  // --------------------------------------------------
  // ¿CÓMO CONVERTIR LIST, MAP, ENUM Y SET A STRING?
  // --------------------------------------------------

  /**
   * Podemos utilizar toString() para convertir estos
   * tipos de datos en una representación textual.
   *
   * En el caso de Enum, toString() devuelve el nombre
   * del tipo enumerado y su valor.
   */

  Map<int, String> mapa = {
    1: "Primero",
    2: "Segundo",
    3: "Tercero"
  };

  String listaStringResultado = lista.toString();
  String mapaStringResultado = mapa.toString();
  String enumStringResultado = color.toString();
  String setStringResultado = conjunto.toString();

  print("List a String: $listaStringResultado");
  print("Map a String: $mapaStringResultado");
  print("Enum a String: $enumStringResultado");
  print("Set a String: $setStringResultado");

  // --------------------------------------------------
  // CONVERSIÓN DE DOUBLE A STRING Y FORMATO
  // --------------------------------------------------

  /**
   * Para convertir un double a String podemos utilizar
   * toString().
   *
   * También existen métodos que permiten controlar
   * el formato del número:
   *
   * toStringAsFixed():
   * Indica el número de decimales.
   *
   * toStringAsPrecision():
   * Indica el número de cifras significativas.
   *
   * toStringAsExponential():
   * Convierte el número a notación exponencial.
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