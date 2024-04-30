import 'package:flutter/material.dart';
import 'package:toko/theme/theme.dart';

class Chatpages extends StatelessWidget {
  const Chatpages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MainBackgroundColor,
        body: Center(
          child: Text(
            "Chat Pages",
            style: primaryTextStyle,
          ),
        ));
  }
}
