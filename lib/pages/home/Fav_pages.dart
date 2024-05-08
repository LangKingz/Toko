import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toko/theme/theme.dart';

class FavPages extends StatelessWidget {
  const FavPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainBackgroundColor,
      appBar: _header(),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Emptycard()
          content(),
        ],
      ),
    );
  }

  Expanded emptycard() {
    return Expanded(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icons/Love.png',
            width: 85,
            height: 85,
          ),
          const SizedBox(height: 23),
          Text(
            " You don't have dream shoes?",
            style: GoogleFonts.poppins(
                color: PrimaryTextColor, fontSize: 16, fontWeight: medium),
          ),
          const SizedBox(height: 12),
          Text(
            'Let\'s find your favorite shoes',
            style: GoogleFonts.poppins(
                color: SecondaryTextColor, fontSize: 14, fontWeight: light),
          ),
          const SizedBox(height: 20),
          Container(
            width: 155,
            height: 45,
            decoration: BoxDecoration(
              color: PrimaryColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  'Explore Now',
                  style: GoogleFonts.poppins(
                      color: PrimaryTextColor,
                      fontSize: 16,
                      fontWeight: medium),
                )),
          )
        ],
      ),
    ));
  }

  Column card() {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: MainBackgroundColor,
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/sepatu/1.png',
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Terrex Urban Low',
                        style: primaryTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semibold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Rp. 1.200.000',
                        style: priceTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semibold,
                        ),
                      )
                    ],
                  ),
                ),
                Image.asset(
                  'assets/icons/Love_Active.png',
                  width: 35,
                  height: 35,
                  fit: BoxFit.cover,
                )
              ],
            ))
      ],
    );
  }

  Expanded content() {
    return Expanded(
      child: Container(
        child: ListView(children: [
          card(),
          card(),
        ]),
      ),
    );
  }

  PreferredSize _header() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(80),
      child: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: BackgroundColor3,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Favorite Shoes',
          style: GoogleFonts.poppins(
              color: PrimaryTextColor, fontSize: 20, fontWeight: medium),
        ),
      ),
    );
  }
}
