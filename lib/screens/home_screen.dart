import 'package:e_parcel/screens/screen2.dart';
import 'package:flutter/material.dart';

import '../utilities/buttons.dart';
import '../utilities/curve_designs.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: customfloatingActionButton(
        string: "Start",
        icon: Icons.arrow_circle_right_rounded,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => screen2(),
            ),
          );
        },
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final screenHeight = constraints.maxHeight;
          final screenWidth = constraints.maxWidth;
          return Stack(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                topRightCurve(screenHeight),
                Image.asset('assets/logo.png', height: screenHeight * 45 / 974),
                bottomCurves(screenWidth, screenHeight)
              ],
            ),
          ]);
        },
      ),
    );
  }
}
