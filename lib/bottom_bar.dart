import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sujith/amazon_home_page.dart';
import 'package:sujith/amazon_menu_page.dart';
import 'package:sujith/amazon_product_page.dart';
import 'package:sujith/amazon_profile_page.dart';
import 'package:sujith/bot.dart';
import 'package:sujith/cart_page.dart';
import 'package:sujith/cart_provider.dart';

class BottomBar extends StatefulWidget {
  final int index;
  const BottomBar({super.key, this.index = 0});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  late int _index;

  final pages = [
    const HomePage(),
    const AmazonProfilePage(),
    const CartPage(),
    const AmazonMenuPage(),
    const Bot(),
    const AmazonPP(),
  ];

  @override
  void initState() {
    super.initState();
    _index = widget.index;
  }

  void tap(index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    int cartCount = Provider.of<CartProvider>(context).cartCount;

    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: tap,
        selectedItemColor: Colors.cyanAccent,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_sharp),
            label: "Home",
            backgroundColor: Colors.black,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined),
            label: "You",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                const Icon(Icons.add_shopping_cart),
                if (cartCount > 0)
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      constraints: const BoxConstraints(
                        minWidth: 20,
                        minHeight: 20,
                      ),
                      child: Text(
                        '$cartCount',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
              ],
            ),
            label: "Cart",
            backgroundColor: Colors.black,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "Menu",
            backgroundColor: Colors.black,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.animation_rounded),
            label: "Rufus",
            backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
