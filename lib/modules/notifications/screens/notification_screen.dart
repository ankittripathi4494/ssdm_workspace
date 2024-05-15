import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  final String title;
  const NotificationScreen({super.key, required this.title});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context, [12,34,56]);
              // Navigator.pushReplacement(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) =>
              //            DashboardScreen('Dashboard', 'data'),
              //     ));
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: Row(
          children: [
            const Icon(Icons.person),
            Text(
              widget.title,
            )
          ],
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Page : ${widget.title}"),
      ),
    );
  }
}
