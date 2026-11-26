/**
 * Librería con todas las funciones de validación de String
 */

// --------------------------------------------------
// 1. Validación de color RGB
// --------------------------------------------------

/**
 * Comprueba si una cadena representa un color RGB hexadecimal.
 *
 * Acepta los formatos #RGB y #RRGGBB.
 */
bool isRGB(String str) {
  return RegExp(r"^#(?:[0-9a-fA-F]{3}){1,2}$").hasMatch(str);
}

// --------------------------------------------------
// 2. Validación de URL
// --------------------------------------------------

/**
 * Comprueba si una cadena representa una URL web.
 *
 * Comprueba los siguientes elementos:
 *
 * - Protocolo obligatorio: http:// o https://.
 * - Subdominio opcional: por ejemplo, www.
 * - Dominio obligatorio.
 * - Extensión obligatoria: .com, .es, .org, etc.
 * - Puerto opcional: por ejemplo, :8080.
 * - Ruta opcional: por ejemplo, /productos.
 */
bool isURL(String str) {
  return RegExp(
    r"^https?:\/\/(www\.)?[a-zA-Z0-9-]+\.[a-zA-Z]{2,}(:[0-9]{1,5})?(\/[^\s]*)?$"
  ).hasMatch(str);
}

// --------------------------------------------------
// 3. Validación de correo electrónico
// --------------------------------------------------

/**
 * Comprueba si una cadena tiene un formato de correo electrónico válido.
 *
 * Comprueba la estructura usuario@dominio.extensión
 */
bool isEmail(String str) {
  return RegExp(
    r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$"
  ).hasMatch(str);
}

// --------------------------------------------------
// 4. Validación de DNI español
// --------------------------------------------------

/**
 * Comprueba si un DNI español tiene un formato correcto
 * y si su letra corresponde al número.
 *
 * El número se divide entre 23 y el resto determina la letra.
 */
bool isDNI(String str) {
  // Comprobamos que tenga ocho números y una letra.
  if (!RegExp(r"^\d{8}[a-zA-Z]$").hasMatch(str)) {
    return false;
  }

  // Obtenemos el número del DNI.
  int numero = int.parse(str.substring(0, 8));

  // Letras correspondientes a los restos de dividir entre 23.
  String letras = "TRWAGMYFPDXBNJZSQVHLCKE";

  // Calculamos la letra correspondiente.
  String letra = letras[numero % 23];

  // Comparamos la letra calculada con la introducida.
  return str[8].toUpperCase() == letra;
}