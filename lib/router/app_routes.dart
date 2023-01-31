import 'package:flutter/material.dart';

import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';



class AppRoutes{
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // TODO: borrar home
    MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home),
    MenuOption(route: 'listview1', name: 'Listvie tipo 1', screen: const Listview1Screen(), icon: Icons.list_outlined),
    MenuOption(route: 'listview2', name: 'Listvie tipo 2', screen: const Listview2Screen(), icon: Icons.list_outlined),
    MenuOption(route: 'alert', name: 'Alertas', screen: const AlertScreen(), icon: Icons.notifications_active_outlined),
    MenuOption(route: 'card', name: 'Tarjetas - cards', screen: const CardScreen(), icon: Icons.calendar_view_day_rounded),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    
    Map<String, Widget Function(BuildContext)> AppRoutes = {};

    for (final option in menuOptions) {
      AppRoutes.addAll({option.route:(BuildContext context) => option.screen});
    }
    return  AppRoutes;
  }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //       'home':(BuildContext context) => const HomeScreen(),
  //       'listview1':(BuildContext context) => const Listview1Screen(), 
  //       'listview2':(BuildContext context) => const Listview2Screen(),
  //       'alert':(BuildContext context) => const AlertScreen(), 
  //       'card':(BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute ( RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
        );
  }
}