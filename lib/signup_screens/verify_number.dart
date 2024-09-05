import 'package:flutter/material.dart';

class numVerifyingPage extends StatelessWidget {
  const numVerifyingPage({super.key});

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
    );
  }
}
