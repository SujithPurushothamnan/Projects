import 'package:amazon_ui/bottom_bar.dart';
import 'package:amazon_ui/view/screen/create_new.dart';
// ignore: unused_import
import 'package:amazon_ui/view/screen/hotstar_home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            const Spacer(flex: 2),
            Text(
              "Login here",
              style: GoogleFonts.poppins(
                fontSize: 32,
                color: const Color(0xFF3251c0),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Text(
              "Welcome back you've\nbeen missed!",
              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 6, 18, 12),
              child: TextFormField(
                controller: _emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  const pattern = r'^[^@]+@[^@]+\.[^@]+$';
                  final regExp = RegExp(pattern);
                  if (!regExp.hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Email',
                  filled: true,
                  fillColor: const Color.fromARGB(255, 218, 224, 247),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xFF3251c0), width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 6, 18, 12),
              child: TextFormField(
                controller: _passwordController,
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Password',
                  filled: true,
                  fillColor: const Color.fromARGB(255, 218, 224, 247),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xFF3251c0), width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forget Password?",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF3251c0)),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
            ),
            const Spacer(flex: 1),
            GestureDetector(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomBar(),
                    ),
                  );
                }
              },
              child: Container(
                height: 60,
                width: 360,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF138efb), Color(0xFFe40268)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Sign in",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => CreateNew()),
                );
              },
              child: Text(
                "Create new account",
                style: GoogleFonts.poppins(
                    fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            const Spacer(),
            Text(
              "or continue with",
              style: GoogleFonts.poppins(
                  color: const Color(0xFF3251c0), fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Spacer(flex: 10),
                Container(
                  clipBehavior: Clip.none,
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(
                      // color: Colors.yellowAccent,
                      borderRadius: BorderRadius.circular(8.0)),
                  child: GestureDetector(
                    child: Image(
                      image: AssetImage(
                        "assets/images/google.png",
                      ),
                      height: 55,
                      width: 55,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(width: 4),
                Container(
                  height: 35,
                  width: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 227, 229, 235),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Icon(
                    Icons.facebook_outlined,
                    size: 25,
                  ),
                ),
                const SizedBox(width: 7),
                Container(
                  height: 35,
                  width: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 227, 229, 235),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Icon(
                    Icons.apple_outlined,
                    size: 25,
                  ),
                ),
                const Spacer(flex: 10),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "or Skip login(only for developers)",
              style: GoogleFonts.poppins(
                  color: const Color(0xFF3251c0),
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomBar(),
                    ));
              },
              child: Container(
                height: 35,
                width: 50,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 227, 229, 235),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Icon(
                  Icons.android_outlined,
                  size: 34,
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
