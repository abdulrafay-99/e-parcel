import 'package:e_parcel/screens/screen3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utilities/buttons.dart';
import '../utilities/curve_designs.dart';

class screen2 extends StatelessWidget {
  const screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: customfloatingActionButton(
          string: "Next",
          icon: Icons.arrow_circle_right_rounded,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => Screen3())));
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
                  'assets/corona.png',
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                width: 315,
                child: Text(
                    '"Efficient online parcel delivery. Ship your packages quickly and securely today!"',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.raleway(
                        textStyle: TextStyle(fontSize: 20))),
              ),
              bottomCurves(screenWidth, screenHeight)
            ],
          );
        },
      ),
    );
  }
}
