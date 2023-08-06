import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:formularios/views/cupertinodatepicker.dart';
import 'package:formularios/views/datepicker.dart';
import 'package:formularios/views/switches.dart';

import 'views/formulario.dart';
import 'views/home_page.dart';
import 'views/listenerController.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('es', 'ES'),
      ],
      home: const MyHomePage(title: 'Formularios'),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => const MyHomePage(title: 'Inicio'),
        '/formulario': (BuildContext context) =>
            const Formulario(title: 'Formulario'),
        '/listener': (BuildContext context) =>
            const ListenerController(title: 'Listener'),
        '/calendario': (BuildContext context) =>
            const Calendario(title: 'Calendario'),
        '/cupertinodate': (BuildContext context) =>
            const CupertinoDatepicker(title: 'Calendario Cupertino'),
        '/switches': (BuildContext context) =>
            const Switches(title: 'Switches'),
      },
    );
  }
}
