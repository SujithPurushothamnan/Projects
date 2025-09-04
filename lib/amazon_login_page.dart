import 'package:flutter/material.dart';
import 'package:sujith/bottom_bar.dart';
import 'package:sujith/login_api.dart';


class AmazonLoginPage extends StatefulWidget {
  const AmazonLoginPage({super.key});

  @override
  State<AmazonLoginPage> createState() => _AmazonLoginPageState();
}

class _AmazonLoginPageState extends State<AmazonLoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final apiService = ApiService();
  bool isLoading = false;

  void login() async {
    setState(() {
      isLoading = true;
    });

    try {
      final result = await apiService.login(
        emailController.text,
        passwordController.text,
      );

      final token = result["access_token"] ?? result["access_token"]?["token"];

      if (token != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Login success! Welcome ${result["user"]["name"]}")),
        );

        
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const BottomBar()),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Please fill all fields")),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error: $e")),
      );
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        elevation: 0,
        title: const Text(
          'Amazon',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Sign-In',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text('Email or mobile phone number'),
            const SizedBox(height: 8),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter email or phone',
              ),
            ),
            const SizedBox(height: 20),
            const Text('Password'),
            const SizedBox(height: 8),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter password',
              ),
            ),
            const SizedBox(height: 20),
            isLoading
                ? const Center(child: CircularProgressIndicator())
                : ElevatedButton(
                    onPressed: login,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      minimumSize: const Size.fromHeight(50),
                    ),
                    child: const Text("Continue"),
                  ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Expanded(child: Divider()),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('New to Amazon?'),
                ),
                Expanded(child: Divider()),
              ],
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                // navigate to create account
              },
              style: OutlinedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
              ),
              child: const Text("Create your Amazon account"),
            ),
          ],
        ),
      ),
    );
  }
}
