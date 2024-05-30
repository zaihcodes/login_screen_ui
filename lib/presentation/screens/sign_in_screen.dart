import 'package:flutter/material.dart';
import 'package:login_screen_ui/core/utils/widgets/custom_form_button.dart';
import 'package:login_screen_ui/core/utils/widgets/custom_text_field.dart';
import 'sign_up_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  final IconData icon = Icons.password;

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
                "Lets Sign you in",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                "Welcome Back,\nYou have been missed",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 50),
              CustomTextField(
                  text: 'Email',
                  hintText: 'Enter your email',
                  icon: Icons.email,
                  func: (value) {
                    debugPrint('Value: $value');
                  }),
              const SizedBox(height: 20),
              CustomTextField(
                  text: 'Password',
                  type: 'password',
                  hintText: 'Enter your password',
                  icon: Icons.lock,
                  func: (value) {
                    debugPrint('Value: $value');
                  }),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Forgot Password?'),
                ),
              ),
              const SizedBox(height: 20),
              CustomFormButton(
                text: 'Sign in',
                func: () {
                  debugPrint('Sign in');
                },
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'or',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      'assets/icons/google.png',
                      width: 45,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      'assets/icons/facebook.png',
                      width: 45,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()),
                    );
                  },
                  child: const Text("Don't have an account? Register Now"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
