import 'package:flutter/material.dart';
import 'package:login_screen_ui/core/theme/app_theme.dart';
import 'package:login_screen_ui/core/theme/theme_provider.dart';
import 'package:login_screen_ui/presentation/screens/sign_in_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(builder: (context, themeNotifier, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeNotifier.isLightTheme
              ? AppTheme.light()
              : AppTheme.darkScheme(),
          home: const SignInScreen(),
        );
      }),
    );
  }
}
