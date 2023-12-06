import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project_1/Providers/loginProvider.dart';

class MyDashboard extends StatelessWidget {
  const MyDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context, listen: false);
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.grey.withOpacity(0.2),
          width: MediaQuery.of(context).size.width * 0.8,
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Dashboard'),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Welcome to Dashboard, ${loginProvider.usernameController.text}',
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Password: ${loginProvider.passwordController.text}',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
