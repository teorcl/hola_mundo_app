import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Counter Functions'), actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
        ]),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$clickCounter',
                style:
                    const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
              ),
              Text(
                validateClicks(clickCounter),
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.w100),
              ),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children:  [ //Le falta el setState()
            CustomButton(
              icon: Icons.plus_one,
              onPressed: () {
                setState(() {
                  clickCounter++;
                });
              },
            ),
            SizedBox(height: 10),
            CustomButton(
              icon: Icons.exposure_minus_1,
              onPressed: () {
                setState(() {
                  if (clickCounter == 0) return; 
                  clickCounter--;
                });
              },
            ),
            SizedBox(height: 10),
            CustomButton(
              icon: Icons.refresh_rounded,
              onPressed: () {
                setState(() {
                  clickCounter=0;
                });
              },
            ),
          ],
        ));
  }

  String validateClicks(int click) {
    String clikOClicks = clickCounter == 1 ? 'Click' : 'Clicks';
    return clikOClicks;
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({Key? key, required this.icon, this.onPressed, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      enableFeedback: true,
      elevation: 40,
      backgroundColor: Colors.cyan,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
