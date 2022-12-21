import 'package:animations/pages/home/home_page.dart';
import 'package:animations/pages/pulsating_animation/pulsating_animation_page.dart';
import 'package:flutter/material.dart';
import 'router.dart';

void main() {
  runApp(const AnimationApp());
}

class AnimationApp extends StatelessWidget {
  const AnimationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: AppRouter.navigatorKey,
      initialRoute: Routes.initial,
      routes: AppRouter.routes,
      theme: ThemeData(),
    );
  }
}
