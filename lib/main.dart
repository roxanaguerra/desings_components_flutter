import 'package:flutter/material.dart';
import 'package:desings_components/screens/screens.dart';
import 'package:desings_components/router/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      initialRoute: AppRoutes.initialRoute, // initialRoute: 'home',
      // ********* 1 **************
      // routes: {
      //   'home': (BuildContext context) => HomeScreen(),
      //   'listview1': (BuildContext context) => ListView1Screen(),
      //   'listview2': (BuildContext context) => ListView2Screen(),
      //   'alert': (BuildContext context) => AlertScreen(),
      //   'card': (BuildContext context) => CardScreen(),
      // },
      routes: AppRoutes.routes,
      // **************************

      // ********* 2 **************
      // EN EL CASO QUE INGRESAMOS A UNA RUTA  QNO EXISTE
      // onGenerateRoute: (settings) {
      //   print(settings); // RouteSettings("card2", null)
      //   return MaterialPageRoute(
      //     builder: (context) => AlertScreen(),
      //   );
      // },
      // onGenerateRoute: (settings) => AppRoutes.onGenerateRoute(settings),

      onGenerateRoute: AppRoutes.onGenerateRoute,
      // **************************
    );
  }
}
