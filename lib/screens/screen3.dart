import 'package:e_parcel/screens/screen4.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utilities/buttons.dart';
import '../utilities/curve_designs.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: customfloatingActionButton(
          string: "Next",
          icon: Icons.arrow_circle_right_rounded,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => screen4())));
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
                  'assets/screen3.png',
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                width: 360,
                child: Text(
                    'Experience hassle-free convenience. Collect your parcel with ease, right at your doorstep!',
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
