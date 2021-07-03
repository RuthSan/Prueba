import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prueba Grupo TI5-1',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      //routes: {
      //'/':(_)=>HomePage()
      // },
    );
  }
}
