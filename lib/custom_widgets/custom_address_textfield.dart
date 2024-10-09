import 'package:flutter/material.dart';

class CustomAdressTextfield extends StatelessWidget {
  final String hintText;

  const CustomAdressTextfield({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 3,
      cursorColor: Color(0xFF1397D5),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 16.0), // Controls padding around the text
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 14,
          color: Color(0xFF1397D5),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: Color(0xFF1397D5),
            width: 2.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: Color(0xFF1397D5),
            width: 1.5,
          ),
        ),
        filled: true,
        fillColor: Color(0xFF1397D5).withOpacity(0.1),
      ),
    );
  }
}
