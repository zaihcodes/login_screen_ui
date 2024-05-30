import 'package:flutter/material.dart';
import 'package:login_screen_ui/core/utils/widgets/custom_text_field.dart';
import 'sign_up_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  final IconData icon = Icons.password;
  void _onchange(query) {
    debugPrint(query);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
              const Text(
                "Lets Sign you in",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                "Welcome Back,\nYou have been missed",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 40),
              CustomTextField(
                  text: 'Email',
                  icon: Icons.email,
                  func: (value) {
                    debugPrint('Value: $value');
                  }),
              const SizedBox(height: 20),
              CustomTextField(
                  text: 'Password',
                  type: 'password',
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
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text('Sign in'),
                ),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text('or'),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: const Icon(Icons.g_translate),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.facebook),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.apple),
                    onPressed: () {},
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
