import 'package:flutter/material.dart';
import 'package:flutter_application_1/login/login_screen.dart';

import 'home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        inputDecorationTheme:InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey[50],
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.grey[300]!),
          )
        )
      ),
      initialRoute: 'login',
      routes: {
        'login':(context) => const LoginScreen(),
        'home':(context) => const HomeScreen(),
      },
    );
  }
}
