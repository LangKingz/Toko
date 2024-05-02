import 'package:flutter/material.dart';
import 'package:toko/theme/theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215,
      height: 278,
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: const Color(0xffECEDEF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Image.asset(
              "assets/sepatu/1.png",
              width: 215,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hiking",
                  style: secondaryTextStyle,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'Ultra X 3 GTX WIDE - Men\'s Hiking Shoes',
                  style: titleTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'Rp. 1.200.000',
                  style: priceTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semibold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
