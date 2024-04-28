import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Monety",
            style: GoogleFonts.anekKannada(
                textStyle:
                    TextStyle(fontSize: 28, fontWeight: FontWeight.w600)),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(Ionicons.search),
            )
          ],
        ),
        body: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                maxRadius: 40,
                child: Image.asset(
                  "assets/pngImage/girla.png",
                  fit: BoxFit.fitHeight,
                ),
              ),
              title: Text("Morning",
                  style: GoogleFonts.hahmlet(
                    textStyle: (TextStyle(fontSize: 20)),
                  )),
              subtitle: Text(
                "Mitali Chauhan",
                style: GoogleFonts.lato(
                    textStyle:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              height: 180,
              width: 370,
              decoration: BoxDecoration(
                color: Color(0xFF4F5CCB),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Stack(
                children: [
                  Positioned(
                    right: 10,
                    child: Image.asset(
                      'assets/pngImage/piechart.png',
                      height: 180,
                      width: 170,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Expence Total",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 22,
                              color: Colors.white),
                        ),
                        Text(
                          "Rs 90,100/-",
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 32,
                              color: Colors.white),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  color: Colors.redAccent.shade200,
                                  borderRadius: BorderRadius.circular(11)),
                              child: Text(
                                "+ RS 24,000",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    color: Colors.white),
                              ),
                            ),
                            Text(
                              "  then last month",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Expense List",
                  style: GoogleFonts.varelaRound(
                      textStyle:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.w600)),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              height: 208,
              width: 370,
              decoration: BoxDecoration(
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Tuesday,14",
                            style: GoogleFonts.acme(
                                textStyle: TextStyle(fontSize: 20))),
                        Text("Rs. 89,500/-",
                            style: GoogleFonts.acme(
                                textStyle: TextStyle(fontSize: 20))),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(
                      color: Colors.black,
                      thickness: 2,
                    ),
                  ),
                  ListTile(
                    leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Color(0xBAA2E3FF),
                            borderRadius: BorderRadius.circular(11)),
                        child: Icon(
                          Ionicons.cart_outline,
                          color: Colors.indigo,
                        )),
                    title: Text("Shop",
                        style: GoogleFonts.varelaRound(
                          textStyle: (TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600)),
                        )),
                    subtitle: Text(
                      "Buy New Clothes",
                      style: GoogleFonts.varelaRound(
                          textStyle: TextStyle(fontSize: 18)),
                    ),
                    trailing: Text(
                      "- 1500",
                      style: GoogleFonts.varelaRound(
                          textStyle: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Color(0xBAFFE1A2),
                            borderRadius: BorderRadius.circular(11)),
                        child: Icon(
                          Ionicons.phone_portrait_outline,
                          color: Colors.orangeAccent,
                        )),
                    title: Text("Electronic",
                        style: GoogleFonts.varelaRound(
                          textStyle: (TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600)),
                        )),
                    subtitle: Text(
                      "Buy New iPhone",
                      style: GoogleFonts.varelaRound(
                          textStyle: TextStyle(fontSize: 18)),
                    ),
                    trailing: Text(
                      "- 88,000",
                      style: GoogleFonts.varelaRound(
                          textStyle: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w900)),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              height: 140,
              width: 370,
              decoration: BoxDecoration(
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Monday, 13",
                            style: GoogleFonts.acme(
                                textStyle: TextStyle(fontSize: 20))),
                        Text("Rs. 600/-",
                            style: GoogleFonts.acme(
                                textStyle: TextStyle(fontSize: 20))),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(
                      color: Colors.black,
                      thickness: 2,
                    ),
                  ),
                  ListTile(
                    leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Color(0x90EE9979),
                            borderRadius: BorderRadius.circular(11)),
                        child: Icon(
                          Ionicons.car_outline,
                          color: Colors.deepOrange,
                        )),
                    title: Text("Transportation",
                        style: GoogleFonts.varelaRound(
                          textStyle: (TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600)),
                        )),
                    subtitle: Text(
                      "Trip to Malang",
                      style: GoogleFonts.varelaRound(
                          textStyle: TextStyle(
                        fontSize: 18,
                      )),
                    ),
                    trailing: Text(
                      "- 600",
                      style: GoogleFonts.varelaRound(
                          textStyle: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
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
        ));
  }
}
