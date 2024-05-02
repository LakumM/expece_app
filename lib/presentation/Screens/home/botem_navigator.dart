import 'package:expece_app/presentation/Screens/statistic.dart';
import 'package:flutter/material.dart';
import 'package:cool_nav/cool_nav.dart';
import 'home_Screen.dart';

class Bot_Navigator extends StatefulWidget {
  const Bot_Navigator({super.key});

  @override
  State<Bot_Navigator> createState() => Bot_NavigatorState();
}

class Bot_NavigatorState extends State<Bot_Navigator> {
  int selectedIndex = 0;

  List<Widget> navPage = [
    HomeScreen(),
    Statestic_Screen(),
    HomeScreen(),
    Statestic_Screen(),
    HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: navPage[selectedIndex],
        bottomNavigationBar: FlipBoxNavigationBar(
            currentIndex: selectedIndex,
            onTap: (value) {
              selectedIndex = value;
              setState(() {});
            },
            items: [
              FlipBoxNavigationBarItem(
                name: "Home",
                selectedIcon: Icons.home,
                unselectedIcon: Icons.home_outlined,
                selectedBackgroundColor: Colors.pinkAccent.shade200,
                unselectedBackgroundColor: Colors.white,
              ),
              FlipBoxNavigationBarItem(
                name: 'Statistic',
                selectedIcon: Icons.bar_chart,
                selectedBackgroundColor: Colors.pinkAccent.shade200,
                unselectedBackgroundColor: Colors.white,
              ),
              FlipBoxNavigationBarItem(
                name: 'Add',
                selectedIcon: Icons.add,
                selectedBackgroundColor: Colors.pinkAccent.shade200,
                unselectedBackgroundColor: Colors.white,
              ),
              FlipBoxNavigationBarItem(
                name: 'Notify',
                selectedIcon: Icons.notifications,
                unselectedIcon: Icons.notifications_none,
                selectedBackgroundColor: Colors.pinkAccent.shade200,
                unselectedBackgroundColor: Colors.white,
              ),
              FlipBoxNavigationBarItem(
                name: 'Tasks',
                selectedIcon: Icons.nature_rounded,
                selectedBackgroundColor: Colors.pinkAccent.shade200,
                unselectedBackgroundColor: Colors.white,
              ),
            ]));
  }
}

//bottomNavigationBar: BottomNavigationBar(
//           items: [
//             BottomNavigationBarItem(icon: Icon(Ionicons.home), label: ""),
//             BottomNavigationBarItem(icon: Icon(Ionicons.bar_chart), label: ""),
//             BottomNavigationBarItem(
//                 icon: Stack(
//                   children: [
//                     Expanded(
//                       child: Container(
//                           padding: EdgeInsets.all(10),
//                           height: 60,
//                           width: 60,
//                           decoration: BoxDecoration(
//                               color: Colors.pink.shade200,
//                               borderRadius: BorderRadius.circular(11)),
//                           child: Icon(
//                             Ionicons.add,
//                             color: Colors.white,
//                           )),
//                     ),
//                   ],
//                 ),
//                 label: ""),
//             BottomNavigationBarItem(
//                 icon: Icon(Ionicons.notifications), label: ""),
//             BottomNavigationBarItem(
//                 icon: Icon(Ionicons.navigate_sharp), label: ""),
//           ],
//           unselectedItemColor: Colors.grey,
//           selectedItemColor: Colors.pink.shade200,
//           currentIndex: selectedIndex,
//           onTap: (value) {
//             selectedIndex = value;
//             setState(() {});
//           },
//         )

//NavigationBar(
//         destinations: [
//           NavigationDestination(
//               icon: Icon(
//                 Icons.home_outlined,
//                 size: 35,
//               ),
//               label: ""),
//           NavigationDestination(
//               icon: Icon(
//                 Icons.bar_chart,
//                 size: 35,
//                 color: Colors.white,
//               ),
//               label: ""),
//           NavigationDestination(
//               icon: Container(
//                   height: 55,
//                   width: 60,
//                   color: Colors.pink.shade200,
//                   child: Icon(Icons.add, size: 35)),
//               label: ""),
//           NavigationDestination(
//               icon: Icon(Icons.notifications_none, size: 35), label: ""),
//           NavigationDestination(icon: Icon(Icons.nature, size: 35), label: ""),
//         ],
//         indicatorShape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(11),
//         ),
//         selectedIndex: selectedIndex,
//         backgroundColor: Colors.white,
//         indicatorColor: Colors.pink.shade200,
//         onDestinationSelected: (value) {
//           selectedIndex = value;
//           setState(() {});
//         },
//       ),
