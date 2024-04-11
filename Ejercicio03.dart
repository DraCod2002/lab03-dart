class Empleado {
  String nombre;
  String apellido;
  double salario;
  int horasTrabajadas;

  Empleado(this.nombre, this.apellido, this.salario, this.horasTrabajadas);
}

// Definición del mixin Bonificaciones
mixin Bonificaciones {
  double calcularBonificacion(double salario) {
    // Por ejemplo, calculamos la bonificación como el 10% del salario
    return salario * 0.10;
  }
}

class EmpleadoConBonificaciones extends Empleado with Bonificaciones {
  EmpleadoConBonificaciones(String nombre, String apellido, double salario, int horasTrabajadas)
      : super(nombre, apellido, salario, horasTrabajadas);
}

void main() {
  // Creación de una lista de objetos EmpleadoConBonificaciones
  var empleados = [
    EmpleadoConBonificaciones("Juan", "Perez", 2000, 40),
    EmpleadoConBonificaciones("Maria", "Gonzalez", 2500, 45),
    EmpleadoConBonificaciones("Carlos", "Lopez", 1800, 35),
  ];

  for (var empleado in empleados) {
    var bonificacion = empleado.calcularBonificacion(empleado.salario);
    print("Empleado: ${empleado.nombre} ${empleado.apellido}, Bonificación: \$${bonificacion.toStringAsFixed(2)}");
  }
}
