
/**
 * DART
 * RELACIÓN 3 - EJERCICIOS 17, 18 Y 19
 * Pruebas unitarias de las funciones de validación
 */

import 'package:test/test.dart';
import 'package:proyecto_testing/validaciones.dart';

void main() {

  // EJERCICIO 17: Pruebas básicas de las funciones de validación

  test('Comprobar una URL válida', () {
    expect(isURL('https://www.google.com'), true);
  });

  test('Comprobar un email válido', () {
    expect(isEmail('alvaro@gmail.com'), true);
  });

  test('Comprobar un DNI válido', () {
    expect(isDNI('12345678Z'), true);
  });

  // EJERCICIO 18: Pruebas de la función isRGB()

  group('Pruebas de isRGB()', () {

    // Colores válidos
    test('Color hexadecimal de 3 dígitos', () {
      expect(isRGB('#4F6'), true);
    });

    test('Color hexadecimal de 6 dígitos', () {
      expect(isRGB('#982A3B'), true);
    });

    // Colores no válidos
    test('Color sin almohadilla', () {
      expect(isRGB('982A3B'), false);
    });

    test('Color con menos de 3 dígitos', () {
      expect(isRGB('#12'), false);
    });

    test('Color con 4 dígitos', () {
      expect(isRGB('#1234'), false);
    });

    test('Color con 5 dígitos', () {
      expect(isRGB('#12345'), false);
    });

    test('Color con más de 6 dígitos', () {
      expect(isRGB('#1234567'), false);
    });

    test('Color con caracteres no hexadecimales', () {
      expect(isRGB('#12G'), false);
    });

    test('Color con letras no permitidas', () {
      expect(isRGB('#987s'), false);
    });

    test('Nombre de color en lugar de código hexadecimal', () {
      expect(isRGB('red'), false);
    });

    test('Cadena vacía', () {
      expect(isRGB(''), false);
    });

  });

  // EJERCICIO 19: Pruebas de isURL()

  group('Pruebas de isURL()', () {

    test('URL con HTTPS válida', () {
      expect(isURL('https://www.google.com'), true);
    });

    test('URL con HTTP válida', () {
      expect(isURL('http://www.google.com'), true);
    });

    test('URL con una ruta válida', () {
      expect(isURL('https://www.google.com/search'), true);
    });

    test('URL sin protocolo', () {
      expect(isURL('www.google.com'), false);
    });

    test('Texto que no es una URL', () {
      expect(isURL('google'), false);
    });

  });


  // Pruebas de isEmail()

  group('Pruebas de isEmail()', () {

    test('Email válido', () {
      expect(isEmail('alvaro@gmail.com'), true);
    });

    test('Email válido con subdominio', () {
      expect(isEmail('alvaro@mail.google.com'), true);
    });

    test('Email sin arroba', () {
      expect(isEmail('alvarogmail.com'), false);
    });

    test('Email sin dominio', () {
      expect(isEmail('alvaro@'), false);
    });

    test('Texto que no es un email', () {
      expect(isEmail('alvaro'), false);
    });

  });


  // Pruebas de isDNI()

  group('Pruebas de isDNI()', () {

    test('DNI válido', () {
      expect(isDNI('12345678Z'), true);
    });

    test('DNI válido con letra minúscula', () {
      expect(isDNI('12345678z'), true);
    });

    test('DNI con letra incorrecta', () {
      expect(isDNI('12345678A'), false);
    });

    test('DNI con menos de 8 números', () {
      expect(isDNI('1234567Z'), false);
    });

    test('DNI sin letra', () {
      expect(isDNI('12345678'), false);
    });

  });


  // Pruebas de isRGB()

  group('Pruebas de isRGB()', () {

    test('Color hexadecimal de 3 dígitos', () {
      expect(isRGB('#4F6'), true);
    });

    test('Color hexadecimal de 6 dígitos', () {
      expect(isRGB('#982A3B'), true);
    });

    test('Color sin almohadilla', () {
      expect(isRGB('982A3B'), false);
    });

    test('Color con menos de 3 dígitos', () {
      expect(isRGB('#12'), false);
    });

    test('Color con 4 dígitos', () {
      expect(isRGB('#1234'), false);
    });

    test('Color con 5 dígitos', () {
      expect(isRGB('#12345'), false);
    });

    test('Color con más de 6 dígitos', () {
      expect(isRGB('#1234567'), false);
    });

    test('Color con caracteres no hexadecimales', () {
      expect(isRGB('#12G'), false);
    });

    test('Color con letras no permitidas', () {
      expect(isRGB('#987s'), false);
    });

    test('Nombre de color en lugar de código hexadecimal', () {
      expect(isRGB('red'), false);
    });

    test('Cadena vacía', () {
      expect(isRGB(''), false);
    });

  });

}
