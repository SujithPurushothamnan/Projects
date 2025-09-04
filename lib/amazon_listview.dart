import 'package:flutter/material.dart';

class AmazonListView extends StatelessWidget {
  final List<String> images = [
    'assets/mb.jpg',
    'assets/fp.jpeg',
    'assets/el.jpg',
    'assets/f3.jpg',
    'assets/c.png',
    'assets/earphone.png',
    'assets/flask1.jpg',
    'assets/cyr.jpg',
    'assets/batman.jpg',
    'assets/f3.jpg',
  ];

  AmazonListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,  
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  images[index],
                  width: 120,
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
