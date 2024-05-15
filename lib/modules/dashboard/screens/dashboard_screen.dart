// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, unrelated_type_equality_checks, avoid_print


import 'package:flutter/material.dart';
import 'package:ssdm/global_widget/custom_drawer.dart';
import 'package:ssdm/modules/notifications/screens/notification_screen.dart';

class DashboardScreen extends StatefulWidget {
  late String title;
  late Map<String, String> arguments;
  DashboardScreen(this.title, [Map<String, String>? arguments]) {
    this.arguments = arguments ?? {};
  }

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
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

        title: Row(
          children: [
            const Icon(Icons.person),
            Text(
              widget.arguments["data"]!,
            )
          ],
        ),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () async {
              var result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const NotificationScreen(title: 'Notifications'),
                  ));

                  print("The result Type :- ${result.runtimeType}");
                   print("Result :- ${result.toString()}");
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.notification_important),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.logout),
          )
        ],
      ),
      drawer: MyCustomDrawer.getDrawer(),
      body: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            gradient: const LinearGradient(
                colors: [Colors.deepOrange, Colors.white])),
        child: ListView.builder(
          itemCount: (widget.arguments['data'] == "data") ? 200 : 100,
          itemBuilder: (context, index) => ListTile(
            title: Text("Item $index"),
          ),
        ),
      ),
    );
  }
}
