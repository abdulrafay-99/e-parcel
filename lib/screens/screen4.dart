import 'package:e_parcel/screens/screen5.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utilities/buttons.dart';
import '../utilities/curve_designs.dart';

class screen4 extends StatelessWidget {
  const screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: customfloatingActionButton(
          string: "Next",
          icon: Icons.arrow_circle_right_rounded,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => screen5())));
          }),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final screenHeight = constraints.maxHeight;
          final screenWidth = constraints.maxWidth;

          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: screenHeight * 0.15,
              ),
              Expanded(
                child: Image.asset(
                  'assets/screen4.png',
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                width: 360,
                child: Text(
                    'Seamless and secure transactions. Make payments effortlessly via our reliable payment gateway.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.raleway(
                        textStyle: const TextStyle(fontSize: 20))),
              ),
              bottomCurves(screenWidth, screenHeight)
            ],
          );
        },
      ),
    );
  }
}
