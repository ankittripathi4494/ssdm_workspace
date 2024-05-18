import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ssdm/global_widget/custom_bottom_nav_bar.dart';

class PageErrorScreen extends StatefulWidget {
  final String title;
  const PageErrorScreen({super.key, required this.title});

  @override
  State<PageErrorScreen> createState() => _PageErrorScreenState();
}

class _PageErrorScreenState extends State<PageErrorScreen> {
  int currentIndex = 3;
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
      body: const Center(
        child: Text("Error Page"),
      ),
      bottomNavigationBar: CustomBottomNav(currentIndex: currentIndex),
    );
  }
}

