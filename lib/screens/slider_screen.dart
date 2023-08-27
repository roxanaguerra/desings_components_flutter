import 'package:flutter/material.dart';

import 'package:desings_components/themes/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
        children: [
          // .adaptive: de acuerdo a la plataforma q este. IOS o Android
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            // puntos divisores, para anclarse
            // divisions: 10,
            value: _sliderValue,
            onChanged: _sliderEnabled
                ? (value) {
                    print(value);
                    _sliderValue = value;
                    setState(() {});
                  }
                : null,
          ),
          Checkbox(
            activeColor: AppTheme.primary,
            value: _sliderEnabled,
            onChanged: (value) {
              _sliderEnabled = value ?? true;
              setState(() {});
            },
          ),

          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled,
            onChanged: (value) => setState(() {
              _sliderEnabled = value ?? true;
            }),
          ),

          Switch(
            value: _sliderEnabled,
            onChanged: (value) => setState(() {
              _sliderEnabled = value;
            }),
          ),
          // .adaptive: de acuerdo a la plataforma q este. IOS o Android
          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled,
            onChanged: (value) => setState(() {
              _sliderEnabled = value;
            }),
          ),
          // DESCRIPCION DE LA APLICACION
          const AboutListTile(
            icon: Icon(
              Icons.insert_drive_file_rounded,
              color: AppTheme.primary,
            ),
            child: Text("Info Licencia"),
          ), // al hacer clic, te muestra la info de la licencia
          // ******************
          // Expanded: para que tome todo el ancho sobrante de la pantalla
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://w7.pngwing.com/pngs/791/718/png-transparent-batman-superman-diana-prince-dc-animated-universe-drawing-batman-comics-heroes-superhero.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
