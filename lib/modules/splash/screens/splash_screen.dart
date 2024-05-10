import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  final String title;
  const SplashScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        surfaceTintColor: Colors.pink.shade500,
        // scrolledUnderElevation: 20,
        backgroundColor: Colors.amber.shade300,
        foregroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.green, size: 30),
        actionsIconTheme: IconThemeData(color: Colors.red, size: 20),
        leading: Icon(Icons.arrow_back),
        title: Row(
          children: [
            Icon(Icons.person),
            Text(
              title,
            )
          ],
        ),
        centerTitle: true,
        actions: const[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notification_important),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.logout),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) => ListTile(
          title: Text("Item $index"),
        ),
      ),
    );
  }
}
