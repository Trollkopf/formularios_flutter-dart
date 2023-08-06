import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoDatepicker extends StatefulWidget {
  const CupertinoDatepicker({super.key, required this.title});

  final String title;

  @override
  State<CupertinoDatepicker> createState() => _CupertinoDatepicker();
}

class _CupertinoDatepicker extends State<CupertinoDatepicker> {
  var _date;
  var _hour;

  final TextStyle _defaultText = const TextStyle(color: Colors.black);
  final TextStyle _highlightText = const TextStyle(
      color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 40);

  Widget _datePicker() {
    return CupertinoDatePicker(
      mode: CupertinoDatePickerMode.date,
      initialDateTime: DateTime.now(),
      minimumDate: DateTime(1900),
      maximumDate: DateTime(2030),
      onDateTimeChanged: (value) {
        setState(() {
          _date = value;
        });
      },
    );
  }

  Widget _hourPicker() {
    return CupertinoDatePicker(
      mode: CupertinoDatePickerMode.time,
      minuteInterval: 1,
      use24hFormat: true,
      initialDateTime: DateTime.now(),
      onDateTimeChanged: (value) {
        setState(() {
          _hour = TimeOfDay.fromDateTime(value);
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: MediaQuery.of(context).size.height / 3,
                          child: _datePicker(),
                        );
                      });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                  elevation: 8,
                ),
                child: const Text('Abrir Cupertino Datepicker')),
            ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: MediaQuery.of(context).size.height / 3,
                          child: _hourPicker(),
                        );
                      });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                  elevation: 8,
                ),
                child: const Text('Abrir Cupertino HourPicker')),
            const Text('Fecha seleccionada:'),
            Text(
                _date != null
                    ? '${_date.day}/${_date.month}/${_date.year}'
                    : 'No se ha seleccionado ninguna fecha',
                style: _date != null ? _highlightText : _defaultText),
            const Text('Hora seleccionada:'),
            Text(
                _hour != null
                    ? '${_hour.hour}:${_hour.minute}'
                    : 'No se ha seleccionado ninguna fecha',
                style: _hour != null ? _highlightText : _defaultText),
          ],
        ),
      ),
    );
  }
}
