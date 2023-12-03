import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project_1/Views/MyCounter.dart';
import 'package:provider_project_1/myclock.dart';
import 'package:provider_project_1/Providers/counterProviderClass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => MyCounterProvider(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const MyCounter(),
          debugShowCheckedModeBanner: false,
        ));
  }
}


// cd provider_project_1