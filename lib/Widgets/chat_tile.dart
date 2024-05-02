import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toko/theme/theme.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail-chat');
      },
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset("assets/images/Image_profil.png",
                    width: 54, height: 54),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Customer",
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semibold,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        "Sorry, your item has been sent iya wkwkwk",
                        style: subTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: regular,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Text(
                  "Now",
                  style: subTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: regular,
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            const Divider(
              thickness: 1,
              color: Color(0xff2B2939),
            )
          ],
        ),
      ),
    );
  }
}
