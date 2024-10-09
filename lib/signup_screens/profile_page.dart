import 'package:bk_gas/custom_widgets/GenderDropDownMenu.dart';
import 'package:bk_gas/custom_widgets/custom_button.dart';
import 'package:bk_gas/custom_widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';
import '../custom_widgets/custom_address_textfield.dart';
import '../custom_widgets/date_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fill out your Profile",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Material(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Center(
                  child: Container(
                    height: 163,
                    width: 148,
                    // color: Colors.blueAccent,
                    child: Center(
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/profile pic.png',
                          width: 120,
                          height: 120.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  "Upload Profile Picture",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                GenderDropDownMenu(),
                SizedBox(height: 10),
                DatePickerField(),
                SizedBox(height: 10),
                CustomTextFormField(icon: Icons.email, hintText: "Email"),
                SizedBox(height: 10),
                CustomAdressTextfield(hintText: "Address"),
                SizedBox(height: 30),
                CustomButton(buttonText: "Continue", onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
