import 'package:flutter/material.dart';
import 'package:spayce/modules/login/login_page.dart';
import 'package:spayce/shared/themes/app_colors.dart';

//import 'modules/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sPayce',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}
