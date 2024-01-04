import 'package:e_parcel/colors.dart';
import 'package:e_parcel/screens/screen6.dart';
import 'package:e_parcel/screens/screen7.dart';
import 'package:e_parcel/screens/screen8.dart';
import 'package:e_parcel/screens/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utilities/curve_designs.dart';
import '../utilities/decorations.dart';

class screen5 extends StatelessWidget {
  const screen5({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final screenHeight = constraints.maxHeight;
          final screenWidth = constraints.maxWidth;

          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset(
                  'assets/logo.png',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  "Log into your account",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.email_outlined),
                          Text(
                            "Phone Number & Email",
                            style: raleway500,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: TextFormField(
                          decoration: inputDecoration("info@yopmail.com"),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter some text";
                            }
                          },
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.key_rounded),
                          Text(
                            "Password",
                            style: raleway500,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: TextFormField(
                          decoration: inputDecoration("******"),
                          obscureText: true,
                          obscuringCharacter: '•',
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter some text";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(color: black_color),
                            )),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const Screen7())));
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            fixedSize: Size(screenWidth, 45),
                            backgroundColor: primary_color),
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                          text: TextSpan(
                            text: "Don't Have Account?",
                            style: DefaultTextStyle.of(context).style,
                            children: [
                              TextSpan(
                                  text: 'Sign Up',
                                  style: GoogleFonts.tajawal(
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromARGB(255, 227, 56, 81)),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const Screen6(),
                                              ))
                                        }),
                            ],
                          ),
                        ),
                      ),
                      IconButton(
                        style: IconButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1, color: Color(0xFF06B198)),
                              borderRadius: BorderRadius.circular(14)),
                          fixedSize: const Size(55, 57),
                          backgroundColor: Color(0xFF06B198),
                          iconSize: 48,
                        ),
                        padding: EdgeInsets.all(0),
                        onPressed: () {},
                        icon: Icon(
                          Icons.fingerprint,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Login wit touch ID Or Face ID",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400)),
                      )
                    ],
                  ),
                ),
              ),
              bottomCurves(screenWidth, screenHeight * 0.6)
            ],
          );
        },
      ),
    );
  }
}

class Form1 extends StatelessWidget {
  const Form1({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        TextFormField(
          decoration: inputDecoration('info@yopmail.com'),
        )
      ],
    ));
  }
}
