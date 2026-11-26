/**
 * DART
 * RELACIÓN 3 - EJERCICIO 20
 * Álvaro Mozo Gaspar
 */

/**
 * Funciones anónimas
 */

void main() {

  // --------------------------------------------------
  // 1. FUNCIÓN ANÓNIMA ASIGNADA A UNA VARIABLE
  // --------------------------------------------------

  print("=== 1. FUNCIÓN ANÓNIMA ASIGNADA A UNA VARIABLE ===");

  int Function(int, int) sumar = (int numero1, int numero2) {
    return numero1 + numero2;
  };

  int resultadoSuma = sumar(5, 3);

  print("Resultado de la suma: $resultadoSuma");

  // --------------------------------------------------
  // 2. FUNCIÓN ANÓNIMA DENTRO DE UNA FUNCIÓN
  // DE ORDEN SUPERIOR (forEach)
  // --------------------------------------------------

  print("\n=== 2. FUNCIÓN ANÓNIMA CON forEach ===");

  List<String> nombres = ['Álvaro', 'Carlos', 'María', 'Laura'];

  nombres.forEach((String nombre) {
    print("Nombre: $nombre");
  });

  // --------------------------------------------------
  // 3. FUNCIÓN ANÓNIMA CON SINTAXIS DE FLECHA (=>)
  // --------------------------------------------------

  print("\n=== 3. FUNCIÓN ANÓNIMA CON FLECHA ===");

  int Function(int) calcularCuadrado = (int numero) => numero * numero;

  int cuadrado = calcularCuadrado(5);

  print("El cuadrado de 5 es: $cuadrado");

  // --------------------------------------------------
  // 4. FUNCIÓN ANÓNIMA COMO ARGUMENTO DE OTRA FUNCIÓN
  // --------------------------------------------------

  print("\n=== 4. FUNCIÓN ANÓNIMA COMO ARGUMENTO ===");

  ejecutarOperacion(10, 5, (int numero1, int numero2) {
    return numero1 * numero2;
  });

  // --------------------------------------------------
  // 5. FUNCIÓN ANÓNIMA DENTRO DE UN map()
  // --------------------------------------------------

  print("\n=== 5. FUNCIÓN ANÓNIMA DENTRO DE map() ===");

  List<int> numeros = [1, 2, 3, 4, 5];

  List<int> numerosDobles = numeros.map((int numero) {
    return numero * 2;
  }).toList();

  print("Lista original: $numeros");
  print("Lista con valores duplicados: $numerosDobles");

}

/**
 * Función que recibe dos números y una función como argumento.
 *
 * La función recibida realiza una operación con los dos números.
 */
void ejecutarOperacion(
    int numero1,
    int numero2,
    int Function(int, int) operacion) {

  int resultado = operacion(numero1, numero2);

  print("Resultado de la operación: $resultado");

}