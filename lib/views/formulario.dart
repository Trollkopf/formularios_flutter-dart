import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  const Formulario({super.key, required this.title});

  final String title;

  @override
  State<Formulario> createState() => _Formulario();
}

class _Formulario extends State<Formulario> {
  String _tf = '';
  String _tfs = '';
  String _ctf = '';
  String _ctfs = '';

  final TextStyle _textStyleDefault = const TextStyle(color: Colors.white);
  final TextStyle _textStyleSassie =
      const TextStyle(color: Colors.amber, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Formulario',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.blue,
                ),
              ),
              const Divider(),
              const Padding(padding: EdgeInsets.only(bottom: 20)),
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                   const  Text('Inserte un texto:'),
                    TextField(
                      decoration: const InputDecoration(
                        hintText: 'Escriba lo que quiera',
                      ),
                      onChanged: (value) {
                        setState(() {
                          _tf = value;
                        });
                      },
                      onSubmitted: (value) {
                        setState(() {
                          _tfs = value;
                        });
                      },
                    ),
                    const Padding(padding: EdgeInsets.only(bottom: 20)),
                    CupertinoTextField(
                      placeholder: 'Escriba lo que quiera: ',
                      onChanged: (value){
                        setState(() {
                          _ctf = value;
                        });
                      },
                      onSubmitted: (value){
                        setState(() {
                          _ctfs = value;
                        });
                      },
                    ),
                    const Padding(padding: EdgeInsets.only(bottom: 40)),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration:
                          const BoxDecoration(color: Colors.blue, boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 25.0,
                            spreadRadius: 5.0,
                            offset: Offset(0, 15)),
                      ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text('Itroduciendo Texto (Material)',
                              style: _textStyleDefault),
                          Text(
                            _tf,
                            style: _textStyleSassie,
                          ),
                          const Padding(padding: EdgeInsets.only(bottom: 10)),
                          Text('Texto enviado (Material)',
                              style: _textStyleDefault),
                          Text(_tfs, style: _textStyleSassie),
                          Text('Introduciendo texto (Cupertino)',
                              style: _textStyleDefault),
                          Text(
                            _ctf,
                            style: _textStyleSassie,
                          ),
                          const Padding(padding: EdgeInsets.only(bottom: 10)),
                          Text('Texto enviado (cupertino)',
                              style: _textStyleDefault),
                          Text(_ctfs, style: _textStyleSassie),
                          const Padding(padding: EdgeInsets.only(bottom: 20)),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
