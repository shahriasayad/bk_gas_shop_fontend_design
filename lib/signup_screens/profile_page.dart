import 'package:bk_gas/custom_widgets/GenderDropDownMenu.dart';
import 'package:flutter/material.dart';

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
      body: Material(
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
              GenderDropDownMenu(),
            ],
          ),
        ),
      ),
    );
  }
}
