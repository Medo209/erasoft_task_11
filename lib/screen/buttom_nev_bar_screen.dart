import 'package:flutter/material.dart';
import 'package:login_task/screen/explore_screen.dart';
import 'package:login_task/screen/shop_screen.dart';

class ButtomNevBarScreen extends StatefulWidget {
  const ButtomNevBarScreen({super.key});

  @override
  State<ButtomNevBarScreen> createState() => _ButtomNevBarScreenState();
}

int currentIndex = 0;

List<Widget> screen = [ShopScreen(), ExploreScreen()];

class _ButtomNevBarScreenState extends State<ButtomNevBarScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: screen[currentIndex]),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Color(0xff53B175),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xffFFFFFF),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront_outlined),
            label: 'shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search_outlined),
            label: 'explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: 'profile',
          ),
        ],
      ),
    );
  }
}
