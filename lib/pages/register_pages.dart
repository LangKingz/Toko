import 'dart:js';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:toko/providers/auth_providers.dart';
import 'package:toko/theme/theme.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController(text: '');

  TextEditingController username = TextEditingController(text: '');

  TextEditingController emailController = TextEditingController(text: '');

  TextEditingController passwordController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    handleRegis() async {
      if (await authProvider.register(
        name: nameController.text,
        username: username.text,
        email: emailController.text,
        password: passwordController.text,
      )) {
        Navigator.pushNamed(context, '/home');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Gagal Register'),
          ),
        );
      }
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MainBackgroundColor,
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.only(top: 30)),
              _header(),
              _fullname(),
              _username(),
              _email(),
              _password(),
              _button(context, handleRegis),
              const Spacer(),
              _footer(context)
            ],
          ),
        ),
      )),
    );
  }

  Container _footer(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Already have an account? ',
            style: subTextStyle,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text(
              "Sign In",
              style: GoogleFonts.poppins(
                  fontSize: 16, color: PrimaryColor, fontWeight: medium),
            ),
          )
        ],
      ),
    );
  }

  Container _button(context, Function handleRegis) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      width: double.infinity,
      height: 50,
      child: TextButton(
        onPressed: () => handleRegis(),
        style: TextButton.styleFrom(
          backgroundColor: PrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          'Sign Up',
          style: primaryTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semibold,
          ),
        ),
      ),
    );
  }

  Container _password() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Password',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          Container(
            height: 50,
            margin: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: BackgroundColor2,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: TextFormField(
                controller: passwordController,
                obscureText: true,
                style: primaryTextStyle,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Your Password',
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Icon(
                      Icons.lock,
                      color: PrimaryColor,
                    ),
                  ),
                  hintStyle: subTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _email() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email Address',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          Container(
            height: 50,
            margin: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: BackgroundColor2,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: TextFormField(
                controller: emailController,
                style: primaryTextStyle,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Your Email Address',
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Icon(
                      Icons.email,
                      color: PrimaryColor,
                    ),
                  ),
                  hintStyle: subTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _username() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Username',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          Container(
            height: 50,
            margin: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: BackgroundColor2,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: TextFormField(
                controller: username,
                style: primaryTextStyle,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Your Username',
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Icon(
                      Icons.circle_outlined,
                      color: PrimaryColor,
                    ),
                  ),
                  hintStyle: subTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _fullname() {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Full Name',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: BackgroundColor2,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: TextFormField(
                controller: nameController,
                style: primaryTextStyle,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Your Full Name',
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Icon(
                      Icons.person,
                      color: PrimaryColor,
                    ),
                  ),
                  hintStyle: subTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Column _header() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sign Up',
          style: primaryTextStyle.copyWith(
            fontSize: 24,
            fontWeight: bold,
          ),
        ),
        Padding(padding: const EdgeInsets.only(top: 8)),
        Text('Register and Happy Shoping',
            style: subTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
            )),
      ],
    );
  }
}
