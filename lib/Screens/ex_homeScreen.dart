import 'package:expece_app/Screens/home_Screen.dart';
import 'package:expece_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class Expence_HomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Monety",
          style: GoogleFonts.anekKannada(
              textStyle:
                  const TextStyle(fontSize: 28, fontWeight: FontWeight.w600)),
        ),
        centerTitle: true,
      ),
      body: Container(
          clipBehavior: Clip.none,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Stack(children: [
            Container(
              margin: EdgeInsets.only(left: 42, top: 200),
              height: MediaQuery.of(context).size.height * 0.55,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(color: Color(0xFDF9F9FD), boxShadow: [
                BoxShadow(spreadRadius: 0, color: Colors.black),
              ]),
              child: Column(
                children: [
                  SizedBox(
                    height: 230,
                  ),
                  Text("Easy way to monitor ",
                      style: TextStyle(
                          fontFamily: Assets.fontsMonaSansBold,
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Colors.black)),
                  Text("your expence",
                      style: TextStyle(
                          fontFamily: Assets.fontsMonaSansBold,
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Colors.black)),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Safe your future by managing your",
                      style: TextStyle(
                          fontFamily: Assets.fontsMonaSansBold,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54)),
                  Text("expence right now",
                      style: const TextStyle(
                          fontFamily: Assets.fontsMonaSansBold,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54)),
                ],
              ),
            ),
            Positioned(
              top: -100,
              left: -80,
              height: 550,
              child: Image.asset(
                "assets/pngImage/eGraph.png",
              ),
            ),
            Positioned(
              bottom: 60,
              right: 15,
              child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(color: Colors.white),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => HomeScreen(),
                          ));
                    },
                    child: Icon(
                      Ionicons.arrow_forward_sharp,
                      color: Colors.white,
                      size: 30,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink.shade200,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11),
                        side: BorderSide(color: Colors.white),
                      ),
                    ),
                  )),
            ),
          ])),
    );
  }
}
