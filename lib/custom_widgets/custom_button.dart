import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed; // Add the callback function back

  const CustomButton({
    super.key,
    required this.buttonText,
    required this.onPressed, // Make sure to include this parameter
  });

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
          onPressed: onPressed, // Use the callback function directly
          child: SizedBox(
            height: 25,
            width: 80,
            child: Center(
              child: Text(
                buttonText,
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
