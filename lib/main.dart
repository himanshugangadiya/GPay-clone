import 'package:flutter/material.dart';
import 'package:gpay/utils/app_color.dart';
import 'package:gpay/view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google Pay',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.background,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: const TextTheme(
            bodyMedium: TextStyle(
          color: AppColor.white,
        )).apply(
          displayColor: AppColor.white,
          bodyColor: AppColor.white,
          decorationColor: AppColor.white,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
