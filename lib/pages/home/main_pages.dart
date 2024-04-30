// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:toko/pages/home/chat_pages.dart';
import 'package:toko/pages/home/home_pages.dart';
import 'package:toko/pages/home/profil_pages.dart';
import 'package:toko/pages/home/wish_pages.dart';
import 'package:toko/theme/theme.dart';

class Mainpages extends StatefulWidget {
  const Mainpages({super.key});

  @override
  State<Mainpages> createState() => _MainpagesState();
}

class _MainpagesState extends State<Mainpages> {
  // ignore: non_constant_identifier_names
  int CurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainBackgroundColor,
      floatingActionButton: floatbutton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(20),
        ),
        child: BottomAppBar(
          elevation: 0,
          shape: const CircularNotchedRectangle(),
          clipBehavior: Clip.antiAlias,
          notchMargin: 10,
          color: BackgroundColor4,
          child: BottomNavigationBar(
            elevation: 0,
            currentIndex: CurrentIndex,
            onTap: (index) {
              setState(() {
                // print(index);
                CurrentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/Home.png',
                    width: 20,
                    height: 20,
                    color: CurrentIndex == 0 ? PrimaryColor : IconColor,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/icons/chat.png",
                    width: 20,
                    height: 20,
                    color: CurrentIndex == 1 ? PrimaryColor : IconColor,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/icons/Like_icon.png",
                    width: 20,
                    height: 20,
                    color: CurrentIndex == 2 ? PrimaryColor : IconColor,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/Profil_icon.png',
                    width: 20,
                    height: 20,
                    color: CurrentIndex == 3 ? PrimaryColor : IconColor,
                  ),
                  label: ''),
            ],
            backgroundColor: BackgroundColor4,
            type: BottomNavigationBarType.fixed,
          ),
        ),
      ),
      body: Center(
        child: body(),
      ),
    );
  }

  Widget body() {
    switch (CurrentIndex) {
      case 0:
        return const Homepage();
      case 1:
        return const Chatpages();
      case 2:
        return const Wishpages();
      case 3:
        return const Profilpages();
      default:
        return const Homepage();
    }
  }

  FloatingActionButton floatbutton() {
    return FloatingActionButton(
      shape: const CircleBorder(),
      onPressed: () {},
      child: Image.asset(
        'assets/icons/Floating_icon.png',
        width: 20,
        height: 20,
      ),
      backgroundColor: SecondaryColor,
    );
  }
}
