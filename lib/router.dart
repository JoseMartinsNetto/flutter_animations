import 'package:animations/pages/home/home_page.dart';
import 'package:animations/pages/pulsating_animation/pulsating_animation_page.dart';
import 'package:animations/pages/pulsating_animation_flutter_animate/pulsating_animation_flutter_animate.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static var navigatorKey = GlobalKey<NavigatorState>();

  static final Map<String, Widget Function(BuildContext context)> routes = {
    Routes.initial: (context) => const HomePage(),
    Routes.pulsatingPage: (context) => const PulsatingAnimationPage(),
    Routes.pulsatingFlutterAnimatePage: (context) => const PulsatingAnimationPageFlutterAnimate()
  };

  static void pushNamed(String routeName) {
    final context = navigatorKey.currentContext;

    if (context != null) {
      Navigator.of(context).pushNamed(routeName);
    }
  }
}

class Routes {
  Routes._();

  static String get initial => '/';
  static String get pulsatingPage => '/pulsating/';
  static String get pulsatingFlutterAnimatePage => '/pulsating_flutter_animate/';
}
