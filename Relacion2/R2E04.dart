/*  DART
    RELACIÓN 2 - EJERCICIO 4
    Álvaro Mozo Gaspar */

/**
 * Función que muestra el nombre y los apellidos de un empleado
 * Parámetros:
 * - nombre: nombre obligatorio del empleado
 * - apellidos: apellidos opcionales, pueden ser null
 * No devuelve ningún valor (void)
 */
void mostrarEmpleado(String nombre, [String? apellidos]) {

  // Mostramos el nombre del empleado
  print("Nombre: $nombre");

  // Comprobamos si se han proporcionado los apellidos
  if (apellidos != null) {
    print("Apellidos: $apellidos");
  } else {
    print("Apellidos: No especificados");
  }
}

void main() {

  // Llamada proporcionando nombre y apellidos
  mostrarEmpleado('Álvaro', 'Mozo Gaspar');

  // Llamada proporcionando únicamente el nombre
  mostrarEmpleado('Carlos');

  // Llamada proporcionando explícitamente null
  mostrarEmpleado('María', null);

}