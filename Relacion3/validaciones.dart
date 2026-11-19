/**
 * Librería con todas las funciones de validación de String
 */

// Formato color RGB

bool isRGB(String str) {
  return new RegExp(r"^#(?:[0-9a-fA-F]{3}){1,2}$").hasMatch(str);
}