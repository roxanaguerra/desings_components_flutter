import 'package:desings_components/themes/app_theme.dart';
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
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppTheme.lightTheme,

      // **************************************
      // ************ THEME **************
      // ********* 1 **************
      // theme: ThemeData.light().copyWith(
      //     // Color primario
      //     primaryColor: Colors.pink,
      //     // AppBar Theme
      //     appBarTheme: AppBarTheme(
      //       color: Colors.pink[200],
      //       elevation: 0,
      //     )),

      // **************************************
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
      // routes: AppRoutes.getAppRoutes(),

      // **************************************
      // *********  ONGENERATEROUTE **************
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
      // onGenerateRoute: AppRoutes.onGenerateRoute,
      // **************************
    );
  }
}
