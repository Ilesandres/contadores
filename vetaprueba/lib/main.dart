import 'package:flutter/material.dart';
import 'package:vetaprueba/presentation/screens/counter/Counter_functions_screen.dart';
import 'package:vetaprueba/presentation/screens/counter/counbter_sreen.dart';
import 'package:vetaprueba/presentation/screens/layout/tickets_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      home:CounterScreen()
    );
  }
}
