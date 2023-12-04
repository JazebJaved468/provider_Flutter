import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project_1/Providers/themeProvider.dart';

class MyTheme extends StatelessWidget {
  const MyTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Theme Changer App')),
      body: Consumer<ThemeProvider>(
        builder: (context, ThemeProviderModel, child) {
          return Column(
            children: [
              Row(
                children: [
                  Radio(
                    value: ThemeMode.light,
                    groupValue: ThemeProviderModel.selectedTheme,
                    onChanged: (value) {
                      ThemeProviderModel.changeTheme(ThemeMode.light);
                      print("Light Theme Selected");
                    },
                  ),
                  Text('Light'),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: ThemeMode.dark,
                    groupValue: ThemeProviderModel.selectedTheme,
                    onChanged: (value) {
                      ThemeProviderModel.changeTheme(ThemeMode.dark);
                      print("Dark Theme Selected");
                    },
                  ),
                  Text('Dark'),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: ThemeMode.system,
                    groupValue: ThemeProviderModel.selectedTheme,
                    onChanged: (value) {
                      ThemeProviderModel.changeTheme(ThemeMode.system);
                      print("System Theme Selected");
                    },
                  ),
                  Text('System Default'),
                ],
              ),
              Container(
                color: Colors.grey[300],
                child: Text(
                  'Selected Theme: ${ThemeProviderModel.selectedTheme}',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
