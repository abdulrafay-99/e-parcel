import 'package:e_parcel/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  final String heading;
  final String data;
  const CustomCard({required this.heading, required this.data, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 1,
      child: SizedBox(
        width: 184,
        height: 113,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              heading,
              style: GoogleFonts.raleway(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            Text(data,
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: pink_color,
                    fontWeight: FontWeight.w400))
          ],
        ),
      ),
    );
  }
}
