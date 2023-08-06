import 'dart:math' show Random;

import 'package:flutter/material.dart';

// para poder cambiar algunos estados
class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  // Cambiar de forma
  void changeShape() {
    // print('hola');
    final random = Random();

    // como valor maximo 300 y que no se mas pequeño q 70
    _width = random.nextInt(300).toDouble() + 70;
    _height = random.nextInt(300).toDouble() + 70;
    _color = Color.fromRGBO(random.nextInt(255), random.nextInt(255),
        random.nextInt(255), 1); // colores es hasta 255
    _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble() + 10);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            // color: Colors.red,
            // curve: Curves.bounceOut,
            curve: Curves.easeOutCubic, // Curves class: animacion
            width: _width,
            height: _height,
            decoration:
                BoxDecoration(color: _color, borderRadius: _borderRadius)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(
          Icons.play_circle_outline,
          size: 35,
        ),
      ),
    );
  }
}
