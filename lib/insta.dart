import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Insta extends StatefulWidget {
  const Insta({super.key});

  @override
  State<Insta> createState() => _InstaState();
}

class _InstaState extends State<Insta> {
//post ooda list
  List a = [
    "assets/pikachu.jpg",
    "assets/pikachu.jpg",
    "assets/pikachu.jpg",
    "assets/pikachu.jpg",
    "assets/pikachu.jpg",
    "assets/pikachu.jpg",
    "assets/pikachu.jpg",
    "assets/pikachu.jpg",
    "assets/pikachu.jpg",
    "assets/pikachu.jpg",
    "assets/pikachu.jpg",
    "assets/pikachu.jpg",
    "assets/pikachu.jpg",
    "assets/pikachu.jpg",
    "assets/pikachu.jpg",
    "assets/pikachu.jpg",
    "assets/pikachu.jpg",
    "assets/pikachu.jpg",
    "assets/pikachu.jpg",
  ];

//reels ooda list
  List b = [
    "assets/pikachu2.png",
    "assets/pikachu2.png",
    "assets/pikachu2.png",
    "assets/pikachu2.png",
    "assets/pikachu2.png",
    "assets/pikachu2.png",
    "assets/pikachu2.png",
    "assets/pikachu2.png",
    "assets/pikachu2.png",
    "assets/pikachu2.png",
    "assets/pikachu2.png",
    "assets/pikachu2.png",
    "assets/pikachu2.png",
    "assets/pikachu2.png",
    "assets/pikachu2.png",
    "assets/pikachu2.png",
    "assets/pikachu2.png",
    "assets/pikachu2.png",
  ];

//collab ooda list
  List c = [
    "assets/batman.jpg",
    "assets/batman.jpg",
    "assets/batman.jpg",
    "assets/batman.jpg",
    "assets/batman.jpg",
    "assets/batman.jpg",
    "assets/batman.jpg",
    "assets/batman.jpg",
    "assets/batman.jpg",
    "assets/batman.jpg",
    "assets/batman.jpg",
    "assets/batman.jpg",
    "assets/batman.jpg",
    "assets/batman.jpg",
    "assets/batman.jpg",
    "assets/batman.jpg",
    "assets/batman.jpg",
    "assets/batman.jpg",
    "assets/batman.jpg",
  ];

//highlight ooda image
  List items = [
    // Image.asset("assets/gvp.png"),
    // Image.asset("assets/gvp.png"),
    // Image.asset("assets/gvp.png"),
    // Image.asset("assets/gvp.png"),
    // Image.asset("assets/gvp.png"),
    // Image.asset("assets/gvp.png"),
    // Image.asset("assets/gvp.png"),
    // Image.asset("assets/gvp.png"),
    // Image.asset("assets/gvp.png"),
    // Image.asset("assets/gvp.png"),
    "assets/appu.jpg",
    "assets/appu.jpg",
    "assets/appu.jpg",
    "assets/appu.jpg",
    "assets/appu.jpg",
    "assets/appu.jpg",
  ];

//highlights ooda image
  List<String> itemname = [
    "highlights",
    "highlights",
    "highlights",
    "highlights",
    "highlights",
    "highlights",
  ];
  Color bellIconColor = Colors.white;
  Color followersColor = Colors.white;
  Color followingColor = Colors.white;
  bool isFollowingTapped = false;
  bool isMessageTapped = false;
  bool isIconTapped = false;

  @override
  Widget build(BuildContext context) {
    return
//tab and tabbar view ku sammantha patta widget
        DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: const Icon(Icons.arrow_back, color: Colors.white),
          title: const Text(
            "lonely_sujith",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                setState(() {
                  bellIconColor =
                      bellIconColor == Colors.white ? Colors.red : Colors.white;
                });
              },
              child: Icon(CupertinoIcons.bell, color: bellIconColor),
            ),
            const SizedBox(width: 20),
            GestureDetector(
              onTap: () {
                // Display some effects (e.g., a SnackBar)
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Options menu tapped!"),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              child: const Icon(Icons.more_vert_outlined, color: Colors.white),
            ),
            const SizedBox(width: 20),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: 455,
                pinned:
                    true, //ethu thaan tab aah stable aah vachikuthu scroll aagurappo
                backgroundColor: Colors.black,

                //sliver app bar ooda body mari flexiblepace act pannuthu
                flexibleSpace: FlexibleSpaceBar(
                  background:

//main container for profile 'it contains upto insta highlights'
                      Container(
                    height: 455,
                    width: double.infinity,
                    color: Colors.black,
                    child:

//main column for sliver app bar
                        Column(
                      children: [
//intha row la thaan profile photo, post,followers,following irruku
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),

//profile img
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Dialog(
                                      backgroundColor: Colors.black,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Image.asset(
                                            "assets/batman.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                          const SizedBox(height: 10),
                                          const Text(
                                            "Profile Photo",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(height: 10),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                              child: CircleAvatar(
                                radius: 42,
                                backgroundColor: Colors.grey.shade400,
                                child: const CircleAvatar(
                                  radius: 40,
                                  backgroundImage:
                                      AssetImage("assets/batman.jpg"),
                                ),
                              ),
                            ),

//Profile post,followers and following
                            Container(
                              child: const Column(
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "30",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 70,
                                      ),
                                      Text(
                                        "344",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      Text(
                                        "944",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Text(
                                        "posts",
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Text(
                                        "followers",
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        "following",
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

//description or about of profile
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                const Row(
                                  children: [
                                    Text(
                                      "Sujith",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 190,
                                    ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      "SJ",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 210,
                                    ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      "Thanjavur",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 163,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.link,
                                      color: Colors.blue.shade100,
                                      size: 16,
                                    ),
                                    Text(
                                      "gmail.com",
                                      style: TextStyle(
                                          color: Colors.blue.shade100),
                                    ),
                                    const SizedBox(
                                      width: 143,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      CupertinoIcons.play_circle,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                    Text(
                                      " Gaandu Kannamma",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      ".Vivek - Mervin",
                                      style: TextStyle(color: Colors.white70),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 20,
                        ),

//following button, message button and add person icons
                        Row(
                          children: [
                            const SizedBox(width: 15),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isFollowingTapped = !isFollowingTapped;
                                });
                              },
                              child: Container(
                                height: 35,
                                width: 150,
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                  color: Colors.white10,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Row(
                                  children: [
                                    const SizedBox(width: 20),
                                    Text(
                                      "Following",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: isFollowingTapped
                                            ? Colors.blue
                                            : Colors.white,
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    Icon(
                                      CupertinoIcons.chevron_down,
                                      color: isFollowingTapped
                                          ? Colors.blue
                                          : Colors.white,
                                      size: 14,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 20),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isMessageTapped = !isMessageTapped;
                                });
                              },
                              child: Container(
                                height: 35,
                                width: 150,
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                  color: Colors.white10,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Center(
                                  child: Text(
                                    "Message",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: isMessageTapped
                                          ? Colors.blue
                                          : Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isIconTapped = !isIconTapped;
                                });
                              },
                              child: Container(
                                height: 35,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white10,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Icon(
                                  Icons.person_add_outlined,
                                  color:
                                      isIconTapped ? Colors.blue : Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),

// insta highlights
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 130,
                          child: ListView.builder(
                            scrollDirection:
                                Axis.horizontal, // Horizontal scrolling
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 40,
                                      backgroundColor: Colors.grey.shade700,
                                      child: CircleAvatar(
                                        radius: 39,
                                        backgroundColor: Colors.black,
                                        child: CircleAvatar(
                                          radius: 34,
                                          backgroundImage:
                                              AssetImage(items[index]),
                                        ),
                                      ),
                                    ),
                                    // Container(
                                    //   height: 60,
                                    //   width: 60,
                                    //   decoration: BoxDecoration(
                                    //     border: Border.all(),
                                    //   borderRadius: BorderRadius.circular(40),
                                    //     image: DecorationImage(image:)
                                    //
                                    //   ),// Set width for each item
                                    //
                                    //   // child:
                                    //   // items[index],
                                    // ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      itemname[index],
                                      style: const TextStyle(
                                        color: Colors.white,
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
                bottom: const PreferredSize(
                  preferredSize: Size.fromHeight(50),
                  child: Material(
                    color: Colors.black,
                    child:
//tabbar icons
                        TabBar(
                      indicatorColor: Colors.white,
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabs: [
                        Tab(
                            icon: Icon(
                          Icons.border_all_sharp,
                          color: Colors.white70,
                          size: 30,
                        )),
                        Tab(
                            icon: Icon(
                          Icons.video_collection_outlined,
                          color: Colors.white70,
                          size: 30,
                        )),
                        Tab(
                            icon: Icon(
                          Icons.perm_contact_cal_outlined,
                          color: Colors.white70,
                          size: 30,
                        )),
                      ],
                    ),
                  ),
                ),
              ),
            ];
          },
          body:
//grid for tab
              TabBarView(
            children: [
//1st grid 'post' for 2nd tab in a tabbar.
              GridView.builder(
                itemCount: a.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  crossAxisCount: 3,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    // alignment: Alignment.center,

                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      image: DecorationImage(
                        image: AssetImage(a[index]),
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                },
              ),

//2nd grid 'reels' for 2nd tab in a tabbar.
              GridView.builder(
                itemCount: b.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  crossAxisCount: 3,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    // alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage(b[index]),
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                },
              ),

//3rd grid 'collab post' for 3rd tab in tabbar
              GridView.builder(
                itemCount: c.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  crossAxisCount: 3,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    // alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage(c[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),

//bottom icons
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType
              .fixed, // Required for more than three items
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_outlined,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.video_collection_outlined,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
