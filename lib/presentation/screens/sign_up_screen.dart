import 'package:flutter/material.dart';
import 'package:login_screen_ui/core/theme/theme_provider.dart';
import 'package:login_screen_ui/core/utils/widgets/custom_form_button.dart';
import 'package:login_screen_ui/core/utils/widgets/custom_text_field.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () {
                    Provider.of<ThemeNotifier>(context, listen: false)
                        .toggleTheme();
                  },
                  child: Icon(
                    Provider.of<ThemeNotifier>(context, listen: false)
                            .isLightTheme
                        ? Icons.light_mode
                        : Icons.dark_mode,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                "Register",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                "Hello user, you have a greatful journey",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 40),
              CustomTextField(
                  text: 'First Name',
                  hintText: 'First Name',
                  icon: Icons.person,
                  func: (value) {
                    debugPrint('Name: $value');
                  }),
              const SizedBox(height: 15),
              CustomTextField(
                  text: 'Last name',
                  hintText: 'Last name',
                  icon: Icons.person,
                  func: (value) {
                    debugPrint('Last name: $value');
                  }),
              const SizedBox(height: 15),
              CustomTextField(
                  text: 'Email',
                  hintText: 'Email',
                  icon: Icons.email,
                  func: (value) {
                    debugPrint('Email: $value');
                  }),
              const SizedBox(height: 15),
              CustomTextField(
                  text: 'Password',
                  hintText: 'Password',
                  icon: Icons.lock,
                  func: (value) {
                    debugPrint('Password: $value');
                  }),
              const SizedBox(height: 40),
              CustomFormButton(
                text: 'Sign up',
                func: () {
                  debugPrint('Sign up');
                },
              ),
              const SizedBox(height: 15),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Already have an account? Login'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
