import 'package:flutter/material.dart';
import 'package:provider_project_1/Views/counterViews/MyCounter.dart';
import 'package:provider_project_1/Views/favouriteViews/favourites.dart';
import 'package:provider_project_1/Views/loginView/login.dart';
import 'package:provider_project_1/Views/sliderViews/slider.dart';
import 'package:provider_project_1/Views/themeViews/theme.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Projects'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: ColoredBox(
            color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const NavigateTo(
                    navigateTo: MyCounter(), buttonText: "Counter"),

                // spacing
                const SizedBox(
                  height: 20,
                ),

                const NavigateTo(navigateTo: MySlider(), buttonText: "Slider"),

                // spacing
                const SizedBox(
                  height: 20,
                ),

                const NavigateTo(
                    navigateTo: MyFavourites(), buttonText: "Favourites"),

                // spacing
                const SizedBox(
                  height: 20,
                ),

                const NavigateTo(navigateTo: MyTheme(), buttonText: "Themes"),

                // spacing
                const SizedBox(
                  height: 20,
                ),

                NavigateTo(navigateTo: LoginView(), buttonText: "Login"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NavigateTo extends StatelessWidget {
  const NavigateTo(
      {super.key, required this.navigateTo, required this.buttonText});
  final Widget navigateTo;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => navigateTo),
        );
      },
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(buttonText),
        ),
      ),
    );
  }
}
