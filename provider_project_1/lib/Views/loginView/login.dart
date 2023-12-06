import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project_1/Providers/loginProvider.dart';
import 'package:provider_project_1/Views/loginView/dashboard.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context, listen: false);

    final mediaWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Container(
          color: Colors.grey.withOpacity(0.2),
          width: mediaWidth * 0.8,
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Login'),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: loginProvider.usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Consumer<LoginProvider>(
                builder: (context, loginProviderModel, child) {
                  return TextFormField(
                    controller: loginProvider.passwordController,
                    obscureText: loginProviderModel.isShowPassword,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      suffixIcon: IconButton(
                        icon: Icon(
                          loginProviderModel.isShowPassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () {
                          print('onPressed');
                          loginProviderModel.onChangeShowPassword();
                          // value.onChangeShowPassword();
                        },
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () async {
                  await loginProvider.onLogin();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyDashboard()),
                  );
                },
                child: Text('Login'),
              ),
              const SizedBox(
                height: 20,
              ),
              Consumer<LoginProvider>(
                builder: (context, loginProviderModel, child) {
                  return loginProviderModel.isAuthenticating
                      ? const CircularProgressIndicator()
                      : Text(loginProviderModel.message);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
