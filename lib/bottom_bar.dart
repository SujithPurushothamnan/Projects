import 'package:amazon_ui/view/screen/hotstar_downloads.dart';
import 'package:amazon_ui/view/screen/hotstar_home_page.dart';
import 'package:amazon_ui/view/screen/hotstar_profile.dart';
import 'package:amazon_ui/view/screen/hotstar_sparks.dart';
import 'package:amazon_ui/view/screen/search_screen.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _index = 0;

  final pages = [
    const HotstarHomePage(),
    const SearchScreen(),
    const HotstarSparks(),
    const HotstarDownloads(),
    const HotstarProfile(),
  ];

  tap(index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_sharp),
              label: "Home",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.videocam_outlined),
              label: "Sparks",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.file_download_outlined),
              label: "Downloads",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined),
              label: "Profile",
              backgroundColor: Colors.black),
        ],
        currentIndex: _index,
        onTap: tap,
      ),
    );
  }
}
