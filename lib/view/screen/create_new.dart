import 'package:amazon_ui/bottom_bar.dart';
// ignore: unused_import
import 'package:amazon_ui/view/screen/hotstar_login.dart';
import 'package:amazon_ui/view/screen/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateNew extends StatefulWidget {
  const CreateNew({super.key});

  @override
  State<CreateNew> createState() => _CreateNewState();
}

class _CreateNewState extends State<CreateNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Text(
            "Create Account",
            style: GoogleFonts.poppins(
              fontSize: 32,
              color: const Color(0xFF3251c0),
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Create an account so you can explore all the\nexisting jobs ",
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          // SizedBox(
          //   height: 50,
          // ),
          Spacer(),
//email
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  filled: true,
                  fillColor: const Color.fromARGB(255, 218, 224, 247),
                  // enabledBorder: InputBorder.none,
                  // OutlineInputBorder(
                  //     borderRadius: BorderRadius.circular(8.0)),
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(8.0), // Makes it circular
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color(0xFF3251c0), width: 2), // On focus
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )),
          const SizedBox(
            height: 5,
          ),
//pass
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  filled: true,
                  fillColor: const Color.fromARGB(255, 218, 224, 247),
                  // enabledBorder: InputBorder.none,
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(8.0), // Makes it circular
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color(0xFF3251c0), width: 2), // On focus
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )),
//Confirm Pass
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  filled: true,
                  fillColor: const Color.fromARGB(255, 218, 224, 247),
                  // enabledBorder: InputBorder.none,
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(8.0), // Makes it circular
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color(0xFF3251c0), width: 2), // On focus
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )),
          const SizedBox(
            height: 30,
          ),

//sign up button
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => SignInPage()),
                  );
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
            ],
          ),
          const SizedBox(
            height: 30,
          ),
//Already have acc
          InkWell(
            splashColor: Color(0xFF1f41ba),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignInPage()),
              );
            },
            child: Text(
              "Already have an account",
              style: GoogleFonts.poppins(
                  fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),

          const Spacer(),
          Text(
            "or continue with",
            style: GoogleFonts.poppins(
                color: const Color(0xFF3251c0), fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 20,
          ),
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
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomBar(),
                        ));
                  },
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
          const SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}
