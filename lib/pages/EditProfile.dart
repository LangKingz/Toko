import 'package:flutter/material.dart';
import 'package:toko/theme/theme.dart';

class EditProfil extends StatelessWidget {
  const EditProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: BackgroundColor3,
      appBar: AppBar(
        backgroundColor: MainBackgroundColor,
        leading: IconButton(
          icon: Icon(Icons.close, color: PrimaryTextColor),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Edit Profile',
          style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: semibold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.check, color: PrimaryColor),
            onPressed: () {},
          )
        ],
      ),
      body: _content(),
    );
  }

  Container _content() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 30),
      width: double.infinity,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/Image_profil.png'))),
          ),
          _nameinput(),
          _username(),
          _gmail(),
        ],
      ),
    );
  }

  Container _gmail() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email Address',
            style: secondaryTextStyle.copyWith(fontSize: 16),
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: 'Example@gmail.com',
                hintStyle: secondaryTextStyle.copyWith(fontSize: 16),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: PrimaryColor))),
          )
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
            style: secondaryTextStyle.copyWith(fontSize: 16),
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: 'Username',
                hintStyle: secondaryTextStyle.copyWith(fontSize: 16),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: PrimaryColor))),
          )
        ],
      ),
    );
  }

  Container _nameinput() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Name',
            style: secondaryTextStyle.copyWith(fontSize: 16),
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: 'Your Name',
                hintStyle: secondaryTextStyle.copyWith(fontSize: 16),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: PrimaryColor))),
          )
        ],
      ),
    );
  }
}
