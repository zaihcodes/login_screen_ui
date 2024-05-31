import 'package:flutter/material.dart';
import 'package:login_screen_ui/core/theme/theme_provider.dart';
import 'package:login_screen_ui/core/utils/widgets/custom_form_button.dart';
import 'package:login_screen_ui/core/utils/widgets/custom_text_field.dart';
import 'package:provider/provider.dart';
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
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
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
                "Sign in",
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
              const SizedBox(height: 25),
              CustomFormButton(
                text: 'Sign in',
                func: () {
                  debugPrint('Sign in');
                },
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Forgot Password?'),
              ),
              const SizedBox(height: 0),
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
                  thirdPartyLogin(
                    func: () {},
                    image: 'assets/icons/google.png',
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  thirdPartyLogin(
                    func: () {},
                    image: 'assets/icons/facebook.png',
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

  Widget thirdPartyLogin({required String image, required VoidCallback func}) {
    return GestureDetector(
      onTap: func,
      child: Image.asset(
        image,
        width: 40,
      ),
    );
  }
}
