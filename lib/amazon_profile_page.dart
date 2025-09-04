import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sujith/amazon_login_page.dart';

class AmazonProfilePage extends StatefulWidget {
  const AmazonProfilePage({super.key});

  @override
  State<AmazonProfilePage> createState() => _AmazonProfilePageState();
}

class _AmazonProfilePageState extends State<AmazonProfilePage> {
  String? userName;
  String? userEmail;

  @override
  void initState() {
    super.initState();
    _loadUserDetails();
  }

  Future<void> _loadUserDetails() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      userName = prefs.getString("user[name]") ?? "Guest";
      userEmail = prefs.getString("user[email]") ?? "guest@example.com";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Account"),
        backgroundColor: Colors.cyan,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.cyan[100],
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.cyan,
                    child: Icon(Icons.person, size: 30, color: Colors.white),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userName ?? "Guest",
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(userEmail ?? "guest@example.com"),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: const Icon(Icons.shopping_bag),
              title: const Text("Your Orders"),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Account Settings"),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.location_on),
              title: const Text("Your Addresses"),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.payment),
              title: const Text("Payment Methods"),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),
            const Divider(thickness: 1),
            ListTile(
              leading: const Icon(Icons.help_outline),
              title: const Text("Help & Customer Service"),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text(
                "Sign Out",
                style: TextStyle(color: Colors.red),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AmazonLoginPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
