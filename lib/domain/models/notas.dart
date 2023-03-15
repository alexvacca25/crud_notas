class Nota {
  var detalle;
  var prioridad;
  var estado;

  Nota({required this.detalle, required this.prioridad, required this.estado});

  factory Nota.crear(Map<String, dynamic> jsonMap) {
    return Nota(
        detalle: jsonMap['detalle'],
        estado: jsonMap['estado'],
        prioridad: jsonMap['prioridad']);
  }
}

var nota1 = {
  "detalle": "Estudiar Programacion Movil",
  "prioridad": "Alta",
  "estado": true
};
var nota2 = {
  "detalle": "Salir a Rumbear",
  "prioridad": "Baja",
  "estado": false
};
var nota3 = {
  "detalle": "Estudiar Componentes de Flutter",
  "prioridad": "Alta",
  "estado": true
};

List<Nota> listaNotas = [
  Nota.crear(nota1),
  Nota.crear(nota2),
  Nota.crear(nota3),
];
