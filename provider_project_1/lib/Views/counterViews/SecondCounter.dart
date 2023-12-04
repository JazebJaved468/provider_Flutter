import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project_1/Providers/counterProvider.dart';

class MySecondCounter extends StatelessWidget {
  const MySecondCounter({super.key});

  @override
  Widget build(BuildContext context) {
    final MyCounterProvider MyCounterModel =
        Provider.of<MyCounterProvider>(context, listen: false);
    print("Second view buld");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Demo'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<MyCounterProvider>(
            builder: (context, MyCounter, child) {
              return Text(
                'You have pushed the button this many times: ${MyCounter.counter}',
              );
            },
          ),
          ElevatedButton(
            onPressed: () {
              MyCounterModel.incrementCounter();
            },
            child: const Text('Increase'),
          ),
          ElevatedButton(
            onPressed: () {
              MyCounterModel.decrementCounter();
            },
            child: const Text('decrease'),
          ),
        ],
      )),
    );
  }
}
