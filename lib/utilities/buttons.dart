import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

customfloatingActionButton(
    {required String string,
    required IconData icon,
    required Function onPressed}) {
  return FloatingActionButton.extended(
      extendedPadding: EdgeInsets.only(left: 30, right: 19, top: 0, bottom: 0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      onPressed: () => onPressed(),
      backgroundColor: Colors.white,
      label: Container(
        height: 54,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              string,
              style: GoogleFonts.raleway(
                  color: Color(0xFF83D5C9),
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              width: 30,
            ),
            Icon(
              icon,
              color: Color(0xFF83D5C9),
              size: 52,
            )
          ],
        ),
      ));
}
