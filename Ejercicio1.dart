class Drone {
  int id;
  double capacidadCargaKg;
  int autonomiaMin;

  // Constructor
  Drone(this.id, this.capacidadCargaKg, this.autonomiaMin);

  // Método para mostrar la ficha
  String mostrarFicha() {
    return 'Drone ID: $id, Capacidad: ${capacidadCargaKg}Kg, Autonomía: ${autonomiaMin}min';
  }
}

class DroneMaritimo extends Drone {
  int resistenciaCorrosion; // en %

  DroneMaritimo(int id, double capacidadCargaKg, int autonomiaMin, this.resistenciaCorrosion)
      : super(id, capacidadCargaKg, autonomiaMin);

  @override
  String mostrarFicha() {
    return super.mostrarFicha() +
        ', Resistencia a corrosión: ${resistenciaCorrosion}%';
  }
}

void main() {
  Drone d1 = Drone(100, 22.5, 115);
  DroneMaritimo dm1 = DroneMaritimo(201, 27.0, 135, 90);

  print(d1.mostrarFicha());
  print(dm1.mostrarFicha());
}