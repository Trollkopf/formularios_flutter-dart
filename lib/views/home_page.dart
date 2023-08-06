import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Hola Mundo!',
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/formulario');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Theme.of(context).colorScheme.inversePrimary,
                    foregroundColor: Colors.deepPurple,
                    elevation: 8,
                    shadowColor: Theme.of(context).colorScheme.inversePrimary),
                child: const Text('Ir a la entrada de texto')),
            const Padding(padding: EdgeInsets.only(bottom: 10)),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/listener');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Theme.of(context).colorScheme.inversePrimary,
                    foregroundColor: Colors.deepPurple,
                    elevation: 8,
                    shadowColor: Theme.of(context).colorScheme.inversePrimary),
                child: const Text('Ir al Listener')),
            const Padding(padding: EdgeInsets.only(bottom: 10)),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/calendario');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Theme.of(context).colorScheme.inversePrimary,
                    foregroundColor: Colors.deepPurple,
                    elevation: 8,
                    shadowColor: Theme.of(context).colorScheme.inversePrimary),
                child: const Text('Ir al calendario')),
            const Padding(padding: EdgeInsets.only(bottom: 10)),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cupertinodate');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Theme.of(context).colorScheme.inversePrimary,
                    foregroundColor: Colors.deepPurple,
                    elevation: 8,
                    shadowColor: Theme.of(context).colorScheme.inversePrimary),
                child: const Text('Ir al calendario cupertino')),
            const Padding(padding: EdgeInsets.only(bottom: 10)),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/switches');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Theme.of(context).colorScheme.inversePrimary,
                    foregroundColor: Colors.deepPurple,
                    elevation: 8,
                    shadowColor: Theme.of(context).colorScheme.inversePrimary),
                child: const Text('Ir al switches')),
          ],
        ),
      ),
    );
  }
}
