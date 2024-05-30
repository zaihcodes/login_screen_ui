import 'package:flutter/material.dart';
import 'package:login_screen_ui/core/utils/widgets/custom_form_button.dart';
import 'package:login_screen_ui/core/utils/widgets/custom_text_field.dart';

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
              const SizedBox(height: 60),
              const Text(
                "Lets Register Account",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                "Hello user, you have a greatful journey",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 40),
              CustomTextField(
                  text: 'Name',
                  icon: Icons.person,
                  func: (value) {
                    debugPrint('Name: $value');
                  }),
              const SizedBox(height: 20),
              CustomTextField(
                  text: 'Last name',
                  icon: Icons.person,
                  func: (value) {
                    debugPrint('Last name: $value');
                  }),
              const SizedBox(height: 20),
              CustomTextField(
                  text: 'Email',
                  icon: Icons.email,
                  func: (value) {
                    debugPrint('Email: $value');
                  }),
              const SizedBox(height: 20),
              CustomTextField(
                  text: 'Password',
                  icon: Icons.lock,
                  func: (value) {
                    debugPrint('Password: $value');
                  }),
              const SizedBox(height: 50),
              CustomFormButton(
                text: 'Sign up',
                func: () {
                  debugPrint('Sign up');
                },
              ),
              const SizedBox(height: 20),
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
