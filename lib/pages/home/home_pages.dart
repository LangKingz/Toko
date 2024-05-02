import 'package:flutter/material.dart';
import 'package:toko/Widgets/Arrivals.dart';
import 'package:toko/Widgets/Product.dart';
import 'package:toko/theme/theme.dart';
// import 'package:toko/models/category.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _header(),
        _category(),
        _popularHeader(),
        _popularItem(),
        _ArrivalTitle(),
        _arrivalItems(),
      ],
    );
  }

  Container _arrivalItems() {
    return Container(
      margin: const EdgeInsets.only(top: 14, bottom: 30),
      child: const Column(
        children: [
          ArrivalItems(),
          ArrivalItems(),
          ArrivalItems(),
          ArrivalItems(),
          ArrivalItems(),
        ],
      ),
    );
  }

  Container _ArrivalTitle() {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin),
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      child: Text("New Arrivals",
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semibold,
          )),
    );
  }

  Container _popularItem() {
    return Container(
      margin: const EdgeInsets.only(top: 14),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: defaultMargin,
            ),
            const Row(
              children: [
                ProductCard(),
                ProductCard(),
                ProductCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container _popularHeader() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      child: Text(
        "Popular Products",
        style: primaryTextStyle.copyWith(
          fontSize: 22,
          fontWeight: semibold,
        ),
      ),
    );
  }

  Container _category() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 16, left: 30),
              decoration: BoxDecoration(
                color: PrimaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Text(
                'All Shoes',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semibold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                color: TransparentColor,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: BackgroundColor2,
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Text(
                'Running',
                style: subTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: regular,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                color: TransparentColor,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: BackgroundColor2,
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Text(
                'Training',
                style: subTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: regular,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                color: TransparentColor,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: BackgroundColor2,
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Text(
                'Basketball',
                style: subTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: regular,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                color: TransparentColor,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: BackgroundColor2,
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Text(
                'Hikking',
                style: subTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: regular,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _header() {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hallo, Gilang",
                  style: primaryTextStyle.copyWith(
                      fontSize: 24, fontWeight: semibold),
                ),
                Text("@Gilang129021290",
                    style: subTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: regular,
                    )),
              ],
            ),
          ),
          Column(
            children: [
              Image.asset(
                "assets/images/Image_profil.png",
                width: 58,
                height: 58,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
