import 'package:desings_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? name;

  const CustomCardType2({Key? key, required this.imageUrl, this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // sirve para alinear o cortar el contenido
      clipBehavior: Clip.antiAlias,
      // borde al card
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 20,
      // color de la sombra
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
          if (name != null)
            Container(
              // alinear el texto al final
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 15, bottom: 10),
              // child: Text(name ?? 'No Title'),
              child: Text(name!),
            ),

          // Image(
          //   image: NetworkImage(
          //       'https://www.xtrafondos.com/wallpapers/paisaje-digital-en-atardecer-5846.jpg'),
          // ),
        ],
      ),
    );
  }
}
