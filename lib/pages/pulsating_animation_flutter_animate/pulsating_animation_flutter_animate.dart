import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class PulsatingAnimationPageFlutterAnimate extends StatelessWidget {
  const PulsatingAnimationPageFlutterAnimate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pulsating with flutter animate")),
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          height: 150,
          width: 150,
          child: Stack(
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    // color: Colors.amber.withOpacity(0.3),
                    border: Border.all(color: Colors.amber),
                    shape: BoxShape.circle,
                  ),
                )
                    .animate(onPlay: (controller) => controller.repeat())
                    .scale(
                      begin: const Offset(1, 1),
                      end: const Offset(1.5, 1.5),
                      duration: const Duration(seconds: 2),
                    )
                    .then()
                    .fadeOut(duration: const Duration(milliseconds: 500)),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    // color: Colors.amber.withOpacity(0.3),
                    border: Border.all(color: Colors.amber),
                    shape: BoxShape.circle,
                  ),
                )
                    .animate(
                        delay: const Duration(milliseconds: 1000),
                        onPlay: (controller) => controller.repeat())
                    .scale(
                      begin: const Offset(1, 1),
                      end: const Offset(1.5, 1.5),
                      duration: const Duration(seconds: 2),
                    )
                    .then()
                    .fadeOut(duration: const Duration(milliseconds: 500)),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    // color: Colors.amber.withOpacity(0.3),
                    border: Border.all(color: Colors.amber),
                    shape: BoxShape.circle,
                  ),
                )
                    .animate(
                        delay: const Duration(milliseconds: 2000),
                        onPlay: (controller) => controller.repeat())
                    .scale(
                      begin: const Offset(1, 1),
                      end: const Offset(1.5, 1.5),
                      duration: const Duration(seconds: 2),
                    )
                    .then()
                    .fadeOut(duration: const Duration(milliseconds: 500)),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    // color: Colors.amber.withOpacity(0.3),
                    border: Border.all(color: Colors.amber),
                    shape: BoxShape.circle,
                  ),
                )
                    .animate(
                        delay: const Duration(milliseconds: 3000),
                        onPlay: (controller) => controller.repeat())
                    .scale(
                      begin: const Offset(1, 1),
                      end: const Offset(1.5, 1.5),
                      duration: const Duration(seconds: 2),
                    )
                    .then()
                    .fadeOut(duration: const Duration(milliseconds: 500)),
              ),
              Center(
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Text("Oi"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
