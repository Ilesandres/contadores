import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vetaprueba/presentation/screens/counter/Counter_functions_screen.dart';
import 'package:vetaprueba/presentation/screens/layout/tickets_view.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int selectedIndex = 0;

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    final Colors = Theme.of(context).colorScheme;
    final screens = [
      const TicketsView(),
      const Counter_functions_screen(),
      const TicketsView(),
      const CounterScreen()
    ];
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.airplane_ticket),
            activeIcon: const Icon(Icons.airplane_ticket_outlined),
            label: 'ticket',
            backgroundColor: Colors.primary,
          ),
          BottomNavigationBarItem(
              icon: const Icon(Icons.person),
              activeIcon: const Icon(Icons.person_add),
              label: 'person',
              backgroundColor: Colors.secondary),
          BottomNavigationBarItem(
              icon: const Icon(Icons.car_crash),
              activeIcon: const Icon(Icons.car_rental),
              label: 'car',
              backgroundColor: Colors.tertiary)
        ],
      ),
    );
  }
}
