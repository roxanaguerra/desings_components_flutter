import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Alerta!!!'),
            content: Column(
              // determinar el tamaño q va usar, de acuerdo al contenido de sus hijos
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Este es el contenido de la alerta'),
                SizedBox(
                  height: 10,
                ),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.pink[300]),
                  )),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('OK  ')),
            ],
          );
        });
  }

  void displayDialogAndroid(BuildContext context) {
    // print('Hola Mundo');

    // FUNCION
    showDialog(
        // cierre el dialog, cuando hago click en la sombra (true)
        // barrierDismissible: true,

        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Alerta!!!'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(15)),
            content: Column(
              // determinar el tamaño q va usar, de acuerdo al contenido de sus hijos
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Este es el contenido de la alerta'),
                SizedBox(
                  height: 10,
                ),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Cancelar',
                      style: TextStyle(color: Colors.pink[300]))),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('OK  ')),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        // style: ElevatedButton.styleFrom(
        //     primary: AppTheme.primary,
        //     shape: const StadiumBorder(),
        //     elevation: 0
        //   ),
        child: const Padding(
          // SI PONES EL MISMO PADDING, MEJOR USAR
          // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          // padding: EdgeInsets.all(20),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Text(
            'Mostrar Alerta',
            style: TextStyle(fontSize: 16),
          ),
        ),
        // onPressed: null,
        // onPressed: () => displayDialogAndroid(context),
        // onPressed: displayDialogAndroid,
        // onPressed: () => displayDialogIOS(context),
        // VALIDAR EN Q DISPOSITIVO ESTAMOS
        onPressed: () => Platform.isAndroid
            ? displayDialogAndroid(context)
            : displayDialogIOS(context),
      )),
      floatingActionButton: FloatingActionButton(
          // backgroundColor: AppTheme.primary,
          child: const Icon(Icons.close),
          onPressed: () {
            // regresar a la anterior q esta en el stack de cartas
            Navigator.pop(context);
          }),
    );
  }
}
