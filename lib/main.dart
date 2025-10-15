import 'package:comercial_app/screens/bottomnavigation.dart';
import 'package:comercial_app/screens/onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Nav());
  }
}
