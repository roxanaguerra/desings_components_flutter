import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const ['Roxana', 'Sandra', 'Guerra', 'Apaza'];

  ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Listview Tipo 1"),
        ),
        body: ListView(
          children: [
            ...options
                .map((names) => ListTile(
                      leading: const Icon(Icons.accessibility),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                      title: Text('Holitas $names'),
                    ))
                .toList(),

            // ListTile(
            //   leading: Icon(Icons.access_alarm_outlined),
            //   title: Text("Hola Mundo"),
            // ),
          ],
        ));
  }
}
