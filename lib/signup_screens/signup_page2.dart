import 'package:bk_gas/custom_widgets/custom_button.dart';
import 'package:bk_gas/custom_widgets/password_text_form_field.dart';
import 'package:bk_gas/signup_screens/verify_number.dart';
import 'package:flutter/material.dart';
import 'package:bk_gas/custom_widgets/custom_textformfield.dart';

class signUpPageTwo extends StatefulWidget {
  const signUpPageTwo({super.key});

  @override
  State<signUpPageTwo> createState() => _signUpPageTwoState();
}

class _signUpPageTwoState extends State<signUpPageTwo> {
  bool _isChecked = false; // State to track checkbox
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign Up",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Material(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Example content in the body
                Text(
                  "Sign Up to Join",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 25),
                CustomTextFormField(
                  icon: Icons.person,
                  hintText: "First Name",
                ),
                SizedBox(height: 12),
                CustomTextFormField(
                  icon: Icons.person,
                  hintText: "Last Name",
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
                    
                    Expanded(
                      child: SizedBox(
                        height: 56,
                        width: 345,
                        child: CustomTextFormField(
                          icon: Icons.phone,
                          hintText: "phone",
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                PasswordTextFormField(hintText: "Password"),
        
                SizedBox(height: 10),
                PasswordTextFormField(hintText: "Confirm Password"),
                SizedBox(height: 25),
                Row(
                  children: [
                    Checkbox(
                      value: _isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked = value ?? false;
                        });
                      },
                      activeColor: Color(0xFF1397D5),
                      checkColor: Colors.white,
                    ),
                    Expanded(
                      child: Text(
                        "By creating an account, I accept the Terms & Conditions"
                        "and the Privacy Policy",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),

                CustomButton(
                  buttonText: "Sign up",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => numVerifyingPage()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
