import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:primer_progress_bar/primer_progress_bar.dart';

class Statestic_Screen extends StatelessWidget {
  const Statestic_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Statistic",
            style: GoogleFonts.anekKannada(
                textStyle:
                    TextStyle(fontSize: 32, fontWeight: FontWeight.w600)),
          ),
        ),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Container(
                  height: 123,
                  width: 365,
                  decoration: BoxDecoration(
                    color: Color(0xFF4F5CCB),
                    borderRadius: BorderRadius.circular(12),
                  ),

                  /// expense container
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Expence",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                        SizedBox(height: 12),
                        Row(
                          children: [
                            Text(
                              "Rs 90,100/- /",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22,
                                  color: Colors.white),
                            ),
                            Text(
                              " Rs 1,00,000/- per month",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Container(
                            width: 340,
                            height: 7,
                            decoration: BoxDecoration(
                                color: Colors.yellow.shade200,
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    "Expense Breakdown",
                    style: GoogleFonts.varelaRound(
                        textStyle: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Limit Rs.25000/- week",
                style: GoogleFonts.varelaRound(
                    textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey)),
              ),
            ),

            /// bar Chart
            Container(
              width: 410,
              child: Image.asset(
                'assets/pngImage/barchart1.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    "Spending Details",
                    style: GoogleFonts.varelaRound(
                        textStyle: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                " Your expense are divided into 6 categories",
                style: GoogleFonts.varelaRound(
                    textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey)),
              ),
            ),

            /// Expense Progress_Bar
            Center(
              child: PrimerProgressBar(segments: [
                Segment(
                    value: 40, color: Colors.indigo, valueLabel: Text('40%')),
                Segment(
                    value: 25,
                    color: Colors.pinkAccent,
                    valueLabel: Text('25%')),
                Segment(
                    value: 15,
                    color: Colors.orangeAccent,
                    valueLabel: Text('15%')),
                Segment(
                    value: 10,
                    color: Colors.blue.shade200,
                    valueLabel: Text('10%')),
                Segment(
                    value: 5, color: Colors.redAccent, valueLabel: Text('5%')),
                Segment(
                    value: 5,
                    color: Colors.greenAccent,
                    valueLabel: Text('5%')),
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                /// 1st grid Shop
                Container(
                  width: 180,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all()),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Color(0xBAA2E3FF),
                                borderRadius: BorderRadius.circular(11)),
                            child: Icon(
                              Ionicons.cart_outline,
                              color: Colors.indigo,
                            )),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Shop",
                                style: GoogleFonts.varelaRound(
                                  textStyle: (TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600)),
                                )),
                            Text(
                              "Rs.1500/- ",
                              style: GoogleFonts.varelaRound(
                                  textStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      ]),
                ),

                /// 2nd grid transportation
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  width: 180,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all()),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      /// Tra.. Box icon
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Color(0x90EE9979),
                              borderRadius: BorderRadius.circular(11)),
                          child: Icon(
                            Ionicons.car_outline,
                            color: Colors.deepOrange,
                          )),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 100,
                            child: Text(
                                overflow: TextOverflow.ellipsis,
                                "Transportation",
                                style: GoogleFonts.varelaRound(
                                  textStyle: (TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600)),
                                )),
                          ),
                          Text(
                            "Rs.600/-",
                            style: GoogleFonts.varelaRound(
                                textStyle: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ]),
        ));
  }
}
