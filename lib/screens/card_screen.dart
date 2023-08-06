import 'package:flutter/material.dart';
import 'package:desings_components/widget/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Card Widget"),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              imageUrl:
                  'https://www.xtrafondos.com/wallpapers/paisaje-digital-en-atardecer-5846.jpg',
              name: 'Hermoso paisaje',
            ),
            SizedBox(height: 20),
            CustomCardType2(
                imageUrl:
                    'https://www.fundacionaquae.org/wp-content/uploads/2019/11/agua.montana.jpg',
                name: 'Montañas'),
            SizedBox(height: 20),
            CustomCardType2(
                imageUrl:
                    'https://w0.peakpx.com/wallpaper/735/652/HD-wallpaper-sunflowers-at-sunrise-field-sunflowers-fiery-sunrise-sunset-beautiful-sky.jpg'),
            SizedBox(height: 100),
          ],
        ));
  }
}
