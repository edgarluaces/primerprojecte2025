import 'package:flutter/material.dart';
import 'package:primerprojecte2025/components/itemtasca.dart';

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({super.key,});

  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
//lista nueva ----->

  List tasquesLlista = [
    {"titol": "tasca 1", "valor": false},
    {"titol": "tasca 2", "valor": true},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],

      //appbar
      appBar: AppBar(
        backgroundColor: Colors.teal[300],
        title: const Text(
          "App Tasques",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        foregroundColor: Colors.orange[200],
      ),

      //floating action button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal[400],
        shape: const CircleBorder(),
        child: Icon(
          Icons.add,
          color: Colors.orange[200],
        ),
      ),

      //body
      body: ListView.builder(
        itemCount: tasquesLlista.length,
        itemBuilder: (context, index) {
          return Itemtasca(
            textTasca: tasquesLlista[index]["titol"], 
            valorCheckbox: tasquesLlista[index]["valor"],
          );
        },
      ),
    );
  }
}
