import 'package:desings_components/router/app_routes.dart';
import 'package:desings_components/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes en Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
        // itemCount: 10,
        itemCount: menuOptions.length,
        itemBuilder: (context, i) => ListTile(
          leading: const Icon(Icons.access_alarm_outlined),
          trailing: Icon(menuOptions[i].icon, color: Colors.pink[300]),
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
            // Navigator.pushNamed(context, 'card2');

            // ******** 4 ************
            Navigator.pushNamed(context, menuOptions[i].route);
          },
          title: Text(menuOptions[i].name),
        ),
        separatorBuilder: (_, __) => Divider(),
      ),
    );
  }
}
