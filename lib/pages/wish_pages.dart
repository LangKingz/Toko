import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toko/theme/theme.dart';

class Wishpages extends StatelessWidget {
  const Wishpages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _header(context),
      backgroundColor: MainBackgroundColor,
      body: Column(
        children: [
          // _EmptyWish(),
        ],
      ),
    );
  }

  Expanded _EmptyWish() {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/cart.png',
              width: 80,
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            Column(
              children: [
                Text(
                  'Oops no message yet?',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semibold,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  'You have never done a transaction',
                  style: subTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: regular,
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: 150,
                  height: 45,
                  decoration: BoxDecoration(
                    color: PrimaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Explore Now',
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: semibold,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  AppBar _header(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 15,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      centerTitle: true,
      backgroundColor: MainBackgroundColor,
      title: Text(
        'Wish Pages',
        style: primaryTextStyle.copyWith(
          fontSize: 18,
          fontWeight: semibold,
        ),
      ),
    );
  }
}
