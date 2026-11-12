/*  DART
    RELACIÓN 2 - EJERCICIO 3
    Álvaro Mozo Gaspar */

/**
 * Función que muestra el nombre y el ID de un empleado
 * Parámetros:
 * - nombre: nombre del empleado (por defecto, 'desconocido')
 * - id: identificador del empleado (por defecto, 999)
 * No devuelve ningún valor
 */
void mostrarEmpleado({String nombre = 'desconocido', int id = 999}) {

  // Mostramos los datos del empleado
  print("Nombre: $nombre");
  print("ID: $id");
}

void main() {

  // Llamada proporcionando ambos parámetros
  mostrarEmpleado(nombre: 'Álvaro', id: 123);

  // Llamada proporcionando únicamente el nombre
  mostrarEmpleado(nombre: 'Carlos');

  // Llamada proporcionando únicamente el ID
  mostrarEmpleado(id: 456);

  // Llamada sin proporcionar ningún parámetro
  mostrarEmpleado();

}
