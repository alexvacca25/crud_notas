import 'package:crud_notas/domain/models/notas.dart';
import 'package:crud_notas/ui/pages/notas/add.dart';
import 'package:flutter/material.dart';

class ListaNotas extends StatefulWidget {
  const ListaNotas({super.key});

  @override
  State<ListaNotas> createState() => _ListaNotasState();
}

class _ListaNotasState extends State<ListaNotas> {
  final _listanotas = listaNotas;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Lista Notas"),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const AddNota()))
                      .then((resp) {
                    _listanotas.add(resp);
                    setState(() {});
                  });
                },
                icon: const Icon(Icons.add_circle))
          ],
        ),
        body: ListView.builder(
            itemCount: _listanotas.length,
            itemBuilder: (context, index) {
              return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: (_listanotas[index].prioridad == "Alta")
                        ? Colors.blue
                        : Colors.blueGrey,
                    child: Text("${index + 1}"),
                  ),
                  title: Text(_listanotas[index].detalle),
                  subtitle: Text(_listanotas[index].prioridad),
                  trailing: CircleAvatar(
                    radius: 12,
                    child: (_listanotas[index].estado)
                        ? const Icon(Icons.check_circle)
                        : const Icon(Icons.close),
                  ));
            }));
  }
}
