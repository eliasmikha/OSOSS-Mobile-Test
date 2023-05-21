import 'package:flutter/material.dart';
import 'package:ososs/features/more/splash/presentation/screens/splash_screen_content.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashScreenContent(),
    );
  }
}
