import 'package:flutter/material.dart';
import 'package:toko/pages/home/main_pages.dart';
import 'package:toko/pages/login_pages.dart';
import 'package:toko/pages/register_pages.dart';
import 'package:toko/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toko',
      routes: {
        '/': (context) => const Splashscreen(),
        '/login': (context) => const Login(),
        '/register': (context) => const Register(),
        '/home':(context) => const Mainpages()
      },
    );
  }
}
