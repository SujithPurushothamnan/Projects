import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class prime extends StatefulWidget {
  const prime({super.key});

  @override
  State<prime> createState() => _primeState();
}

class _primeState extends State<prime> {
  @override
  List slide = [
    "assets/flask1.jpg",
    "assets/f2.jpg",
    "assets/f3.jpg",
  ];
  int currentIndex = 0;
  List popular = [
    "assets/mb.jpg",
    "assets/mx.jpg",
    "assets/pc.jpg",
    "assets/el.jpg",
    "assets/cb.jpg",
    "assets/hm.jpg",
    "assets/tr.jpg",
    "assets/mb.jpg",
    "assets/pc.jpg",
    "assets/el.jpg",
    "assets/cb.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.black,
              expandedHeight: 555,
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  children: [
// prime and profile logo
                    Row(
                      children: [
                        Container(
                          child: Image.asset(
                            "assets/primelogo.jpg",
                            height: 125,
                            width: 125,
                          ),
                        ),
                        const SizedBox(
                          width: 170,
                        ),
                        Container(
                          child: const Icon(
                            Icons.connected_tv_sharp,
                            color: Colors.white70,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        const Icon(
                          Icons.person_pin,
                          color: Colors.blue,
                          size: 35,
                        ),
                      ],
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
//movies, tv shows and live tv
                              GestureDetector(
                                child: Container(
                                  height: 35,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white24,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    "Movies",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  )),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 35,
                                width: 80,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white24,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Center(
                                    child: Text(
                                  "TV shows",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                )),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 35,
                                width: 80,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white24,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Center(
                                    child: Text(
                                  "Live T V",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

//sliding image
                    CarouselSlider.builder(
                      options: CarouselOptions(
                        height: 345,
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
                        // SizedBox(height: 90,);
                        return Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 300,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(slide[index]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
//dot indication for sliding image
                    Container(
                      child: Center(
                        child: DotsIndicator(
                          decorator: const DotsDecorator(
                            size: Size.square(8.0), // Size of inactive dots
                            activeSize: Size(12.0, 12.0), // Size of active dot
                            color: Colors.white24, // Inactive dot color
                            activeColor: Colors.white, // Active dot color
                          ),
                          dotsCount: slide.length, //3
                          position: currentIndex
                              .toDouble(), // Ensure this is a double
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 40,
                  ),
                  const Text(
                    "Watch for free - Most popular shows",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    child: const Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.white,
                      size: 10,
                    ),
                  ),
                ],
              ),
//1st list most popular shows

              SizedBox(
                height: 200,
// color: Colors.red,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal, // Horizontal scrolling
                  itemCount: popular.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          // SizedBox(width: 60,),
                          Container(
                            height: 150,
                            width: 250, // Set width for each item
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(
                                  popular[index],
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "Watch in  Your Lanuage",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  // Container(child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 10,),),
                ],
              ),
//2st list most popular shows
              SizedBox(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal, // Horizontal scrolling
                  itemCount: popular.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            width: 250, // Set width for each item
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(
                                  popular[index],
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
