import 'package:flutter/material.dart';
import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const intialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // todo: borrar home
    // MenuOption(
    //   route: 'home',
    //   nombre: 'Home Screen',
    //   screen: const HomeScreen(),
    //   icon: Icons.home,
    // ),
    MenuOption(
      route: 'listview1',
      nombre: 'List View Tipo 1',
      screen: const ListView1Screen(),
      icon: Icons.list_alt_outlined,
    ),
    MenuOption(
      route: 'listview2',
      nombre: 'List View Tipo 2',
      screen: const ListView2Screen(),
      icon: Icons.list_sharp,
    ),
    MenuOption(
      route: 'alert',
      nombre: 'Alertas',
      screen: const AlertScreen(),
      icon: Icons.notification_add,
    ),
    MenuOption(
      route: 'card',
      nombre: 'Tarjetas - Cards',
      screen: const CardScreen(),
      icon: Icons.card_membership,
    ),
    MenuOption(
      route: 'avatar',
      nombre: 'Circle Avatar',
      screen: const AvatarScreen(),
      icon: Icons.supervisor_account_rounded,
    ),
    MenuOption(
      route: 'Animated',
      nombre: 'Animated Container',
      screen: const AnimatedScreen(),
      icon: Icons.play_circle_outline,
    ),
    MenuOption(
      route: 'inputs',
      nombre: 'Text Inputs',
      screen: const InputsScreen(),
      icon: Icons.input_rounded,
    ),
    MenuOption(
      route: 'slider',
      nombre: 'Slider and Checks',
      screen: const SliderScreen(),
      icon: Icons.slow_motion_video_rounded,
    ),
    MenuOption(
      route: 'listviewbuilder',
      nombre: 'InfiniteScroll & Pull to Refresh',
      screen: const ListViewScreen(),
      icon: Icons.build_circle_outlined,
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => const HomeScreen(),
  //   'listview1': (context) => const ListView1Screen(),
  //   'listview2': (context) => const ListView2Screen(),
  //   'alert': (context) => const AlertScreen(),
  //   'card': (context) => const CardScreen(),
  // };

  static Route<dynamic>? onGeneratedRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
