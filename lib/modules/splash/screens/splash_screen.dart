import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  final String title;
  const SplashScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 100,
        flexibleSpace: Container(decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          gradient: LinearGradient(colors: [Colors.deepOrange, Colors.white])
        ),),
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
        leading: Container(),
        title: Row(
          children: [
            const Icon(Icons.person),
            Text(
              title,
            )
          ],
        ),
        centerTitle: true,
        actions: const [
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
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          gradient: LinearGradient(colors: [Colors.deepOrange, Colors.white])
        ),
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) => ListTile(
            title: Text("Item $index"),
          ),
        ),
      ),
    );
  }
}
