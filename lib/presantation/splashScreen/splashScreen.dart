import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../main_page/screen_main_page.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    goToHomeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Lottie.network(
          'https://assets6.lottiefiles.com/private_files/lf30_F6EtR7.json'),
    );
  }

  Future<void> goToHomeScreen() async {
    await Future.delayed(
      const Duration(seconds: 5),
    );
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => ScreenMainPage(),
      ),
    );
  }
}
