import 'package:flutter/material.dart';
import 'package:responsive_design/screens/main_screen.dart';
import 'package:responsive_design/utils/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dasboard UI',
      theme: ThemeData(
          scaffoldBackgroundColor: backgroundColor,
          brightness: Brightness.dark),
      home: const MainScreen(),
    );
  }
}
