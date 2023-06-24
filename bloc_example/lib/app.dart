import 'package:bloc_example/pages/login/login_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Bloc Example",
      home: LoginPage(),
    );
  }
}
