import 'package:flutter/material.dart';
import 'package:ssdm/global_widget/custom_bottom_nav_bar.dart';

class NotificationScreen extends StatefulWidget {
  final String title;
  const NotificationScreen({super.key, required this.title});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  int currentIndex = 2;
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

        title: Text(
          widget.title,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell(
          
          onTap:() {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  backgroundColor: Colors.red,
                  margin: const EdgeInsets.all(10),
                  behavior: SnackBarBehavior.floating,
                  duration: Durations.medium3,
                  // ignore: prefer_const_constructors
                  content: Text(
                    "Clicked on Snackbar",
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  action: SnackBarAction(
                    label: "Dismiss",
                    textColor: Colors.white,
                    backgroundColor: Colors.deepPurple,
                    onPressed: () {
                      ScaffoldMessenger.of(context).clearSnackBars();
                    },
                  ),
                ));
        }, child: Container(
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
            ),),
      ),
     bottomNavigationBar: CustomBottomNav(currentIndex: currentIndex),
    );
  }
}
