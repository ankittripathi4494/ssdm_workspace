// ignore_for_file: avoid_print

import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  final String title;
  const SplashScreen({super.key, required this.title});

  @override
  State<SplashScreen> createState() => StateofSplashScreen();
}

class StateofSplashScreen extends State<SplashScreen> {
  bool showProgress = true;
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      print("Do the task");
      Navigator.pushNamed(context, '/dashboard',
          arguments: {"data": "Ankit Tri"});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.red,
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("resources/images/logo.png"))),
              child: const SizedBox(
                width: 200,
                height: 200,
              ),
            ),
            Visibility(
              visible: showProgress,
              replacement: Container(),
              child: const CircularProgressIndicator(),
            )
          ],
        ),
      ),
    );
  }
}
