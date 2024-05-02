import 'package:expece_app/generated/assets.dart';
import 'package:expece_app/presentation/Screens/home/botem_navigator.dart';
import 'package:expece_app/presentation/Screens/on_board/user_login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class ExFlash_Screen extends StatelessWidget {
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
              decoration:
                  const BoxDecoration(color: Color(0xFDF9F9FD), boxShadow: [
                BoxShadow(spreadRadius: 0, color: Colors.black),
              ]),
              child: const Column(
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
                  Text("your expense",
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
                  Text("expense right now",
                      style: TextStyle(
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
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) {
                          return User_LoginScreen();
                        },
                      ));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink.shade200,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11),
                        side: BorderSide(color: Colors.white),
                      ),
                    ),
                    child: const Icon(
                      Ionicons.arrow_forward_sharp,
                      color: Colors.white,
                      size: 30,
                    ),
                  )),
            ),
          ])),
    );
  }
}
