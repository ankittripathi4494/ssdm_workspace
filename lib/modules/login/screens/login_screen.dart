import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ssdm/global_widget/custom_bottom_nav_bar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => StateofLoginScreen();
}

class StateofLoginScreen extends State<LoginScreen>
    with TickerProviderStateMixin {
  int currentIndex = 1;
  late TabController tabController;
  String title = "List View";
  @override
  void initState() {
   tabChanger();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  tabChanger(){
     tabController = TabController(length: 2, vsync: this);
    tabController.addListener((){
     if ( tabController.index==0) {
       setState(() {
      title = "List View";
       });
     } else {
       setState(() {
      title = "Grid View";
       });
     }
    });
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

        title:  Text(title),
        centerTitle: true,
        bottom:
            TabBar(isScrollable: false, controller: tabController, tabs: const [
          Tab(
            text: "List View",
            icon: Icon(Icons.list),
          ),
          Tab(
            text: "Grid View",
            icon: Icon(Icons.grid_3x3),
          ),
        ]),
      ),
      body:
          TabBarView(controller: tabController, children: [tabOne(), tabTwo()]),
      bottomNavigationBar: CustomBottomNav(currentIndex: currentIndex),
    );
  }

  Widget tabOne() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          gradient:
              const LinearGradient(colors: [Colors.deepOrange, Colors.white])),
      child: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) => ListTile(
          title: Text("Item $index"),
        ),
      ),
    );
  }

  Widget tabTwo() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          gradient:
              const LinearGradient(colors: [Colors.deepOrange, Colors.white])),
      child: GridView.builder(
        itemCount: 100,
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5,),
        itemBuilder: (context, index) => ListTile(
          title: Text("Item $index"),
        ),
      ),
    );
  }
}
