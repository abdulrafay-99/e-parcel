import 'package:e_parcel/utilities/pin_input_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utilities/curve_designs.dart';
import '../utilities/decorations.dart';

class Screen7 extends StatelessWidget {
  const Screen7({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final screenHeight = constraints.maxHeight;
          final screenWidth = constraints.maxWidth;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Transform.rotate(
                angle: 22 / 7,
                child: bottomCurves(screenWidth, screenHeight),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: const Text(
                  "Enter 6 digit code sent by SMS to +33123456787 to login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              PinInputField(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    text: "Resend Code in",
                    style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(
                          text: '50',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF06B198))),
                      TextSpan(
                          text: 's', style: DefaultTextStyle.of(context).style)
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
