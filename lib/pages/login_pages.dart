import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:toko/providers/auth_providers.dart';
import 'package:toko/theme/theme.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    handleLogin() async {
      setState(() {
        isLoading = true;
      });
      if (await authProvider.login(
        email: emailController.text,
        password: passwordController.text,
      )) {
        Navigator.pushNamed(context, '/home');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Gagal Login'),
          ),
        );
        setState(() {
          isLoading = false;
        });
      }
    }

    return Scaffold(
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
                _emailInput(),
                _password(),
                isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : _button(context, handleLogin),
                const Spacer(),
                _footer(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _footer(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Don't have an account? ",
            style: subTextStyle,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/register');
            },
            child: Text(
              'Sign up',
              style: GoogleFonts.poppins(
                color: PrimaryColor,
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
          )
        ],
      ),
    );
  }

  Container _button(context, Function handleLogin) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      width: double.infinity,
      height: 50,
      child: TextButton(
        onPressed: () => handleLogin(),
        style: TextButton.styleFrom(
          backgroundColor: PrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          'Sign In',
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
            "Password",
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 12)),
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: BackgroundColor2,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: TextFormField(
                controller: passwordController,
                obscureText: true,
                style: primaryTextStyle,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Your Password',
                  hintStyle: subTextStyle,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Icon(
                      Icons.lock,
                      color: PrimaryColor,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container _emailInput() {
    return Container(
      margin: const EdgeInsets.only(top: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email Address",
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 12)),
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: BackgroundColor2,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: TextFormField(
                controller: emailController,
                style: primaryTextStyle,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Your Email Address',
                  hintStyle: subTextStyle,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Icon(
                      Icons.email,
                      color: PrimaryColor,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Column _header() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Login',
          style: primaryTextStyle.copyWith(
            fontSize: 24,
            fontWeight: bold,
          ),
        ),
        const Padding(padding: EdgeInsets.only(top: 5)),
        Text(
          'Sign In to Countinue',
          style: subTextStyle.copyWith(
            fontSize: 14,
            fontWeight: regular,
          ),
        )
      ],
    );
  }
}
