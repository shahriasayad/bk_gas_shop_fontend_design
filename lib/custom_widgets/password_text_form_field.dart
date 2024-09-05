import 'package:flutter/material.dart';

class PasswordTextFormField extends StatefulWidget {
  final String hintText;

  const PasswordTextFormField({
    super.key,
    required this.hintText,
  });

  @override
  _PasswordTextFormFieldState createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  bool _obscureText = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65, // Increase the height of the TextFormField
      child: TextFormField(
        obscureText: _obscureText,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: Color(0xFF1397D5),
          ),
          prefixIcon: Icon(
            Icons.lock,
            color: Color(0xFF1397D5),
          ),
          suffixIcon: IconButton(
            icon: Icon(
              _obscureText ? Icons.visibility : Icons.visibility_off,
              color: Color(0xFF1397D5),
            ),
            onPressed: _toggleVisibility,
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
          contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0), // Adjust padding
        ),
      ),
    );
  }
}
