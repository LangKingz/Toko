import 'package:flutter/material.dart';
import 'package:toko/Widgets/chat_tile.dart';
import 'package:toko/theme/theme.dart';

class Chatpages extends StatelessWidget {
  const Chatpages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainBackgroundColor,
      body: Column(
        children: [
          _titlechat(),
          Expanded(
              child: ListView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            children: const [
              Chat(),
            ],
          ))
        ],
      ),
    );
  }

  Expanded _emptyChat() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/icons/Headset.png", width: 80, height: 80),
          const Padding(padding: EdgeInsets.only(top: 20)),
          Column(
            children: [
              Text(
                "Oops no message yet?",
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semibold,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                "You have never done a transaction",
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
                    child: Center(
                      child: Text("Explore Store",
                          style: primaryTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semibold,
                          )),
                    )),
              )
            ],
          )
        ],
      ),
    );
  }

  AppBar _titlechat() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: BackgroundColor3,
      centerTitle: true,
      title: Text(
        "Message Support",
        style: primaryTextStyle.copyWith(
          fontSize: 18,
          fontWeight: semibold,
        ),
      ),
    );
  }
}
