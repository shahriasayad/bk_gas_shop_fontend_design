import 'package:flutter/material.dart';
import 'package:bk_gas/signup_screens/signup_page1.dart';
import 'package:bk_gas/custom_widgets/custom_textformfield.dart';

class signUpPageTwo extends StatelessWidget {
  const signUpPageTwo({super.key});

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
      body: Material(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Example content in the body
              Text(
                "Sign Up to Join",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 25),
              CustomTextFormField(
                icon: Icons.person,
                hintText: "First Name",
              ),
              SizedBox(height: 12),
              CustomTextFormField(
                icon: Icons.percent,
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
              CustomTextFormField(icon: Icons.lock, hintText: "Password"),

              SizedBox(height: 10),
              CustomTextFormField(icon: Icons.lock, hintText: "Confirm Password"),
            ],

          ),
        ),
      ),
    );
  }
}
