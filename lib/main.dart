import 'package:e_parcel/screens/home_screen.dart';
import 'package:e_parcel/screens/screen10.dart';
import 'package:e_parcel/screens/screen11.dart';
import 'package:e_parcel/screens/screen8.dart';
import 'package:e_parcel/screens/screen9.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          bodyMedium: GoogleFonts.raleway(),
        ),
      ),
      home: Screen11(),
    );
  }
}
