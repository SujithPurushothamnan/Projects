import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sujith/amazon_listview.dart';
import 'package:sujith/cart_provider.dart';

class AmazonPP extends StatefulWidget {
  const AmazonPP({super.key});

  @override
  State<AmazonPP> createState() => _AmazonPPState();
}

class _AmazonPPState extends State<AmazonPP> {
  final List<int> quantities = List<int>.generate(10, (index) => index + 1);


  int selectedQuantity = 1;
  List slide = [
    "assets/flask1.jpg",
    "assets/f2.jpg",
    "assets/f3.jpg",
  ];
  int align = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      
        title: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon:
                    IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                suffixIcon: Row(
                  mainAxisSize:
                      MainAxisSize.min, 
                  children: [
                    IconButton(
                      icon: Icon(Icons.camera_alt_outlined,
                          color: Colors.grey), 
                      onPressed: () {
                       
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.mic_none_rounded,
                        color: Colors.grey,
                      ), 
                      onPressed: () {
                       
                      },
                    ),
                  ],
                ),
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
              height: 550,
              width: 400,
              child: Column(
                children: [
                  CarouselSlider.builder(
                    options: CarouselOptions(
                        height: 450,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            align = index;
                          });
                        }),
                    itemCount: slide.length,
                    itemBuilder:
                        (BuildContext context, int index, int realIndex) {
                      return Container(
                        clipBehavior: Clip.antiAlias,
                        height: 400,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(10),
                          // color: Colors.yellow,
                          image: DecorationImage(
                            image: AssetImage(slide[index]),
                            fit: BoxFit.fill,
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 170,
                      ),
                      DotsIndicator(
                        dotsCount: slide.length,
                        position: align.toDouble(),
                      ),
                      Spacer(),
                      Icon(CupertinoIcons.heart),
                      Spacer(),
                      Icon(Icons.share),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 5,
            ),
            //rating and kratos column 2nd column
            Column(
              children: [
                Row(
                  children: [
                    // SizedBox(width: 255,),
                    //Kratos container 2nd column 1st row
                    Container(
                      child: Icon(Icons.logo_dev_outlined),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text(
                        "Kratos \nVisit the store",
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    //
                    Spacer(
                      flex: 1,
                    ),
                    Text("3.8"),
                    Container(
                      child: RatingBar.builder(
                        initialRating: 3,
                        minRating: 0, 
                        direction: Axis.horizontal,
                        allowHalfRating: true, 
                        itemCount: 5, 
                        itemSize: 18,
                        itemPadding: EdgeInsets.symmetric(
                            horizontal: 1.0), 
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ),
                    Text("(581)"),
                  ],
                )
              ],
            ),
            Column(
              children: [
                Text(
                  "Kratos Type C Earphone with 13 mm Driver, Tangle Free 1.2 \n"
                  "Mtr Nylon Braided Wire, in-Line Volume Controller, Ultra \n"
                  "Light C Type Earphones Compatible with Oneplus, Samsung,\n"
                  "Oppo, Vivo, Redmi. ",
                  style: TextStyle(fontSize: 14),
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 30,
                      width: 14,
                    ),
                    Container(
                        child: Text(
                      "1K+ bought",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                        child: Text(
                      "in past month",
                    )),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 30,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all()),
                      child: Center(
                          child: Text(
                        "Limeted time deal",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text(
                        "-72%",
                        style: TextStyle(color: Colors.redAccent, fontSize: 32),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Icon(
                            Icons.currency_rupee,
                          ),
                        ),
                        Text(
                          "279",
                          style: TextStyle(fontSize: 32),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(child: Text("M.R.P.:")),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      child: Text(
                        "₹999",
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text("Get up to ₹27 back with"),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(child: Icon(Icons.diamond_outlined)),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      child: Text(
                        "270 Diamonds",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text(
                        "Total:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      child: Text(
                        "₹279",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Text("Free delivery",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 16)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          child: Text("Tuesday, 24 December",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          child: Text(
                            "on orders",
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Text("dispatched by Amazon over ₹499."),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              child: Text("Details",
                                  style: TextStyle(color: Colors.blue)),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      child: Text("Or fastest delivery"),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      child: Text(
                        "Tuesday, 24 December.",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Container(
                      child: Text("Order"),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Text("within"),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          child: Text(
                            "3 hrs 26 mins.",
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          child: Text(
                            "Details",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Icon(CupertinoIcons.location_solid),
                    ),
                    Container(
                      child: Text(
                        "Deliver to Sujith _ Ammapettai ... 614401",
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      child: Text(
                        "In stock",
                        style: TextStyle(color: Colors.green, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            //Quantity column
            // Column(
            //   children: [
            //     Row(
            //       children: [
            //         Container(
            //
            //
            //         ),
            //       ],
            //     ),
            //   ],
            // ),
            Column(
              children: [
                Container(
                  width: 400,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<int>(
                      value: selectedQuantity, 
                      icon: Icon(Icons.arrow_drop_down_circle_outlined,
                          color: Colors.black),
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      onChanged: (int? newValue) {
                        setState(() {
                          selectedQuantity =
                              newValue!;
                        });
                      },
                      items: quantities.map((int quantity) {
                        return DropdownMenuItem<int>(
                          value: quantity,
                          child: Text(
                              "Qty: $quantity"), 
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  children: [
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        Provider.of<CartProvider>(context, listen: false).addItem(
                            "Product Sucessfully Added"); 
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black87,
                        backgroundColor: Colors.yellow[600],
                        minimumSize: const Size(350, 50),
                        elevation: 5,
                      ),
                      child: const Text(
                        "Add to Cart",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Row(
                  children: [
                    const Spacer(),
                    ElevatedButton(
                        onPressed: () {
                          print("pressed");
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black87,
                          backgroundColor: Colors.yellow[800],
                          minimumSize:
                              Size(350, 50), 
                          elevation: 5, 
                        ),
                        child: Text(
                          "Buy Now",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )),
                    Spacer(),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 2, 
              width: double.infinity,
              color: Colors.black26, 
            ),

            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  "Recommended for You",
                  style: GoogleFonts.poppins(
                      fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            AmazonListView(),
          ],
        ),
      ),
    );
  }
}
