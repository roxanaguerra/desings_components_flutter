import 'package:desings_components/models/models.dart';
import 'package:flutter/material.dart';
import 'package:desings_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        icon: Icons.menu_sharp,
        name: 'Home Screen',
        screen: const HomeScreen()),
    MenuOption(
        route: 'listview1',
        icon: Icons.list,
        name: 'ListView2 Screen',
        screen: ListView1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.list_alt_rounded,
        name: 'ListView3 Screen',
        screen: ListView2Screen()),
    MenuOption(
        route: 'card',
        icon: Icons.card_membership_rounded,
        name: 'Card Screen',
        screen: const CardScreen()),
    MenuOption(
        route: 'alert',
        icon: Icons.add_alert_outlined,
        name: 'Alert Screen',
        screen: const AlertScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => HomeScreen(),
    'listview1': (BuildContext context) => ListView1Screen(),
    'listview2': (BuildContext context) => ListView2Screen(),
    'alert': (BuildContext context) => AlertScreen(),
    'card': (BuildContext context) => CardScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    // print(settings);

    return MaterialPageRoute(
      builder: (context) => AlertScreen(),
    );
  }
}
