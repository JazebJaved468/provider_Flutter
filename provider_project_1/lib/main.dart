import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project_1/Providers/favouriteProvider.dart';
import 'package:provider_project_1/Providers/sliderProvider.dart';
import 'package:provider_project_1/Views/counterViews/MyCounter.dart';
import 'package:provider_project_1/Views/sliderViews/slider.dart';
import 'package:provider_project_1/Views/home.dart';
import 'package:provider_project_1/myclock.dart';
import 'package:provider_project_1/Providers/counterProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
        // Registration of providers
        MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MyCounterProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SliderProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => FavouriteProvider(),
        ),
      ],

      // MaterialApp
      child: MaterialApp(
        title: 'Provider Projects',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Home(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}


// cd provider_project_1