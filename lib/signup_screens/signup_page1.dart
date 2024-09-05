import 'package:bk_gas/signup_screens/signup_page2.dart';
import 'package:flutter/material.dart';
import 'package:bk_gas/custom_widgets/custom_textformfield.dart';

class signUpPageOne extends StatefulWidget {
  const signUpPageOne({super.key});

  @override
  State<signUpPageOne> createState() => _signUpPageOneState();
}

class _signUpPageOneState extends State<signUpPageOne> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 160,
                ),
                Container(
                  child: Text(
                    "What’s your number?",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  "We’ll check if you have an account",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(
                      height: 56,
                      width: 74,
                      child: Container(
                        alignment: Alignment.center,
                        // padding: EdgeInsets.all(10),
                        child: Text(
                          "+1242",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF1397D5),
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF1397D5),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    // Add some spacing between the container and text field if needed
                    Expanded(
                      child: SizedBox(
                        width: 255, // Set the width you desire
                        height: 56, // Set the height you desire
                        child: CustomTextFormField(icon: Icons.phone, hintText: "phone")
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 200,
                ),
                Container(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 57,
                    width: 353,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF1397D5)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => signUpPageTwo(),
                          ),
                        );
                      },
                      child: SizedBox(
                        height: 25,
                        width: 80,
                        child: Text(
                          "Continue",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
