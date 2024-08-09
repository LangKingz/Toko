import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:toko/theme/theme.dart';

class Productpages extends StatefulWidget {
  const Productpages({super.key});

  @override
  State<Productpages> createState() => _ProductpagesState();
}

class _ProductpagesState extends State<Productpages> {
  @override
  Widget build(BuildContext context) {
    List images = [
      'assets/sepatu/sepatu1.png',
      'assets/sepatu/sepatu2.png',
      'assets/sepatu/sepatu3.png',
    ];

    int currentIndex = 0;

    Widget indicator(int index) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 2),
        width: currentIndex == index ? 16 : 4,
        height: 4,
        decoration: BoxDecoration(
          color: currentIndex == index ? PrimaryColor : Color(0xffc4c4c4),
          borderRadius: BorderRadius.circular(10),
        ),
      );
    }

    Widget header() {
      int index = -1;
      return Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    )),
                GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.shopping_cart,
                      color: Colors.black,
                    )),
              ],
            ),
          ),
          CarouselSlider(
              items: images
                  .map(
                    (image) => Image.asset(image,
                        width: MediaQuery.of(context).size.width,
                        height: 300,
                        fit: BoxFit.cover),
                  )
                  .toList(),
              options: CarouselOptions(
                  initialPage: 0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex == index;
                    });
                  })),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.map((e) {
              index++;
              return indicator(index);
            }).toList(),
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: Productdetail,
      body: ListView(
        children: [
          header(),
        ],
      ),
    );
  }
}
