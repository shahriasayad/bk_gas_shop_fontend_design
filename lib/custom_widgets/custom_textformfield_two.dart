import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormFieldTwo extends StatefulWidget {
  const CustomTextFormFieldTwo({super.key});

  @override
  State<CustomTextFormFieldTwo> createState() => _CustomTextFormFieldTwoState();
}

class _CustomTextFormFieldTwoState extends State<CustomTextFormFieldTwo> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 57,
      width: 44,
      child: TextFormField(

        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24),
        cursorColor: Color(0xFF1397D5),
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(1),
        ],

        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          enabledBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: Color(0xFF1397D5),
              width: 1.5,
            ),
          ),

          focusedBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: Color(0xFF1397D5),
              width: 2.0,
            ),
          ),

          filled: true,
          fillColor:  Color(0xFF1397D5).withOpacity(0.1),
          contentPadding: EdgeInsets.symmetric(vertical: 11),
        ),
      ),
    );
  }
}
