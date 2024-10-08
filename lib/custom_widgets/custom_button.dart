import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String buttonText;
  final VoidCallback onPressed; // Add the callback function back

  const CustomButton({
    super.key,
    required this.buttonText,
    required this.onPressed, // Make sure to include this parameter
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: SizedBox(
        height: 57,
        width: 353,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF1397D5),
          ),
          onPressed: widget.onPressed, // Use the callback function directly
          child: SizedBox(
            height: 25,
            child: Center(
              child: Text(
                widget.buttonText,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
