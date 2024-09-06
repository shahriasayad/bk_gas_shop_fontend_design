import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final IconData icon;
  final String hintText;

  const CustomTextFormField({
    super.key,
    required this.icon,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Color(0xFF1397D5),
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color:  Color(0xFF1397D5),
        ),
        hintText: hintText,
        hintStyle:  TextStyle(
          fontSize: 14,
          color: Color(0xFF1397D5),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: Color(0xFF1397D5),
            width: 2.0,
          ),
        ),
        enabledBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: Color(0xFF1397D5),
            width: 1.5,
          ),
        ),
        filled: true,
        fillColor:  Color(0xFF1397D5).withOpacity(0.1),
      ),
    );
  }
}
