import 'package:e_parcel/utilities/decorations.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [Icon(Icons.email_outlined), Text("Phone Number & Email")],
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: TextFormField(
          decoration: inputDecoration("info@yopmail.com"),
        ),
      ),
    ]);
  }
}
