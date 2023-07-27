import 'package:desings_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.home_outlined, color: AppTheme.primary),
            title: Text("Soy un titulo"),
            subtitle: Text(
                "Mollit ea cupidatat ullamco enim nulla consequat ex ea labore ut voluptate ad. Do magna duis ex velit eu ea. Adipisicing quis occaecat Lorem reprehenderit officia. Fugiat ullamco ut fugiat culpa pariatur esse magna adipisicing aliqua."),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text("Cancel"),
                ),
                TextButton(onPressed: () {}, child: const Text("OK")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
