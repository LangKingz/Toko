// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:toko/Widgets/chat_bubble.dart';
import 'package:toko/theme/theme.dart';

class DetailChatpages extends StatelessWidget {
  const DetailChatpages({super.key});

  Widget content() {
    return ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: const [
          ChatBubbles(
            isSender: true,
            text: 'Hi, Apakah Masih ada?',
          ),
          ChatBubbles(
            isSender: false,
            text: 'Masih',
          ),
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor3,
      appBar: _header(context),
      body: content(),
      bottomNavigationBar: _chatInput(),
    );
  }

  Container _chatInput() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _products(),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff252836),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  height: 45,
                  child: Center(
                    child: TextFormField(
                      style: primaryTextStyle.copyWith(fontSize: 14),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Type message...",
                        hintStyle: subTextStyle,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Container(
                width: 45,
                height: 40,
                decoration: BoxDecoration(
                  color: PrimaryColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.send,
                    color: PrimaryTextColor,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Container _products() {
    return Container(
      width: 225,
      height: 74,
      decoration: BoxDecoration(
        color: BackgroundColor5,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: PrimaryColor, width: 2),
      ),
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              "assets/sepatu/1.png",
              width: 54,
              height: 54,
              fit: BoxFit.cover,
            ),
          ),
          const Padding(padding: EdgeInsets.only(left: 10)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Shoes Black",
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semibold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const Padding(padding: EdgeInsets.only(top: 2)),
                Text(
                  "IDR 280.000",
                  style: priceTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: regular,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10),
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: PrimaryColor,
            ),
            child: GestureDetector(
              onTap: () {},
              child: Center(
                child: Icon(
                  Icons.close,
                  color: PrimaryTextColor,
                  size: 15,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  PreferredSize _header(BuildContext context) {
    return PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          title: Row(
            children: [
              Stack(
                children: [
                  Image.asset('assets/images/Image_profil.png',
                      width: 45, height: 45),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: OfflineColor,
                        border:
                            Border.all(color: MainBackgroundColor, width: 2),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Shayna Melinda",
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semibold,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(padding: const EdgeInsets.only(top: 6)),
                  Text(
                    "Online",
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              )
            ],
          ),
          backgroundColor: MainBackgroundColor,
          leading: IconButton(
            icon: Icon(Icons.navigate_before),
            color: PrimaryTextColor,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ));
  }
}
