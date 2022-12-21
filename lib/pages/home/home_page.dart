import 'package:flutter/material.dart';

import '../../router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animations")),
      body: ListView(
        children: [
          ListTile(
            title: const Text("Pulsating animation"),
            onTap: () => AppRouter.pushNamed(Routes.pulsatingPage),
          ),
          ListTile(
            title: const Text("Pulsating animation flutter animate"),
            onTap: () => AppRouter.pushNamed(Routes.pulsatingFlutterAnimatePage),
          ),
        ],
      ),
    );
  }
}
