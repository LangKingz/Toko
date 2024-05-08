import 'package:flutter/material.dart';
import 'package:toko/theme/theme.dart';

class Profilpages extends StatelessWidget {
  const Profilpages({super.key});

  @override
  Widget build(BuildContext context) {
    Widget menuItem(String text) {
      return Container(
        margin: EdgeInsets.only(top: 22),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: secondaryTextStyle.copyWith(fontSize: 16),
            ),
            Icon(
              Icons.chevron_right,
              color: IconColor,
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: BackgroundColor3,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(125), child: header(context)),
      body: _content(menuItem),
    );
  }

  Expanded _content(Widget menuItem(String text)) {
    return Expanded(
        child: Container(
      color: BackgroundColor3,
      margin: EdgeInsets.only(top: defaultMargin),
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Account',
            style:
                primaryTextStyle.copyWith(fontSize: 20, fontWeight: semibold),
          ),
          menuItem('Edit Profile'),
          menuItem('Your Orders'),
          menuItem('Help'),
          SizedBox(
            height: 30,
          ),
          Text(
            'General',
            style:
                primaryTextStyle.copyWith(fontSize: 20, fontWeight: semibold),
          ),
          menuItem('Privacy & Policy'),
          menuItem('Term of Service'),
          menuItem('Rate App'),
        ],
      ),
    ));
  }

  AppBar header(context) {
    return AppBar(
      backgroundColor: MainBackgroundColor,
      automaticallyImplyLeading: false,
      flexibleSpace: SafeArea(
          child: Container(
        padding: EdgeInsets.all(defaultMargin),
        child: Row(
          children: [
            ClipOval(
              child: Image.asset(
                'assets/images/Image_profil.png',
                width: 64,
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 12)),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hallo, Alex',
                  style: primaryTextStyle.copyWith(
                      fontSize: 24, fontWeight: semibold),
                ),
                Text(
                  '@alexkeinn',
                  style: subTextStyle.copyWith(fontSize: 16),
                )
              ],
            )),
            IconButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/login', (route) => false);
                },
                icon: Icon(
                  Icons.exit_to_app,
                  color: AlertColor,
                )),
          ],
        ),
      )),
    );
  }
}
