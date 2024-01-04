import 'package:flutter/material.dart';

class PinInputField extends StatefulWidget {
  @override
  _PinInputFieldState createState() => _PinInputFieldState();
}

class _PinInputFieldState extends State<PinInputField> {
  final List<FocusNode> _focusNodes = List.generate(6, (index) => FocusNode());
  final List<TextEditingController> _controllers =
      List.generate(6, (index) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        6,
        (index) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: SizedBox(
            width: 51.0,
            height: 50.0,
            child: TextField(
              controller: _controllers[index],
              focusNode: _focusNodes[index],
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              maxLength: 1,
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Color(0xFFF6F4F4),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFF6F4F4))),
                counterText: '', // Remove the character count
              ),
              onChanged: (value) {
                if (value.length == 1) {
                  // Move focus to the next field
                  if (index < 5) {
                    FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
                  } else {
                    // Perform actions when the last digit is entered
                    print(
                        'Entered PIN: ${_controllers.map((c) => c.text).join()}');
                  }
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
