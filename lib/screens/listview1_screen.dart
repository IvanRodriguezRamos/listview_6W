import 'package:flutter/material.dart';

class ListView1 extends StatelessWidget {
  var vengadores = ["capitan america", "iron man", "hulk", "thor"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListView1'),
        ),
        body: ListView(
          children: [
            ...vengadores
                .map((lista) => ListTile(
                    title: Text(lista),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {}))
                .toList(),
            const Divider(
              height: 20,
              thickness: 5,
              indent: 20,
              endIndent: 20,
            )
          ],
        ));
  }
}
