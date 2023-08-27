import 'package:desings_components/models/models.dart';
import 'package:flutter/material.dart';
import 'package:desings_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // MenuOption(
    //     route: 'home',
    //     icon: Icons.menu_sharp,
    //     name: 'Home Screen',
    //     screen: const HomeScreen()),
    MenuOption(
        route: 'listview1',
        icon: Icons.list,
        name: 'ListView1 Screen',
        screen: ListView1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.list_alt_rounded,
        name: 'ListView2 Screen',
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
    MenuOption(
        route: 'avatar',
        name: 'Circle Avatar Screen',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),
    MenuOption(
        route: 'animated',
        name: 'Animated Container',
        screen: const AnimatedScreen(),
        icon: Icons.play_circle_outline_rounded),
    MenuOption(
        route: 'inputs',
        name: 'Text Inputs',
        screen: const InputsScreen(),
        icon: Icons.input_rounded),
    MenuOption(
        route: 'slider',
        name: 'Slider & Checks',
        screen: const SliderScreen(),
        icon: Icons.slow_motion_video_rounded),
    MenuOption(
        route: 'listviewbuilder',
        name: 'InfiniteScroll & Pull to refresh',
        screen: const ListViewBuilderScreen(),
        icon: Icons.build_circle_rounded),
  ];

  // ******************************
  // ************ 1 ****************
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => HomeScreen(),
  //   'listview1': (BuildContext context) => ListView1Screen(),
  //   'listview2': (BuildContext context) => ListView2Screen(),
  //   'alert': (BuildContext context) => AlertScreen(),
  //   'card': (BuildContext context) => CardScreen(),
  // };

  // ******************************
  // ************ 2 ****************
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    // print(settings);

    return MaterialPageRoute(
      builder: (context) => AlertScreen(),
    );
  }
}
