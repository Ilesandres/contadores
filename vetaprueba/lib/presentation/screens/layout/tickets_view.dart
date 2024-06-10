import 'package:flutter/material.dart';

class TicketsView extends StatefulWidget {
  const TicketsView({super.key});

  @override
  State<TicketsView> createState() => _TicketsViewState();
}

class _TicketsViewState extends State<TicketsView> {
  int counterClick = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Kiya saa', style: TextStyle(fontSize: 25)),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('TicketView : $counterClick'),
            FilledButton.tonal(
                onPressed: () {
                  setState(() {
                    counterClick++;
                  });
                },
                child: const Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}
