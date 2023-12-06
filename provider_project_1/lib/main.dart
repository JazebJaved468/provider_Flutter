import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project_1/Providers/favouriteProvider.dart';
import 'package:provider_project_1/Providers/loginProvider.dart';
import 'package:provider_project_1/Providers/sliderProvider.dart';
import 'package:provider_project_1/Providers/themeProvider.dart';
import 'package:provider_project_1/Views/counterViews/MyCounter.dart';
import 'package:provider_project_1/Views/loginView/login.dart';
import 'package:provider_project_1/Views/sliderViews/slider.dart';
import 'package:provider_project_1/Views/home.dart';
import 'package:provider_project_1/Views/themeViews/theme.dart';
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
          ChangeNotifierProvider(
            create: (_) => ThemeProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => LoginProvider(),
          ),
        ],

            // MaterialApp
            child: Consumer<ThemeProvider>(
              builder: (context, themeProviderModel, child) {
                return MaterialApp(
                  title: 'Provider Projects',
                  themeMode: themeProviderModel.selectedTheme,
                  theme: ThemeData(
                    brightness: Brightness.light,
                    primarySwatch: Colors.blue,
                    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
                  ),
                  darkTheme: ThemeData.dark(),
                  home: LoginView(),
                  debugShowCheckedModeBanner: false,
                );
              },
            ));
  }
}


// cd provider_project_1