import 'package:flutter/material.dart';

class Calendario extends StatefulWidget {
  const Calendario({super.key, required this.title});

  final String title;

  @override
  State<Calendario> createState() => _Calendario();
}

class _Calendario extends State<Calendario> {
  var _date;
  var _hour;

  final TextStyle _textStyleDefault = const TextStyle(color: Colors.black);
  final TextStyle _textStyleSassie = const TextStyle(
      color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 40);

  Future<Null> _selectionDate() async {
    DateTime? _fechaSeleccionada = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2030),
    );

    if (_fechaSeleccionada != null) {
      setState(() {
        _date = _fechaSeleccionada;
      });
    }
  }

  Future<Null> _selectionHour() async {
    TimeOfDay? _horaSeleccionada =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());

    if (_horaSeleccionada != null) {
      setState(() {
        _hour = _horaSeleccionada;
      });
    }
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
                _selectionDate();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                elevation: 8,
              ),
              child: const Text('Abrir un datepicker'),
            ),
            ElevatedButton(
              onPressed: () {
                _selectionHour();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                elevation: 8,
              ),
              child: const Text('Abrir un timePicker'),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            const Text('Esta es la fecha seleccionada:'),
            Text(
              _date == null
                  ? 'Ninguna fecha seleccionada'
                  : '${_date.day}/${_date.month}/${_date.year}',
              style: _date == null ? _textStyleDefault : _textStyleSassie,
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            const Text('Esta es la hora seleccionada:'),
            Text(
              _hour == null
                  ? 'Ninguna fecha seleccionada'
                  : '${_hour.format(context)}',
              style: _hour == null ? _textStyleDefault : _textStyleSassie,
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
          ],
        ),
      ),
    );
  }
}
