import 'package:flutter/material.dart';

import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';



class AppRoutes{
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // TODO: borrar home
    // MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home),
    MenuOption(route: 'listview1', name: 'Listvie tipo 1', screen: const Listview1Screen(), icon: Icons.list_outlined),
    MenuOption(route: 'listview2', name: 'Listvie tipo 2', screen: const Listview2Screen(), icon: Icons.list_outlined),
    MenuOption(route: 'alert', name: 'Alertas', screen: const AlertScreen(), icon: Icons.notifications_active_outlined),
    MenuOption(route: 'card', name: 'Tarjetas - cards', screen: const CardScreen(), icon: Icons.calendar_view_day_rounded),
    MenuOption(route: 'avatar', name: 'Circule Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'animated', name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.play_arrow),
    MenuOption(route: 'inputs', name: 'Text inputs', screen: const InputsScreen(), icon: Icons.input_rounded),
    MenuOption(route: 'slider', name: 'Slider and Checks', screen: const SliderScreen(), icon: Icons.stay_primary_landscape_sharp),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home':(BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route:(BuildContext context) => option.screen});
    }
    return  appRoutes;
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