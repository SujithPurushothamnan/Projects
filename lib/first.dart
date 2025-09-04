// import 'package:flutter/material.dart';
// class  extends StatefulWidget {
//   const ({super.key});
//
//   @override
//   State<> createState() => _State();
// }
//
// class _State extends State<> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

void main() {


  int age = 22;
  double height = 5.8;
  String name = "Sujith";
  bool isStudent = true;


  const pi = 3.1416;
  final currentYear = DateTime.now().year;


  List<String> hobbies = ['Reading', 'Coding', 'Traveling'];
  hobbies.add('Gaming');


  Set<String> citiesVisited = {'Chennai', 'Madurai', 'Trichy', 'Chennai'}; // Duplicate ignored


  Map<String, dynamic> profile = {
    'name': name,
    'age': age,
    'height': height,
    'isStudent': isStudent
  };


  print("👤 Profile Details:");
  print("Name: $name");
  print("Age: $age");
  print("Height: $height");
  print("Is Student: $isStudent");
  print("Current Year: $currentYear");
  print("Pi Value: $pi");
  print("Hobbies: $hobbies");
  print("Cities Visited: $citiesVisited");
  print("Profile Map: $profile");
}
