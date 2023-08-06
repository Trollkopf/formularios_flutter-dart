import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Switches extends StatefulWidget {
  const Switches({super.key, required this.title});

  final String title;

  @override
  State<Switches> createState() => _Switches();
}

class _Switches extends State<Switches> {
  bool _opcionSwitch = false;
  bool _opcionCSwitch = false;

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
                onChanged: (value){
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
          ],
        ),
      ),
    );
  }
}
