import 'package:flutter/material.dart';
import 'package:toko/theme/theme.dart';

class Profilpages extends StatelessWidget {
  const Profilpages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MainBackgroundColor,
        body: Center(
          child: Text(
            "Profil Pages",
            style: primaryTextStyle,
          ),
        ));
  }
}
