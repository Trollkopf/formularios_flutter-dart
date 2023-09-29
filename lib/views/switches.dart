import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Switches extends StatefulWidget {
  const Switches({super.key, required this.title});

  final String title;

  @override
  State<Switches> createState() => _Switches();
}

enum RadioOpcion { Coche, Avion, Barco }

Map _mapTransporte = {
  RadioOpcion.Coche: false,
  RadioOpcion.Avion: false,
  RadioOpcion.Barco: false,
};

class _Switches extends State<Switches> {
  bool _opcionSwitch = false;
  bool _opcionCSwitch = false;

  RadioOpcion _opcionRadio = RadioOpcion.Avion;
  Icon _iconRadio = Icon(Icons.airplanemode_active);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text(
              "Selección del Usuario",
              style: TextStyle(color: Colors.blueGrey, fontSize: 38),
            ),
            const Divider(),
            const Text(
              "Switch",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Switch(
                    value: _opcionSwitch,
                    activeColor: Colors.white24,
                    activeTrackColor: Colors.green,
                    inactiveTrackColor: Colors.red,
                    inactiveThumbColor: Colors.white24,
                    onChanged: (value) {
                      setState(() {
                        _opcionSwitch = value;
                      });
                    }),
                CupertinoSwitch(
                  value: _opcionCSwitch,
                  activeColor: Colors.cyan,
                  onChanged: (value) {
                    setState(() {
                      _opcionCSwitch = value;
                    });
                  },
                )
              ],
            ),
            const Padding(padding: EdgeInsets.only(bottom: 10)),
            Text(
              _opcionSwitch ? "Material Encendido" : "Material Apagado",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              _opcionCSwitch ? "Cupertino Encendido" : "Cupertino Apagado",
              style: TextStyle(fontSize: 20),
            ),
            const Divider(),
            const Text(
              "Radio",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                    value: RadioOpcion.Coche,
                    groupValue: _opcionRadio,
                    activeColor: Colors.green,
                    onChanged: (value) {
                      setState(() {
                        _opcionRadio = RadioOpcion.Coche;
                        _iconRadio = const Icon(Icons.directions_car);
                      });
                    }),
                Text(
                  'Coche',
                  style: _opcionRadio == RadioOpcion.Coche
                      ? const TextStyle(color: Colors.green)
                      : const TextStyle(),
                ),
                Radio(
                    value: RadioOpcion.Barco,
                    groupValue: _opcionRadio,
                    activeColor: Colors.green,
                    onChanged: (value) {
                      setState(() {
                        _opcionRadio = RadioOpcion.Barco;
                        _iconRadio = const Icon(Icons.directions_boat);
                      });
                    }),
                Text(
                  'Barco',
                  style: _opcionRadio == RadioOpcion.Barco
                      ? const TextStyle(color: Colors.green)
                      : const TextStyle(),
                ),
                Radio(
                    value: RadioOpcion.Avion,
                    groupValue: _opcionRadio,
                    activeColor: Colors.green,
                    onChanged: (value) {
                      setState(() {
                        _opcionRadio = RadioOpcion.Avion;
                        _iconRadio = const Icon(Icons.airplanemode_active);
                      });
                    }),
                Text(
                  'Avión',
                  style: _opcionRadio == RadioOpcion.Avion
                      ? const TextStyle(color: Colors.green)
                      : const TextStyle(),
                ),
              ],
            ),
            _iconRadio,
            const Divider(),
            const Text(
              'Checkbox',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Coche',
                  style: _mapTransporte[RadioOpcion.Coche]
                      ? const TextStyle(color: Colors.green)
                      : const TextStyle(),
                ),
                Checkbox(
                    activeColor: Colors.green,
                    value: _mapTransporte[RadioOpcion.Coche],
                    onChanged: (value) {
                      setState(() {
                        _mapTransporte[RadioOpcion.Coche] = value;
                      });
                    }),
                Text(
                  'Barco',
                  style: _mapTransporte[RadioOpcion.Barco]
                      ? const TextStyle(color: Colors.green)
                      : const TextStyle(),
                ),
                Checkbox(
                    activeColor: Colors.green,
                    value: _mapTransporte[RadioOpcion.Barco],
                    onChanged: (value) {
                      setState(() {
                        _mapTransporte[RadioOpcion.Barco] = value;
                      });
                    }),
                Text(
                  'Avión',
                  style: _mapTransporte[RadioOpcion.Avion]
                      ? const TextStyle(color: Colors.green)
                      : const TextStyle(),
                ),
                Checkbox(
                    activeColor: Colors.green,
                    value: _mapTransporte[RadioOpcion.Avion],
                    onChanged: (value) {
                      setState(() {
                        _mapTransporte[RadioOpcion.Avion] = value;
                      });
                    })
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  Icons.directions_car,
                  color: _mapTransporte[RadioOpcion.Coche]
                      ? Colors.green
                      : Colors.grey,
                ),
                Icon(
                  Icons.directions_boat,
                  color: _mapTransporte[RadioOpcion.Barco]
                      ? Colors.green
                      : Colors.grey,
                ),
                Icon(
                  Icons.airplanemode_active,
                  color: _mapTransporte[RadioOpcion.Avion]
                      ? Colors.green
                      : Colors.grey,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
