import 'package:desings_components/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes en Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, i) => ListTile(
          leading: Icon(Icons.access_alarm_outlined),
          trailing:
              Icon(Icons.arrow_forward_ios_outlined, color: Colors.pink[300]),
          onTap: () {
            // ******** 1 ************
            // final route = MaterialPageRoute(
            //   builder: (context) => ListView1Screen(),
            // );
            // Navigator.push(context, route);

            // ******** 2 ************
            // Destruye la anterior ruta, ejem: login
            // Navigator.pushReplacement(context, route);

            // ******** 3 ************
            Navigator.pushNamed(context, 'card2');
          },
          title: Text("Nombre de la ruta"),
        ),
        separatorBuilder: (_, __) => Divider(),
      ),
    );
  }
}
