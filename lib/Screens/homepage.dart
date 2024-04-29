import 'package:expece_app/Screens/home_Screen.dart';
import 'package:expece_app/Screens/statistic.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  List<Widget> navPage = [
    HomeScreen(),
    Statestic_Screen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: navPage[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Ionicons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Ionicons.bar_chart), label: ""),
            BottomNavigationBarItem(
                icon: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.pink.shade200,
                        borderRadius: BorderRadius.circular(11)),
                    child: Icon(
                      Ionicons.add,
                      color: Colors.white,
                    )),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.notifications), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.navigate_sharp), label: ""),
          ],
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.pink.shade200,
          currentIndex: selectedIndex,
          onTap: (value) {
            selectedIndex = value;
            setState(() {});
          },
        ));
  }
}
