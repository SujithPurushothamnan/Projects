import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:sujith/amazon_login_page.dart';
// import 'package:sujith/amazon_home_page.dart';

class AmazonSplashScreen extends StatefulWidget {
  const AmazonSplashScreen({super.key});

  @override
  State<AmazonSplashScreen> createState() => _AmazonSplashScreenState();
}

class _AmazonSplashScreenState extends State<AmazonSplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const AmazonLoginPage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFf6a317),
              Color(0xFFf6a317),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
            child: AnimationConfiguration.staggeredList(
          position: 0, // index of the item (use list index if inside a list)
          duration: const Duration(milliseconds: 5000),
          child: FlipAnimation(
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                image: const DecorationImage(
                  image: AssetImage("assets/amazon_splash.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        )),
      ),
    );
  }
}
