import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          Image.asset(
            'assets/images/one.png',
            height: 200,
          ),
          const Spacer(),
          const Text("Team up for Scuccess"),
          
        ],
      ),
    );
  }
}
