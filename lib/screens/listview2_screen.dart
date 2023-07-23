import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const ["Barbie", "Elementos", "Transformers", "Spider Man"];

  ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Listview - Peliculas"),
          elevation: 0, // sombra en el appbar
          backgroundColor: Colors.pink[200], //Colors: es un obj
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, i) => ListTile(
            trailing:
                Icon(Icons.arrow_forward_ios_outlined, color: Colors.pink[300]),
            onTap: () {
              final game = options[i];
              print(game);
            },
            title: Text(options[i]),
          ),
          separatorBuilder: (_, __) => Divider(),
        ));
  }
}
