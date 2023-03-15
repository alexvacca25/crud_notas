import 'package:crud_notas/domain/models/notas.dart';
import 'package:crud_notas/ui/pages/notas/widget.dart';
import 'package:flutter/material.dart';

class AddNota extends StatefulWidget {
  const AddNota({super.key});

  @override
  State<AddNota> createState() => _AddNotaState();
}

class _AddNotaState extends State<AddNota> {
  TextEditingController controldetalle = TextEditingController();
  TextEditingController controlprioridad = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicionar Nota'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Textos(controlador: controldetalle, titulos: 'Ingrese la Nota'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Textos(
                controlador: controlprioridad, titulos: 'Ingrese la Prioridad'),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: OutlinedButton(
                onPressed: () {
                  Nota n = Nota(
                      detalle: controldetalle.text,
                      prioridad: controlprioridad.text,
                      estado: true);

                  Navigator.pop(context, n);
                },
                child: const Text('Guardar')),
          )
        ],
      ),
    );
  }
}
