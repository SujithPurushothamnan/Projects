import 'package:amazon_ui/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HotstarDownloads extends StatefulWidget {
  const HotstarDownloads({super.key});

  @override
  State<HotstarDownloads> createState() => _HotstarDownloadsState();
}

class _HotstarDownloadsState extends State<HotstarDownloads> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Text(
          "Downloads",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 150,
            color: Colors.black,
            clipBehavior: Clip.none,
            child: Image.asset(
              "assets/images/openbox.jpg",
              opacity: AlwaysStoppedAnimation(0.2),
              // scale: 10,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "No Downloads Available",
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Spacer(),
              Text(
                "Explore and downlods your favourites movies and\nshows to watch on the go",
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  color: Colors.white38,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              Spacer(),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BottomBar()));
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(300, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Text(
                "Go to Home",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              )),
        ],
      ),
    );
  }
}
