import 'package:flutter/material.dart';

class MyCustomDrawer {
  static getDrawer() {
    return Drawer(
      elevation: 30,
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [Colors.deepOrange, Colors.white])),
        child: ListView(
          children: [
            const DrawerHeader(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: FlutterLogo(size: 10,)),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              subtitle: const Text("This is Home Screen"),
            ),
            ExpansionTile(
              leading: const Icon(Icons.person),
              title: const Text("Customer"),
              subtitle: const Text("This is customer module"),
              children: [
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.person_add),
                  title: const Text("Add Customer"),
                  subtitle: const Text("This is to add a customer"),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.list),
                  title: const Text("Customer List"),
                  subtitle: const Text("This is to show all customers"),
                ),
              ],
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.support_agent),
              title: const Text("Support"),
              subtitle: const Text("This is support call"),
            ),
          
          ],
        ),
      ),
    );
  }
}
