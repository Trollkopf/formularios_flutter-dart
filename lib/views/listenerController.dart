import 'package:flutter/material.dart';

class ListenerController extends StatefulWidget {
  const ListenerController({super.key, required this.title});

  final String title;

  @override
  State<ListenerController> createState() => _ListenerController();
}

class _ListenerController extends State<ListenerController> {
  final TextStyle _textStyleDefault = const TextStyle(
    color: Colors.white,
  );
  final TextStyle _textStyleEntry = const TextStyle(
    color: Colors.amber,
    fontWeight: FontWeight.bold,
  );

  final _controller = TextEditingController();

  String _tf = 'Ningún texto introducido';

  void initState() {
    super.initState();
    _controller.addListener(_mostrarElValorDelCampo);
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _mostrarElValorDelCampo() {
    setState(() {
      _tf = _controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
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
                const Padding(padding: EdgeInsets.only(bottom: 40)),
                TextField(
                  decoration: const InputDecoration(border: OutlineInputBorder()),
                  controller: _controller,
                ),
                const Padding(padding: EdgeInsets.only(bottom: 20)),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const[
                         BoxShadow(
                            color: Colors.black,
                            blurRadius: 25.0,
                            spreadRadius: 5.0,
                            offset: Offset(0, 15))
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      const Padding(padding: EdgeInsets.only(top: 10)),
                      Text(
                        '1-Texto que se está introduciendo en TextField',
                        style: _textStyleDefault,
                      ),
                      Text(
                        _tf,
                        style: _textStyleEntry,
                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 10))
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
