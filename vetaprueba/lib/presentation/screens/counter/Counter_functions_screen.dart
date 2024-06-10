import 'dart:ffi';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vetaprueba/presentation/screens/counter/counbter_sreen.dart';
import 'package:vetaprueba/presentation/screens/layout/tickets_view.dart';

class Counter_functions_screen extends StatefulWidget {
  const Counter_functions_screen({super.key});

  @override
  State<Counter_functions_screen> createState() =>
      _Counter_functions_screenState();
}

class _Counter_functions_screenState extends State<Counter_functions_screen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Awa ', style: TextStyle(fontSize: 25)),
        ),
        leading: Center(
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.refresh_rounded),
                onPressed: () {
                  setState(() {
                    clickCounter = 0;
                  });
                },
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.airplane_ticket),
            onPressed: () {
              
            },
          ),
          IconButton(icon: const Icon(Icons.warning), onPressed: () {})
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            (clickCounter == 0)
                ? const Text('dale click')
                : (clickCounter != 1)
                    ? const Text(
                        'Clicks',
                        style: TextStyle(fontSize: 25),
                      )
                    : const Text(
                        'Click',
                        style: TextStyle(fontSize: 25),
                      ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {
              //reload el contenido de la pantalla al darle click
              setState(() {
                clickCounter++;
              });
            },
            child: const Icon(Icons.plus_one),
            backgroundColor: Color.fromARGB(250, 240, 240, 243),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              //reload el contenido de la pantalla al darle click
              setState(() {
                clickCounter--;
              });
            },
            child: const Icon(Icons.exposure_minus_1_outlined),
            backgroundColor: Color.fromARGB(249, 225, 128, 53),
          ),
        ],
      ),
    );
  }

  void _showTicket(BuildContext context) {
    final route = MaterialPageRoute(builder: (BuildContext context) {
      return const TicketsView();
    });
    Navigator.of(context).push(route);
  }
}
