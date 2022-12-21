import 'package:flutter/material.dart';

class PulsatingAnimationPage extends StatefulWidget {
  const PulsatingAnimationPage({super.key});

  @override
  State<PulsatingAnimationPage> createState() => _PulsatingAnimationPageState();
}

class _PulsatingAnimationPageState extends State<PulsatingAnimationPage>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animation = Tween<double>(begin: 0, end: 15)
        .animate(CurvedAnimation(parent: _animationController, curve: Curves.easeInOut));

    _animationController.repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pulsating animation")),
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedBuilder(
          builder: (context, child) {
            return SizedBox(
              height: 250,
              width: 250,
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      width: _animationController.value * 250,
                      height: _animationController.value * 250,
                      decoration: BoxDecoration(
                        color: Colors.amber.withOpacity(0.3),
                        border: Border.all(
                            color: Colors.blue.withOpacity(_animationController.value / 2)),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: _animationController.value * 210,
                      height: _animationController.value * 210,
                      decoration: BoxDecoration(
                        color: Colors.amber.withOpacity(0.7),
                        border: Border.all(
                            color: Colors.blue.withOpacity(_animationController.value / 2)),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(child: Text("oi")),
                    ),
                  ),
                ],
              ),
            );
          },
          animation: _animation,
        ),
      ),
    );
  }
}



                        // boxShadow: [
                        //   for (int i = 0; i <= 5; i++)
                        //     BoxShadow(
                        //         color: Colors.blue.withOpacity(_animationController.value / 5),
                        //         spreadRadius: _animation.value * i)
                        // ],