
import 'package:crud_notas/ui/pages/notas/list.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Crud Notas',
        theme: ThemeData(primarySwatch: Colors.green),
        home: const ListaNotas());
  }
}
