import 'package:flutter/material.dart';

class GenderDropDownMenu extends StatefulWidget {
  const GenderDropDownMenu({super.key});

  @override
  _GenderDropDownMenuState createState() => _GenderDropDownMenuState();
}

class _GenderDropDownMenuState extends State<GenderDropDownMenu> {
  String? _selectedGender;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: _selectedGender,
      items: [
        DropdownMenuItem(
          value: 'Male',
          child: Text('Male', style: TextStyle(color: Color(0xFF1397D5))),
        ),
        DropdownMenuItem(
          value: 'Female',
          child: Text('Female', style: TextStyle(color: Color(0xFF1397D5))),
        ),
      ],
      onChanged: (value) {
        setState(() {
          _selectedGender = value;
        });
      },
      decoration: InputDecoration(
        hintText: "Gender",
        hintStyle: TextStyle(
          fontSize: 14,
          color: Color(0xFF1397D5),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: Color(0xFF1397D5),
            width: 2.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: Color(0xFF1397D5),
            width: 1.5,
          ),
        ),
        filled: true,
        fillColor: Color(0xFF1397D5).withOpacity(0.1),
      ),
      dropdownColor: Colors.black, // Change dropdown menu color to black
      isExpanded: true,
      hint: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Gender",
          style: TextStyle(
            fontSize: 14,
            color: Color(0xFF1397D5),
          ),
        ),
      ),
    );
  }
}
