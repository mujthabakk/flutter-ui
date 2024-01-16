import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final body;
  final bottomNavigationBar;

  const AppScaffold({super.key, required this.body, this.bottomNavigationBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 17, 20, 3),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Color.fromARGB(255, 50, 60, 6),
              // Color.fromARGB(255, 14, 19, 1)
              Colors.transparent
            ],
            center: Alignment(0.5, -.3),
            radius: 1.9,
          ),
        ),
        child: body,
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
