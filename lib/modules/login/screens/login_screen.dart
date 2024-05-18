import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ssdm/global_widget/custom_bottom_nav_bar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => StateofLoginScreen();
}

class StateofLoginScreen extends State<LoginScreen> {
  int currentIndex = 1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 100,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              gradient: const LinearGradient(
                  colors: [Colors.deepOrange, Colors.white])),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(color: Colors.black, width: 4)),
        surfaceTintColor: Colors.pink.shade500,
        shadowColor: Colors.black,
        // scrolledUnderElevation: 20,
        backgroundColor: Colors.amber.shade300,
        foregroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.green, size: 30),
        actionsIconTheme: const IconThemeData(color: Colors.red, size: 20),

        centerTitle: true,
      ),
      body: const Center(
        child: Text("Login Page"),
      ),
     bottomNavigationBar: CustomBottomNav(currentIndex: currentIndex),
    );
  }
}
