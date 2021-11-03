import 'package:flutter/material.dart';
import 'package:latihan3/main.dart';

void main() {
  runApp(MyApp());
}

TimeOfDay selectedTime = TimeOfDay.now();

class timepicker extends StatefulWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Picker'),
      ),
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            showTimePicker(context) async{
              final timepicker = await showTimePicker(
                context: context,
                initialTime: selectedTime,
                Builder(BuilderContext context, Widget child) {
                  return MediaQuery(
                    data: MediaQuery.of(context), copyWith(alwaysUse24HourFormat: true),
                    child: child,
                    );
                });
                if (timepicker != null) {
                  setState(() {
                    selectedTime = timepicker;
                  });
                }
            }
            Center(
              child: Text(
                selectedTime.format(context),
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
                  'Time Picker', 
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  showTimePicker(context);
                },
              ),
            ),
          }
          ),
      )

    );
  }
}
