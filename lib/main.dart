import 'package:flutter/material.dart';
import 'package:login_screen_ui/presentation/screens/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Roboto',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xDA12E547),
          // brightness: Brightness.dark,
        ),
      ),
      home: const SignInScreen(),
    );
  }
}
