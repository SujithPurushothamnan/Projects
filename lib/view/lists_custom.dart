import 'package:flutter/material.dart';

class ListsCustom extends StatefulWidget {
  const ListsCustom({super.key});

  @override
  State<ListsCustom> createState() => _ListsCustomState();
}

class _ListsCustomState extends State<ListsCustom> {
  final List<Widget> slides = [];

  @override
  void initState() {
    super.initState();
    for (int i = 1; i <= 17; i++) {
      slides.add(
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Stack(
              // alignment: AlignmentDirectional.bottomStart,
              children: [
                Image.asset(
                  "assets/images/m$i.jpeg",
                  height: 250,
                  width: 150,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 8,
                  // left: 10,
                  child: Container(
                    // padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                    child: Text(
                      "$i",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 229, 245, 3),
                        fontWeight: FontWeight.bold,
                        fontSize: 80,
                      ),
                      // textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: slides,
      ),
    );
  }
}
