class BicicletaSmart {
  String marca;
  String modelo;
  int anio;
  bool tieneGPS;
  bool tieneMonitorRitmo;

  BicicletaSmart(this.marca, this.modelo, this.anio, 
                 this.tieneGPS, this.tieneMonitorRitmo);

  BicicletaSmart.basica(this.marca, this.modelo, this.anio)
      : tieneGPS = false,
        tieneMonitorRitmo = false;

  BicicletaSmart.premium(this.marca, this.modelo, this.anio)
      : tieneGPS = true,
        tieneMonitorRitmo = true;

  void descripcion() {
    print("Bicicleta $marca $modelo ($anio) "
          "- GPS: ${tieneGPS ? "Sí" : "No"} "
          "- Monitor de Ritmo: ${tieneMonitorRitmo ? "Sí" : "No"}");
  }
}

void main() {
  var bici1 = BicicletaSmart.basica("Trek", "Domane", 2024);
  var bici2 = BicicletaSmart.premium("Specialized", "Turbo", 2025);

  bici1.descripcion();
  bici2.descripcion();
}
