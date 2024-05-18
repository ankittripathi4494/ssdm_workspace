import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({
    super.key,
    required this.currentIndex,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: true,
      showUnselectedLabels: true,
      currentIndex: currentIndex,
      onTap:(value) {
        switch (value) {
          case 0:
             Navigator.pushReplacementNamed(context, '/dashboard');
          case 1:
             Navigator.pushReplacementNamed(context, '/login');
          case 2:
             Navigator.pushReplacementNamed(context, '/notification');
          case 3:
             Navigator.pushReplacementNamed(context, '/notify');
          default:
        }
      },
      items:const[
        BottomNavigationBarItem(
          backgroundColor: Colors.deepOrange,
          icon: Icon(Icons.home), label: "Home"),
         BottomNavigationBarItem(backgroundColor: Colors.deepOrange,icon: Icon(CupertinoIcons.person_3,), label: "Customers"),
         BottomNavigationBarItem(backgroundColor: Colors.deepOrange,icon: Icon(CupertinoIcons.list_bullet), label: "EMIs"),
          BottomNavigationBarItem(backgroundColor: Colors.deepOrange,icon: Icon(CupertinoIcons.person), label: "Profile"),
      ]);
  }
}
