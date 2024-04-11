// Definición de la clase base Usuario
class Usuario {
  String nombre;
  String email;
  String contrasena;

  Usuario(this.nombre, this.email, this.contrasena);
}

mixin Autenticacion {
  bool iniciarSesion(UsuarioAutenticado usuario, String email, String contrasena) {
   
    return (usuario.email == email && usuario.contrasena == contrasena);
  }
}

class UsuarioAutenticado extends Usuario with Autenticacion {
  UsuarioAutenticado(String nombre, String email, String contrasena)
      : super(nombre, email, contrasena);
}

void main() {
  var usuario = UsuarioAutenticado("John Doe", "john@example.com", "password123");
  var email = "john@example.com";
  var contrasena = "password123";
  if (usuario.iniciarSesion(usuario, email, contrasena)) {
    print("Inicio de sesión exitoso para ${usuario.nombre}");
  } else {
    print("Inicio de sesión fallido. Verifica tu email y contraseña.");
  }
}
