import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoInsta extends StatefulWidget {
  const DemoInsta({super.key});

  @override
  State<DemoInsta> createState() => _DemoInsta();
}

class _DemoInsta extends State<DemoInsta> {
  // State variables to handle color changes
  bool isFollowingTapped = false;
  bool isMessageTapped = false;
  bool isIconTapped = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: const Icon(Icons.arrow_back, color: Colors.white),
          title: const Text(
            "lonely_sujith",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isIconTapped = !isIconTapped;
                });
              },
              child: Icon(
                CupertinoIcons.bell,
                color: isIconTapped ? Colors.blue : Colors.white,
              ),
            ),
            const SizedBox(width: 20),
            const Icon(Icons.more_vert_outlined, color: Colors.white),
            const SizedBox(width: 20),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: 455,
                pinned: true,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    height: 455,
                    width: double.infinity,
                    color: Colors.black,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const SizedBox(width: 20),
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
                                              fontWeight: FontWeight.bold,
                                            ),
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
                            Container(
                              child: const Column(
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(width: 10),
                                      Text(
                                        "30",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(width: 70),
                                      Text(
                                        "344",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(width: 50),
                                      Text(
                                        "944",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(width: 30),
                                      Text(
                                        "posts",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(width: 40),
                                      Text(
                                        "followers",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(width: 15),
                                      Text(
                                        "following",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
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
                      ],
                    ),
                  ),
                ),
              ),
            ];
          },
          body: Container(),
        ),
      ),
    );
  }
}
