import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project_1/Providers/counterProviderClass.dart';
import 'package:provider_project_1/Views/SecondCounter.dart';

class MyCounter extends StatelessWidget {
  const MyCounter({super.key});

  @override
  Widget build(BuildContext context) {
    final MyCounterProvider MyCounterModel =
        Provider.of<MyCounterProvider>(context, listen: false);
    print("view build");
    return Scaffold(
        appBar: AppBar(
          title: const Text('Provider Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<MyCounterProvider>(builder: (context, MyCounter, child) {
                print("1st widget build");
                return Text(
                  'You have pushed the button this many times: ${MyCounter.counter}',
                );
              }),
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
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MySecondCounter()),
                  );
                },
                child: const Text('Go to second view'),
              ),
            ],
          ),
        ));
  }
}
