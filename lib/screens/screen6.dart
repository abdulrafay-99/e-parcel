import 'package:flutter/material.dart';
import '../utilities/curve_designs.dart';
import '../utilities/decorations.dart';

class Screen6 extends StatelessWidget {
  const Screen6({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final screenHeight = constraints.maxHeight;
          final screenWidth = constraints.maxWidth;

          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  "Please Sign up to continue",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Form(
                  key: _formKey,
                  child: Container(
                    width: screenWidth * 0.85,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 45,
                          child: Icon(
                            Icons.person_outline,
                            size: 50,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.person_outline_outlined),
                            Text(
                              "Name",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 14),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: TextFormField(
                            decoration: inputDecoration("john Doe"),
                          ),
                        ),
                        Row(
                          children: [Icon(Icons.email_outlined), Text("Email")],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextFormField(
                            decoration: inputDecoration("info@yopmail.com"),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                        Row(
                          children: [Icon(Icons.phone), Text("Phone")],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextFormField(
                            decoration: inputDecoration("+12 345 67890"),
                            keyboardType: TextInputType.phone,
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Sign UP",
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(screenWidth, 45),
                            )),
                      ],
                    ),
                  )),
              bottomCurves(screenWidth, screenHeight * 0.6)
            ],
          );
        },
      ),
    );
  }
}
