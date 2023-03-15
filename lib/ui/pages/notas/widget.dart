import 'package:flutter/material.dart';

class Textos extends StatelessWidget {
  const Textos({super.key, required this.controlador, required this.titulos});

  final TextEditingController controlador;
  final String titulos;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controlador,
      decoration: InputDecoration(
          filled: true,
          labelText: titulos,
          suffix: GestureDetector(
            child: const Icon(Icons.close),
            onTap: () {
              controlador.clear();
            },
          )),
    );
  }
}
