import 'package:flutter/material.dart';
import 'package:toko/theme/theme.dart';

class Wishpages extends StatelessWidget {
  const Wishpages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MainBackgroundColor,
        body: Center(
          child: Text(
            "Wish Pages",
            style: primaryTextStyle,
          ),
        ));
  }
}
