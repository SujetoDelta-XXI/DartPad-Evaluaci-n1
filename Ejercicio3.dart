abstract class Trabajador {
  String nombre;
  int salarioMensual;
  
  Trabajador({
    required this.nombre,
    required this.salarioMensual,
  });
  
  double calcularBonificacion();
  
  void imprimir();
}

class AdministradorSistemas extends Trabajador {
  
  AdministradorSistemas({
    required String nombre,
    required int salarioMensual,
  }) : super(nombre: nombre, salarioMensual: salarioMensual);

  @override
  double calcularBonificacion() {
    return salarioMensual * 0.18;
  }

  @override
  void imprimir() {
    print('Hola, soy $nombre, trabajo como Administrador de Sistemas, '
        'mi salario mensual es $salarioMensual y mi bonificación es ${calcularBonificacion()}');
  }
}

class TecnicoSoporte extends Trabajador {
  
  TecnicoSoporte({
    required String nombre,
    required int salarioMensual,
  }) : super(nombre: nombre, salarioMensual: salarioMensual);

  @override
  double calcularBonificacion() {
    return salarioMensual * 0.10;
  }

  @override
  void imprimir() {
    print('Hola, soy $nombre, trabajo como Técnico de Soporte, '
        'mi salario mensual es $salarioMensual y mi bonificación es ${calcularBonificacion()}');
  }
}

void main() {
  final sistemas = AdministradorSistemas(nombre: 'Ana', salarioMensual: 5000);
  sistemas.imprimir();

  final soporte = TecnicoSoporte(nombre: 'Pedro', salarioMensual: 3000);
  soporte.imprimir();
}

