import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DatePickerField extends StatefulWidget {
  @override
  _DatePickerFieldState createState() => _DatePickerFieldState();
}

class _DatePickerFieldState extends State<DatePickerField> {
  int _selectedDay = 1;
  int _selectedMonth = 1;
  int _selectedYear = 2000;

  void _showDatePicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.black,
      builder: (BuildContext builder) {
        return Container(
          height: 250,
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    // Day Picker
                    Expanded(
                      child: CupertinoPicker(
                        scrollController: FixedExtentScrollController(
                            initialItem: _selectedDay - 1),
                        itemExtent: 32.0,
                        onSelectedItemChanged: (int value) {
                          setState(() {
                            _selectedDay = value + 1;
                          });
                        },
                        children: List<Widget>.generate(31, (int index) {
                          return Center(
                            child: Text(
                              (index + 1).toString(),
                              style: TextStyle(
                                color: Color(0xFF1397D5), // Change text color
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    // Month Picker
                    Expanded(
                      child: CupertinoPicker(
                        scrollController: FixedExtentScrollController(
                            initialItem: _selectedMonth - 1),
                        itemExtent: 32.0,
                        onSelectedItemChanged: (int value) {
                          setState(() {
                            _selectedMonth = value + 1;
                          });
                        },
                        children: List<Widget>.generate(12, (int index) {
                          return Center(
                            child: Text(
                              (index + 1).toString(),
                              style: TextStyle(
                                color: Color(0xFF1397D5), // Change text color
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    // Year Picker
                    Expanded(
                      child: CupertinoPicker(
                        scrollController: FixedExtentScrollController(
                            initialItem: _selectedYear - 1900),
                        itemExtent: 32.0,
                        onSelectedItemChanged: (int value) {
                          setState(() {
                            _selectedYear = 1900 + value;
                          });
                        },
                        children: List<Widget>.generate(131, (int index) {
                          return Center(
                            child: Text(
                              (1900 + index).toString(),
                              style: TextStyle(
                                color: Color(0xFF1397D5), // Change text color
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
              // Confirm Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF1397D5), // Change button color
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Confirm', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: true,
      decoration: InputDecoration(
        hintText: '$_selectedDay/$_selectedMonth/$_selectedYear',
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
        suffixIcon: IconButton(
          icon: Icon(Icons.calendar_today, color: Color(0xFF1397D5)),
          onPressed: () => _showDatePicker(context),
        ),
      ),
    );
  }
}
