import 'package:bk_gas/custom_widgets/custom_textformfield_two.dart';
import 'package:flutter/material.dart';

class numVerifyingPage extends StatefulWidget {
  const numVerifyingPage({super.key});

  @override
  State<numVerifyingPage> createState() => _numVerifyingPageState();
}

class _numVerifyingPageState extends State<numVerifyingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Verify Number",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Material(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 12),
              Text(
                "We have sent a verification code to your number."
                "Please check your number and enter the code.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomTextFormFieldTwo(),
                  CustomTextFormFieldTwo(),
                  CustomTextFormFieldTwo(),
                  CustomTextFormFieldTwo(),
                  CustomTextFormFieldTwo(),
                  CustomTextFormFieldTwo(),
                ],
              ),
              SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Space between left and right text
                children: [
                  Text(
                    "Didn’t get the code?",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  Text(
                    "Resend",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF193664),
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
