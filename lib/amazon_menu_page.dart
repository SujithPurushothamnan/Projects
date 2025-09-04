import 'package:flutter/material.dart';
import 'package:sujith/amazon_login_page.dart';
import 'package:sujith/amazon_profile_page.dart';
import 'package:sujith/cart_page.dart';

class AmazonMenuPage extends StatelessWidget {
  const AmazonMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text("Menu"),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.cyan),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, color: Colors.cyan, size: 30),
                  ),
                  SizedBox(width: 15),
                  Text(
                    "Hello, Sujith",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text("Your Account"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const AmazonProfilePage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: const Text("Your Orders"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text("Wishlist"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const CartPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text("Notifications"),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text(
                "Sign Out",
                style: TextStyle(color: Colors.red),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const AmazonLoginPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          "Welcome to Amazon Menu Page",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
