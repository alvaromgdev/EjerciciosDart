/**
 * DART
 * RELACIÓN 3 - EJERCICIO 15
 * Álvaro Mozo Gaspar
 */

/**
 * Manejo de URI
 */

void main() {

  // 1. Declaramos una cadena que contiene una URI
  String uriString =
      'https://www.ejemplo.com/buscar?nombre=Jos%C3%A9&curso=Dart#resultados';

  // 2. Decodificamos un componente de la URI
  String textoCodificado = 'Jos%C3%A9';
  String textoDecodificado = Uri.decodeComponent(textoCodificado);

  print("=== DECODIFICACIÓN ===");
  print("Texto original: $textoCodificado");
  print("Texto decodificado: $textoDecodificado");

  // 3. Parseamos la cadena para obtener un objeto Uri
  Uri uri = Uri.parse(uriString);

  print("\n=== PARTES DE LA URI ===");
  print("URI completa: $uri");
  print("Scheme: ${uri.scheme}");
  print("Host: ${uri.host}");
  print("Path: ${uri.path}");
  print("Fragment: ${uri.fragment}");
  print("Origin: ${uri.origin}");

  // 4. Mostramos los parámetros de consulta
  print("\n=== PARÁMETROS DE CONSULTA ===");

  Map<String, String> parametros = uri.queryParameters;

  print("Parámetros: $parametros");

  for (MapEntry<String, String> parametro in parametros.entries) {
    print("${parametro.key}: ${parametro.value}");
  }

  // 5. Construimos una nueva URI indicando sus componentes
  Uri nuevaUri = Uri(
    scheme: 'https',
    host: 'www.ejemplo.com',
    path: '/usuarios/perfil',
    queryParameters: {
      'nombre': 'Álvaro',
      'curso': 'DAM'
    },
    fragment: 'datos'
  );

  print("\n=== CONSTRUCCIÓN DE UNA URI ===");
  print("Nueva URI: $nuevaUri");

  // 6. Mostramos las partes de la nueva URI
  print("Scheme: ${nuevaUri.scheme}");
  print("Host: ${nuevaUri.host}");
  print("Path: ${nuevaUri.path}");
  print("Fragment: ${nuevaUri.fragment}");
  print("Origin: ${nuevaUri.origin}");
  print("Parámetros: ${nuevaUri.queryParameters}");

}