import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider_project_1/lib/Providers/sliderProvider.dart';
import '../../provider_project_1/lib/Views/SliderViews/slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => SliderProvider(),
        child: MaterialApp(
          title: 'Provider Second Project',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const Home(),
        ));
  }
}

// cd provider_project_2