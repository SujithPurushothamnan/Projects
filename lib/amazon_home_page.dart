

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:sujith/amazon_listview.dart';
import 'package:sujith/amazon_product_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List slide = [
    "assets/flask1.jpg",
    "assets/iph.jpg",
    "assets/fp.jpeg",
  ];

  final List<Widget> items = [
    Image.asset("assets/mb.jpg", fit: BoxFit.fill),
    Image.asset("assets/c.png", fit: BoxFit.fill),
    Image.asset("assets/cb.jpg", fit: BoxFit.fill),
    Image.asset("assets/mx.jpg", fit: BoxFit.fill),
    Image.asset("assets/el.jpg", fit: BoxFit.fill),
    Image.asset("assets/hm.jpg", fit: BoxFit.fill),
    Image.asset("assets/tr.jpg", fit: BoxFit.fill),
    Image.asset("assets/pc.jpg", fit: BoxFit.fill),
    const Icon(Icons.donut_large_sharp),
  ];

  List itemname = [
    "Mobiles",
    "Rewards",
    "Bazaar",
    "MX Player",
    "Electronics",
    "Home",
    "Travels",
    "Movies",
    "More",
  ];

  int currentIndex = 0;
  String? userName;

  @override
  void initState() {
    super.initState();
    _loadUserName();
  }

  Future<void> _loadUserName() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      userName = prefs.getString("user_name") ?? "Guest";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              suffixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.camera_alt_outlined,
                        color: Colors.grey),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon:
                        const Icon(Icons.mic_none_rounded, color: Colors.grey),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: <Color>[Colors.cyanAccent, Colors.cyan]),
          ),
        ),
        actions: const [Icon(Icons.qr_code_scanner_sharp)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
          
            Container(
              height: 40,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    colors: <Color>[
                      Color(0xFF138efb),
                      Color(0xFFe40268),
                    ]),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  const Icon(CupertinoIcons.location_solid),
                  Center(
                    child: Text(
                      "Deliver to ${userName ?? ''} ... 614401",
                      style:
                          const TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  const Icon(CupertinoIcons.chevron_down, size: 15),
                ],
              ),
            ),

         
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(height: 60, width: 60, child: items[index]),
                        Text(itemname[index]),
                      ],
                    ),
                  );
                },
              ),
            ),

          
            Stack(
              children: [
                CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 450,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: const Duration(seconds: 1),
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                  itemCount: slide.length,
                  itemBuilder:
                      (BuildContext context, int index, int realIndex) {
                    final imageWidget = Container(
                      width: double.infinity,
                      height: 500,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(slide[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );

                  
                    if (index == 0) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AmazonPP(),
                            ),
                          );
                        },
                        child: imageWidget,
                      );
                    } else {
                      return imageWidget;
                    }
                  },
                ),
              ],
            ),

            const SizedBox(height: 10),

           
            Center(
              child: DotsIndicator(
                decorator: DotsDecorator(
                  size: const Size.square(8.0),
                  activeSize: const Size(12.0, 12.0),
                  color: Colors.black.withOpacity(0.5),
                  activeColor: Colors.red.shade300,
                ),
                dotsCount: slide.length,
                position: currentIndex.toDouble(),
              ),
            ),

            const SizedBox(height: 20),

           
            Row(
              children: [
                Text(
                  "Products",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                ),
              ],
            ),

          
            AmazonListView(),
          ],
        ),
      ),
    );
  }
}
