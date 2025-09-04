import 'package:flutter/material.dart';

class MergedImageList extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/f2.jpg',
    'assets/f3.jpg',
    'assets/cb.jpg',
    'assets/mx.jpg',
    'assets/mb.jpg',
    'assets/tr.jpg',
    'assets/pc.jpg',
    'assets/hm.jpg',
  ];

  MergedImageList({super.key});

  @override
  Widget build(BuildContext context) {
    // Split the list of images into two halves
    int middleIndex = imagePaths.length ~/ 2;
    List<String> firstHalf = imagePaths.sublist(0, middleIndex);
    List<String> secondHalf = imagePaths.sublist(middleIndex);

    return Scaffold(
      appBar:
          AppBar(title: const Text('Merge List of Images in Two Containers')),
      body: Column(
        children: [
          // First container displaying the first half of the images
          Expanded(
            child: Container(
              color: Colors.blue.shade100,
              child: ListView.builder(
                itemCount: firstHalf.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      firstHalf[index],
                      fit: BoxFit.cover,
                      height: 150, // Set a fixed height for the images
                    ),
                  );
                },
              ),
            ),
          ),
          // Second container displaying the second half of the images
          Expanded(
            child: Container(
              color: Colors.green.shade100,
              child: ListView.builder(
                itemCount: secondHalf.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      secondHalf[index],
                      fit: BoxFit.cover,
                      height: 150, // Set a fixed height for the images
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: MergedImageList()));
}
