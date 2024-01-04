import 'package:e_parcel/colors.dart';
import 'package:e_parcel/utilities/decorations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen11 extends StatelessWidget {
  const Screen11({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Save Cards",
          style: GoogleFonts.poppins(
              color: black_color, fontSize: 20, fontWeight: FontWeight.w700),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: black_color,
          ),
          onPressed: () {},
        ),
      ),
      body: LayoutBuilder(builder: ((context, constraints) {
        final screenWidth = constraints.maxWidth;
        final screenHeight = constraints.maxHeight;

        return Padding(
          padding: const EdgeInsets.all(25.0),
          child: ListView(
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  SvgPicture.asset(
                    'assets/card_background.svg',
                    width: screenWidth,
                  ),
                  Column(
                    children: [
                      Text("xxxx xxxx xxxx xxxx"),
                      Text("MM/YY"),
                      Text("Card Holder")
                    ],
                  )
                ],
              ),
              Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.always,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: inputDecoration("Card Holder"),
                      validator: (value) {
                        print(value);
                      },
                    ),
                    TextFormField(
                      decoration: inputDecoration("Expiry Date"),
                      validator: (value) {
                        print(value);
                      },
                    ),
                    TextFormField(
                      decoration: inputDecoration("Cvv"),
                      validator: (value) {
                        print(value);
                      },
                    ),
                    TextFormField(
                      decoration: inputDecoration("Zip Code"),
                      validator: (value) {
                        print(value);
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      })),
    );
  }
}
