import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    //return const Placeholder();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
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
            validateClicks(clickCounter),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
          clickCounter++;
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }

  Widget validateClicks(int click) {
    String clikOClicks = clickCounter >= 9 ? 'Clicks' : 'Click';
    return Text(
      clikOClicks,
      style: const TextStyle(
        fontSize: 25,
      ),
    );
  }
}
