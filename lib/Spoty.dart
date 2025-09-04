import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Spoty extends StatefulWidget {
  const Spoty({super.key});

  @override
  State<Spoty> createState() => _SpotyState();
}

class _SpotyState extends State<Spoty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: <Color>[
                  Colors.red.shade700,
                  Colors.red.shade400,
                ]),
          ),
        ),
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),

//scaffold ooda body
      body:

//nested scroll view kulla 'return' la thaan sliver app bar varanum
          Padding(
        padding: const EdgeInsets.all(0),
        child: NestedScrollView(
          headerSliverBuilder: ((BuildContext context, bool innerBoxIsScroll) {
            return [
              SliverAppBar(
                title: Container(
                  decoration: BoxDecoration(
                    color: Colors.red.shade300,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),

                actions: [
                  Container(
                    height: 45,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.red.shade300,
                    ),
                    child: const Center(
                        child: Text(
                      "Sort",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],

                expandedHeight:
                    455, //used to provide occupying space for sliver app bar

                flexibleSpace: // property ya ethuku use na 'dynamically adjusts its size and layout as the SliverAppBar expands or collapses'.
                    FlexibleSpaceBar(
                  background: //body  maari for flexible space

                      //sliver app la display aagura main container
                      Container(
                    height: 959,
                    width: 300,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: <Color>[
                            Colors.black,
                            Colors.red.shade900,
                          ]),
                    ),
                    child:

                        //gv image
                        Column(
                      children: [
                        const SizedBox(
                          height: 100,
                        ),

                        Container(
                          height: 300,
                          width: 290,
                          decoration: const BoxDecoration(
                            // border: Border.all(),
                            image: DecorationImage(
                              image: AssetImage("assets/gvp.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),

                        //gv text
                        const SizedBox(
                          height: 30,
                        ),
                        const Row(
                          children: [
                            Text(
                              "Hear out the romantic side of GV prakash",
                              style: TextStyle(color: Colors.white70),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ];
          }), //nested scroll view ooda appbar athuthan 'sliver app bar'

          //nested scroll view ooda body
          body: SingleChildScrollView(
            //main column for spotify
            child: Column(
              children: [
                //mini spotify logo with text
                Row(
                  children: [
                    // SizedBox(height: 25,),
                    Opacity(
                      opacity: 1,
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/spotify.png",
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "Made for",
                      style: TextStyle(
                          color: Colors.white70, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "  Ranger",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),

                //spotify savelist and playlist ooda timing
                Row(
                  children: [
                    const SizedBox(
                      height: 15,
                      width: 6,
                    ),
                    Container(
                      child: const Text(
                        "56,078 saves . 4h 12 min",
                        style: TextStyle(color: Colors.white54),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 10,
                ),

                //playlist logos " add, downlods, more,  shuffle and play"
                Row(
                  children: [
                    // Container(
                    //   height: 40,
                    //   width: 50,
                    // decoration: BoxDecoration(border: Border.all(),
                    // // image:DecorationImage(image: AssetImage("assets/vaathi.jpg")),
                    //
                    //
                    // ),

                    //ithula container use pannikalam and main na used to clip its child using a rounded rectangle
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "assets/vaathi.jpg",
                        height: 30,
                        width: 50,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),

                    Container(
                        child:
                            //playlist icons
                            Row(
                      children: [
                        const Icon(
                          Icons.add_circle_outline,
                          color: Colors.white54,
                          size: 27,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(
                          Icons.download_for_offline_outlined,
                          color: Colors.white54,
                          size: 27,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(
                          Icons.more_vert_outlined,
                          color: Colors.white54,
                          size: 27,
                        ),
                        const SizedBox(
                          width: 85,
                        ),
                        Icon(
                          CupertinoIcons.shuffle_thick,
                          color: Colors.green.shade600,
                          size: 27,
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Icon(
                          Icons.play_circle,
                          color: Colors.green.shade600,
                          size: 67,
                        ),
                      ],
                    )),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),

                //Songs
                Card(
                  color: Colors.black,
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(2), // Makes the image circular
                      child: Image.asset(
                        'assets/vaathi.jpg', // Replace with your image path
                        height: 50, // Adjust image size
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Icon(Icons.person,color: Colors.white,),
                    title: Container(
                        child: const Text(
                      'Vaa vaathi',
                      style: TextStyle(color: Colors.green),
                    )),
                    subtitle: const Text(
                      "G.V Prakash,Shweta Mohan",
                      style: TextStyle(color: Colors.white70),
                    ),

                    trailing: const Icon(
                      Icons.more_vert_outlined,
                      color: Colors.white70,
                    ),
                  ),
                ),
                Card(
                  color: Colors.black,
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(2), // Makes the image circular
                      child: Image.asset(
                        'assets/vaathi.jpg', // Replace with your image path
                        height: 50, // Adjust image size
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Icon(Icons.person,color: Colors.white,),
                    title: Container(
                        child: const Text(
                      'Vaa vaathi',
                      style: TextStyle(color: Colors.white),
                    )),
                    subtitle: const Text(
                      "G.V Prakash,Shweta Mohan",
                      style: TextStyle(color: Colors.white70),
                    ),

                    trailing: const Icon(
                      Icons.more_vert_outlined,
                      color: Colors.white70,
                    ),
                  ),
                ),
                Card(
                  color: Colors.black,
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(2), // Makes the image circular
                      child: Image.asset(
                        'assets/vaathi.jpg', // Replace with your image path
                        height: 50, // Adjust image size
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Icon(Icons.person,color: Colors.white,),
                    title: Container(
                        child: const Text(
                      'Vaa vaathi',
                      style: TextStyle(color: Colors.white),
                    )),
                    subtitle: const Text(
                      "G.V Prakash,Shweta Mohan",
                      style: TextStyle(color: Colors.white70),
                    ),

                    trailing: const Icon(
                      Icons.more_vert_outlined,
                      color: Colors.white70,
                    ),
                  ),
                ),
                Card(
                  color: Colors.black,
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(2), // Makes the image circular
                      child: Image.asset(
                        'assets/vaathi.jpg', // Replace with your image path
                        height: 50, // Adjust image size
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Icon(Icons.person,color: Colors.white,),
                    title: Container(
                        child: const Text(
                      'Vaa vaathi',
                      style: TextStyle(color: Colors.white),
                    )),
                    subtitle: const Text(
                      "G.V Prakash,Shweta Mohan",
                      style: TextStyle(color: Colors.white70),
                    ),

                    trailing: const Icon(
                      Icons.more_vert_outlined,
                      color: Colors.white70,
                    ),
                  ),
                ),
                Card(
                  color: Colors.black,
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(2), // Makes the image circular
                      child: Image.asset(
                        'assets/vaathi.jpg', // Replace with your image path
                        height: 50, // Adjust image size
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Icon(Icons.person,color: Colors.white,),
                    title: Container(
                        child: const Text(
                      'Vaa vaathi',
                      style: TextStyle(color: Colors.white),
                    )),
                    subtitle: const Text(
                      "G.V Prakash,Shweta Mohan",
                      style: TextStyle(color: Colors.white70),
                    ),

                    trailing: const Icon(
                      Icons.more_vert_outlined,
                      color: Colors.white70,
                    ),
                  ),
                ),
                Card(
                  color: Colors.black,
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(2), // Makes the image circular
                      child: Image.asset(
                        'assets/vaathi.jpg', // Replace with your image path
                        height: 50, // Adjust image size
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Icon(Icons.person,color: Colors.white,),
                    title: Container(
                        child: const Text(
                      'Vaa vaathi',
                      style: TextStyle(color: Colors.white),
                    )),
                    subtitle: const Text(
                      "G.V Prakash,Shweta Mohan",
                      style: TextStyle(color: Colors.white70),
                    ),

                    trailing: const Icon(
                      Icons.more_vert_outlined,
                      color: Colors.white70,
                    ),
                  ),
                ),
                Card(
                  color: Colors.black,
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(2), // Makes the image circular
                      child: Image.asset(
                        'assets/vaathi.jpg', // Replace with your image path
                        height: 50, // Adjust image size
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Icon(Icons.person,color: Colors.white,),
                    title: Container(
                        child: const Text(
                      'Vaa vaathi',
                      style: TextStyle(color: Colors.white),
                    )),
                    subtitle: const Text(
                      "G.V Prakash,Shweta Mohan",
                      style: TextStyle(color: Colors.white70),
                    ),

                    trailing: const Icon(
                      Icons.more_vert_outlined,
                      color: Colors.white70,
                    ),
                  ),
                ),
                Card(
                  color: Colors.black,
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(2), // Makes the image circular
                      child: Image.asset(
                        'assets/vaathi.jpg', // Replace with your image path
                        height: 50, // Adjust image size
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Icon(Icons.person,color: Colors.white,),
                    title: Container(
                        child: const Text(
                      'Vaa vaathi',
                      style: TextStyle(color: Colors.white),
                    )),
                    subtitle: const Text(
                      "G.V Prakash,Shweta Mohan",
                      style: TextStyle(color: Colors.white70),
                    ),

                    trailing: const Icon(
                      Icons.more_vert_outlined,
                      color: Colors.white70,
                    ),
                  ),
                ),
                Card(
                  color: Colors.black,
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(2), // Makes the image circular
                      child: Image.asset(
                        'assets/vaathi.jpg', // Replace with your image path
                        height: 50, // Adjust image size
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Icon(Icons.person,color: Colors.white,),
                    title: Container(
                        child: const Text(
                      'Vaa vaathi',
                      style: TextStyle(color: Colors.white),
                    )),
                    subtitle: const Text(
                      "G.V Prakash,Shweta Mohan",
                      style: TextStyle(color: Colors.white70),
                    ),

                    trailing: const Icon(
                      Icons.more_vert_outlined,
                      color: Colors.white70,
                    ),
                  ),
                ),
                Card(
                  color: Colors.black,
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(2), // Makes the image circular
                      child: Image.asset(
                        'assets/vaathi.jpg', // Replace with your image path
                        height: 50, // Adjust image size
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Icon(Icons.person,color: Colors.white,),
                    title: Container(
                        child: const Text(
                      'Vaa vaathi',
                      style: TextStyle(color: Colors.white),
                    )),
                    subtitle: const Text(
                      "G.V Prakash,Shweta Mohan",
                      style: TextStyle(color: Colors.white70),
                    ),

                    trailing: const Icon(
                      Icons.more_vert_outlined,
                      color: Colors.white70,
                    ),
                  ),
                ),
                Card(
                  color: Colors.black,
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(2), // Makes the image circular
                      child: Image.asset(
                        'assets/vaathi.jpg', // Replace with your image path
                        height: 50, // Adjust image size
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Icon(Icons.person,color: Colors.white,),
                    title: Container(
                        child: const Text(
                      'Vaa vaathi',
                      style: TextStyle(color: Colors.white),
                    )),
                    subtitle: const Text(
                      "G.V Prakash,Shweta Mohan",
                      style: TextStyle(color: Colors.white70),
                    ),

                    trailing: const Icon(
                      Icons.more_vert_outlined,
                      color: Colors.white70,
                    ),
                  ),
                ),
                Card(
                  color: Colors.black,
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(2), // Makes the image circular
                      child: Image.asset(
                        'assets/vaathi.jpg', // Replace with your image path
                        height: 50, // Adjust image size
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Icon(Icons.person,color: Colors.white,),
                    title: Container(
                        child: const Text(
                      'Vaa vaathi',
                      style: TextStyle(color: Colors.white),
                    )),
                    subtitle: const Text(
                      "G.V Prakash,Shweta Mohan",
                      style: TextStyle(color: Colors.white70),
                    ),

                    trailing: const Icon(
                      Icons.more_vert_outlined,
                      color: Colors.white70,
                    ),
                  ),
                ),
                Card(
                  color: Colors.black,
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(2), // Makes the image circular
                      child: Image.asset(
                        'assets/vaathi.jpg', // Replace with your image path
                        height: 50, // Adjust image size
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Icon(Icons.person,color: Colors.white,),
                    title: Container(
                        child: const Text(
                      'Vaa vaathi',
                      style: TextStyle(color: Colors.white),
                    )),
                    subtitle: const Text(
                      "G.V Prakash,Shweta Mohan",
                      style: TextStyle(color: Colors.white70),
                    ),

                    trailing: const Icon(
                      Icons.more_vert_outlined,
                      color: Colors.white70,
                    ),
                  ),
                ),
                Card(
                  color: Colors.black,
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(2), // Makes the image circular
                      child: Image.asset(
                        'assets/vaathi.jpg', // Replace with your image path
                        height: 50, // Adjust image size
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Icon(Icons.person,color: Colors.white,),
                    title: Container(
                        child: const Text(
                      'Vaa vaathi',
                      style: TextStyle(color: Colors.white),
                    )),
                    subtitle: const Text(
                      "G.V Prakash,Shweta Mohan",
                      style: TextStyle(color: Colors.white70),
                    ),

                    trailing: const Icon(
                      Icons.more_vert_outlined,
                      color: Colors.white70,
                    ),
                  ),
                ),
                Card(
                  color: Colors.black,
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(2), // Makes the image circular
                      child: Image.asset(
                        'assets/vaathi.jpg', // Replace with your image path
                        height: 50, // Adjust image size
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Icon(Icons.person,color: Colors.white,),
                    title: Container(
                        child: const Text(
                      'Vaa vaathi',
                      style: TextStyle(color: Colors.white),
                    )),
                    subtitle: const Text(
                      "G.V Prakash,Shweta Mohan",
                      style: TextStyle(color: Colors.white70),
                    ),

                    trailing: const Icon(
                      Icons.more_vert_outlined,
                      color: Colors.white70,
                    ),
                  ),
                ),
                Card(
                  color: Colors.black,
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(2), // Makes the image circular
                      child: Image.asset(
                        'assets/vaathi.jpg', // Replace with your image path
                        height: 50, // Adjust image size
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Icon(Icons.person,color: Colors.white,),
                    title: Container(
                        child: const Text(
                      'Vaa vaathi',
                      style: TextStyle(color: Colors.white),
                    )),
                    subtitle: const Text(
                      "G.V Prakash,Shweta Mohan",
                      style: TextStyle(color: Colors.white70),
                    ),

                    trailing: const Icon(
                      Icons.more_vert_outlined,
                      color: Colors.white70,
                    ),
                  ),
                ),
                Card(
                  color: Colors.black,
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(2), // Makes the image circular
                      child: Image.asset(
                        'assets/vaathi.jpg', // Replace with your image path
                        height: 50, // Adjust image size
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Icon(Icons.person,color: Colors.white,),
                    title: Container(
                        child: const Text(
                      'Vaa vaathi',
                      style: TextStyle(color: Colors.white),
                    )),
                    subtitle: const Text(
                      "G.V Prakash,Shweta Mohan",
                      style: TextStyle(color: Colors.white70),
                    ),

                    trailing: const Icon(
                      Icons.more_vert_outlined,
                      color: Colors.white70,
                    ),
                  ),
                ),
                Card(
                  color: Colors.black,
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(2), // Makes the image circular
                      child: Image.asset(
                        'assets/vaathi.jpg', // Replace with your image path
                        height: 50, // Adjust image size
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Icon(Icons.person,color: Colors.white,),
                    title: Container(
                        child: const Text(
                      'Vaa vaathi',
                      style: TextStyle(color: Colors.white),
                    )),
                    subtitle: const Text(
                      "G.V Prakash,Shweta Mohan",
                      style: TextStyle(color: Colors.white70),
                    ),

                    trailing: const Icon(
                      Icons.more_vert_outlined,
                      color: Colors.white70,
                    ),
                  ),
                ),
                Card(
                  color: Colors.black,
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(2), // Makes the image circular
                      child: Image.asset(
                        'assets/vaathi.jpg', // Replace with your image path
                        height: 50, // Adjust image size
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Icon(Icons.person,color: Colors.white,),
                    title: Container(
                        child: const Text(
                      'Vaa vaathi',
                      style: TextStyle(color: Colors.white),
                    )),
                    subtitle: const Text(
                      "G.V Prakash,Shweta Mohan",
                      style: TextStyle(color: Colors.white70),
                    ),

                    trailing: const Icon(
                      Icons.more_vert_outlined,
                      color: Colors.white70,
                    ),
                  ),
                ),
                Card(
                  color: Colors.black,
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(2), // Makes the image circular
                      child: Image.asset(
                        'assets/vaathi.jpg', // Replace with your image path
                        height: 50, // Adjust image size
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Icon(Icons.person,color: Colors.white,),
                    title: Container(
                        child: const Text(
                      'Vaa vaathi',
                      style: TextStyle(color: Colors.white),
                    )),
                    subtitle: const Text(
                      "G.V Prakash,Shweta Mohan",
                      style: TextStyle(color: Colors.white70),
                    ),

                    trailing: const Icon(
                      Icons.more_vert_outlined,
                      color: Colors.white70,
                    ),
                  ),
                ),
                Card(
                  color: Colors.black,
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(2), // Makes the image circular
                      child: Image.asset(
                        'assets/vaathi.jpg', // Replace with your image path
                        height: 50, // Adjust image size
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Icon(Icons.person,color: Colors.white,),
                    title: Container(
                        child: const Text(
                      'Vaa vaathi',
                      style: TextStyle(color: Colors.white),
                    )),
                    subtitle: const Text(
                      "G.V Prakash,Shweta Mohan",
                      style: TextStyle(color: Colors.white70),
                    ),

                    trailing: const Icon(
                      Icons.more_vert_outlined,
                      color: Colors.white70,
                    ),
                  ),
                ),
                Card(
                  color: Colors.black,
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(2), // Makes the image circular
                      child: Image.asset(
                        'assets/vaathi.jpg', // Replace with your image path
                        height: 50, // Adjust image size
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Icon(Icons.person,color: Colors.white,),
                    title: Container(
                        child: const Text(
                      'Vaa vaathi',
                      style: TextStyle(color: Colors.white),
                    )),
                    subtitle: const Text(
                      "G.V Prakash,Shweta Mohan",
                      style: TextStyle(color: Colors.white70),
                    ),

                    trailing: const Icon(
                      Icons.more_vert_outlined,
                      color: Colors.white70,
                    ),
                  ),
                ),
                Card(
                  color: Colors.black,
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(2), // Makes the image circular
                      child: Image.asset(
                        'assets/vaathi.jpg', // Replace with your image path
                        height: 50, // Adjust image size
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Icon(Icons.person,color: Colors.white,),
                    title: Container(
                        child: const Text(
                      'Vaa vaathi',
                      style: TextStyle(color: Colors.white),
                    )),
                    subtitle: const Text(
                      "G.V Prakash,Shweta Mohan",
                      style: TextStyle(color: Colors.white70),
                    ),

                    trailing: const Icon(
                      Icons.more_vert_outlined,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      //diaplay bottom la logo vara vaika use pandra property
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        type:
            BottomNavigationBarType.fixed, // Required for more than three items
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.my_library_music_outlined,
              color: Colors.white,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.white,
              size: 30,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
