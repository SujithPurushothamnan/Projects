import 'package:amazon_ui/buttom_custom.dart';
import 'package:amazon_ui/view/lists_custom.dart';

import 'package:amazon_ui/view/widget/list_custom.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HotstarSparks extends StatefulWidget {
  const HotstarSparks({super.key});

  @override
  State<HotstarSparks> createState() => _HotstarSparksState();
}

class _HotstarSparksState extends State<HotstarSparks> {
  final slide = [
    Image.asset(
      "assets/images/m7.jpeg",
      height: 250,
      width: double.infinity,
      fit: BoxFit.fill,
    ),
    Image.asset(
      "assets/images/m11.jpeg",
      height: 250,
      width: double.infinity,
      fit: BoxFit.fill,
    ),
    Image.asset(
      "assets/images/m15.jpeg",
      height: 250,
      width: double.infinity,
      fit: BoxFit.fill,
    ),
  ];
  // final List<Widget> slides = [
  //   Image.asset("assets/images/m1.jpeg"),
  //   Image.asset("assets/images/m2.jpeg"),
  //   Image.asset("assets/images/m3.jpeg"),
  //   Image.asset("assets/images/m4.jpeg"),
  //   Image.asset("assets/images/m5.jpeg"),
  //   Image.asset("assets/images/m6.jpeg"),
  //   Image.asset("assets/images/m7.jpeg"),
  //   Image.asset("assets/images/m8.jpeg"),
  //   Image.asset("assets/images/m9.jpeg"),
  //   Image.asset("assets/images/m10.jpeg"),
  //   Image.asset("assets/images/m11.jpeg"),
  //   Image.asset("assets/images/m12.jpeg"),
  //   Image.asset("assets/images/m13.jpeg"),
  //   Image.asset("assets/images/m14.jpeg"),
  //   Image.asset("assets/images/m15.jpeg"),
  //   Image.asset("assets/images/m16.jpeg"),
  //   Image.asset("assets/images/m17.jpeg"),
  // ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Spacer(
              flex: 3,
            ),
            Text(
              "Hotstar",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 32,
                color: Colors.white,
              ),
            ),
            Icon(
              Icons.star_border_outlined,
              color: Colors.yellow,
              size: 50,
            ),
            Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,

      // appBar: AppBar(),
      body: ListView(
        children: [
          SizedBox(
            // height: 300,
            width: 412,
            child: CarouselSlider(
              options: CarouselOptions(
                  autoPlay: true,
                  height: 300,
                  aspectRatio: 16 / 9,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  }),
              items: slide,
              // itemCount: slide.length,
              // itemBuilder: (BuildContext context, int index, int realIndex) {
              //   return Container();
              // },
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ButtonCustom(),
          Center(
            child: DotsIndicator(
              decorator: DotsDecorator(
                size: const Size.square(4.0),
                activeSize: const Size(8.0, 8.0),
                color: Colors.grey.withOpacity(0.5),
                activeColor: Colors.white,
              ),
              dotsCount: slide.length,
              position: currentIndex.toDouble(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 4, 0, 4),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Latest Releases",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          ListCustom(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 4, 0, 4),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Drama Movies",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          ListCustom(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 4, 0, 4),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Popular",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          ListCustom(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 4, 0, 4),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Top Rated",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          ListCustom(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 4, 0, 4),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Hit Movies",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          ListsCustom(),
        ],
      ),
    );
  }
}
