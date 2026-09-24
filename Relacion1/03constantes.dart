void main() {
  // Declaración de constantes con const y final

  // Se puede usar const para declarar una constante cuyo valor se conoce en tiempo de compilación
  const int MAX_VALUE = 100; // Constante de tipo int

  // Se puede usar final para declarar una constante cuyo valor se asigna en tiempo de ejecución
  final int DIAS_ANYO = (DateTime.now().year % 4 == 0) ? 366 : 365; // Constante de tipo int, pero su valor se asigna en tiempo de ejecución

  print("Valor máximo: $MAX_VALUE");
  print("Días en el año actual: $DIAS_ANYO");
}