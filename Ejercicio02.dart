import 'dart:math';

// Definición de la clase Calculadora
class Calculadora {
  double suma(double a, double b) => a + b;
  double resta(double a, double b) => a - b;
  double multiplicacion(double a, double b) => a * b;
  double division(double a, double b) => a / b;
}

// Definición del mixin OperacionesAdicionales
mixin OperacionesAdicionales {
  num potencia(num base, num exponente) => pow(base, exponente);
}

// Definición del mixin OperacionesAvanzadas
mixin OperacionesAvanzadas {
  double raizCuadrada(double numero) => sqrt(numero);
}
// Definición de la clase CalculadoraAvanzada que usa ambas mixins
class CalculadoraAvanzada extends Calculadora with OperacionesAdicionales, OperacionesAvanzadas {}
void main() {
  // Creación de un objeto de tipo CalculadoraAvanzada
  var calculadora = CalculadoraAvanzada();

  // Realización de algunas operaciones matemáticas
  print("Suma: ${calculadora.suma(5, 3)}");
  print("Resta: ${calculadora.resta(10, 7)}");
  print("Multiplicación: ${calculadora.multiplicacion(4, 6)}");
  print("División: ${calculadora.division(20, 4)}");
  print("Potencia: ${calculadora.potencia(2, 3)}");
  print("Raíz cuadrada: ${calculadora.raizCuadrada(25)}");
}
