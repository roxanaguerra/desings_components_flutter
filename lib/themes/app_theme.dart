import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.pink;
  static const Color secundary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      // Color primario
      primaryColor: primary,

      // AppBar Theme
      appBarTheme: const AppBarTheme(
        color: Colors.pink,
        elevation: 0,
      ),

      // TextButton Theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: primary,
        ),
      ),

      // FloatingActionButton
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
        elevation: 5,
      ),

      // ElevatedButton
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: primary, shape: const StadiumBorder(), elevation: 0),
      ),

      // inputDecoration
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: secundary),
        // cc esta habilitado el borde
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: secundary),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: secundary),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),
      ));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    // Color primario
    primaryColor: Colors.red,
    // AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
    scaffoldBackgroundColor: Colors.black,
  );
}
