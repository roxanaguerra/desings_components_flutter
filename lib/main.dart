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
      // **************************
      // ************ ROUTES **************
      // ********* 1 **************
      // routes: {
      //   'home': (BuildContext context) => HomeScreen(),
      //   'listview1': (BuildContext context) => ListView1Screen(),
      //   'listview2': (BuildContext context) => ListView2Screen(),
      //   'alert': (BuildContext context) => AlertScreen(),
      //   'card': (BuildContext context) => CardScreen(),
      // },
      // ********* 2 **************
      // routes: AppRoutes.routes,
      // ********* 3 **************
      routes: AppRoutes.getAppRoutes(),

      // **************************
      // *********  onGenerateRoute **************
      // ********* 1 **************
      // EN EL CASO QUE INGRESAMOS A UNA RUTA  QNO EXISTE
      // onGenerateRoute: (settings) {
      //   print(settings); // RouteSettings("card2", null)
      //   return MaterialPageRoute(
      //     builder: (context) => AlertScreen(),
      //   );
      // },
      // ********* 2 **************
      // onGenerateRoute: (settings) => AppRoutes.onGenerateRoute(settings),
      // ********* 3 **************
      onGenerateRoute: AppRoutes.onGenerateRoute,
      // **************************
    );
  }
}
