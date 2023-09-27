import 'package:flutter/material.dart';

class Checkboxes extends StatefulWidget{
  const Checkboxes({super.key, required this.title});

  final String title;

  @override
  State<Checkboxes> createState()=> _Checkboxes();
}

class _Checkboxes extends State<Checkboxes>{


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Hola Mundo'),
          ],
        ),
      ),
    );
  }
}