import 'package:flutter/material.dart';

class ListView2 extends StatelessWidget {
  var vengadores = ["capitan america", "iron man", "hulk", "thor"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListView Tipo 2'),
        ),
        body: ListView.separated(
          //obteniendo el tamaño de la lista
          itemCount: vengadores.length,
          //constructor para cada ListTile
          itemBuilder: (context, index) => ListTile(
            //Asignando el nombre de ListTile de acuerdo a la lista
            title: Text(vengadores[index]),
            //Asignando los iconos de cada ListTile
            trailing: Icon(Icons.chevron_right, color: Colors.red),
            onTap: () {
              //Variable que contiene opcion seleccionada
              var opc = vengadores[index];
              //Mostramos variable en consola
              print(opc);
            },
          ),
          //Creamos separadores de cada ListTile
          separatorBuilder: (_, __) => Divider(),
        ));
  }
}
