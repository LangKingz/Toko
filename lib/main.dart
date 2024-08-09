import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toko/pages/EditProfile.dart';
import 'package:toko/pages/detail_chat.dart';
import 'package:toko/pages/home/main_pages.dart';
import 'package:toko/pages/login_pages.dart';
import 'package:toko/pages/product_pages.dart';
import 'package:toko/pages/register_pages.dart';
import 'package:toko/pages/splash_screen.dart';
import 'package:toko/providers/auth_providers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Toko',
        routes: {
          '/': (context) => const Splashscreen(),
          '/login': (context) => const Login(),
          '/register': (context) =>  Register(),
          '/home': (context) => const Mainpages(),
          '/detail-chat': (context) => const DetailChatpages(),
          '/edit-profile': (context) => const EditProfil(),
          '/detail-product': (context) => const Productpages(),
        },
      ),
    );
  }
}
