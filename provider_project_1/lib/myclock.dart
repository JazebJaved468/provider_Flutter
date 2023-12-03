
import 'package:flutter/material.dart';

class MyClock extends StatefulWidget {
  const MyClock({super.key});

  @override
  State<MyClock> createState() => _MyClockState();
}

class _MyClockState extends State<MyClock> {
  int time = 0;
  startClock() {
    time++;
    Future.delayed(const Duration(seconds: 10), startClock);
    print("State updated");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$time secs',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                startClock();
              },
              child: Text('Start Clock'))
        ],
      ),
    ));
  }
}
