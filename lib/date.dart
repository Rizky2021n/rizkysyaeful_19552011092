import 'package:flutter/material.dart';
import 'package:latihan3/NavyBar.dart';
import 'package:latihan3/main.dart';

void main() {
  runApp(MyApp());
}

DateTime selectedDate = DateTime.now();
DateFormat dateFormat = DateFormat('dd-MM-yyyy');

class datepicker extends StatefulWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Picker'),
      ),
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            showDatePicker(context) async {
              final datepicker = await showDatePicker(
                context: context,
                initialDate: selectedDate,
                firstDate: selectedDate.subtract(Duration(days: 30)),
                lastDate: DateTime(selectedDate.year + 1),
                );
              
            if (datepicker != null) {
              setState(() {
                selectedDate = datepicker;
              });
            }
                 
          }
          Center(
          child: Text(
            dateFormat.format(selectedDate),
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          ),
          Center(
            child: FlatButton(
              color: Colors.blue,
              child: Text(
                'Pick Date',
                style: TextStyle(
                  color: Colors.white,
                ),
                ),
                onPressed: () {
                  showDatePicker(context);
                },
            ),
          )
        ),
      ),
    );
  }
}
