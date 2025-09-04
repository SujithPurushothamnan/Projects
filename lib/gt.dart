import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sujith/booboo.dart';

class gt extends StatefulWidget {
  const gt({super.key});

  @override
  State<gt> createState() => _gtState();
}

class _gtState extends State<gt> {
  @override
  TextEditingController gt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Menu',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue[900],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20), // Adjust the radius as needed
          ),
        ),
        leading: const Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Attendance report'),
              trailing: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const kadavuley()),
                    );
                  },
                  child: const Icon(CupertinoIcons.right_chevron)),
            ),
          ),
          SizedBox(
            height: 150,
            width: 400,

            child: TextFormField(
                controller: gt,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)))),

//user name email cell pass login bt
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const kadavuley()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue[900],
              // Background color of the button
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              // Padding inside the button
              textStyle: const TextStyle(fontSize: 16),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              // Ensures the button wraps tightly around content
              children: [
                Icon(
                  Icons.logout, // Your icon here
                  color: Colors.white, // Icon color
                ),
                SizedBox(width: 10), // Adds space between icon and text
                Text(
                  'Logout',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          const Row(
            mainAxisSize: MainAxisSize.min,
            // Ensures the button wraps tightly around content
            children: [
              Icon(
                Icons.star, // Your icon here
                color: Colors.white, // Icon color
              ),
              SizedBox(width: 10), // Adds space between icon and text
              Text(
                'Submit',
                style: TextStyle(color: Colors.white), // Text color
              ),
            ],
          ),
          const SizedBox(
            height: 120,
          )
        ],
      ),
    );
  }
}
