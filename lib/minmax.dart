import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sujith/prime.dart';
import 'package:sujith/routlist.dart';

class minmax extends StatefulWidget {
  const minmax({super.key});

  @override
  State<minmax> createState() => _minmaxState();
}

class _minmaxState extends State<minmax> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter any number",
              hintStyle: const TextStyle(
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                fontStyle: FontStyle.italic,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const prime()),
              );
            },
            child: const Text(
              "OK",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: CupertinoColors.systemGreen),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const prime()),
                  );
                },
                child: const Text(
                  "MIN",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: CupertinoColors.systemGreen),
                ),
              ),
              const SizedBox(
                width: 65,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const prime()),
                  );
                },
                child: const Text(
                  "MAX",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: CupertinoColors.systemGreen),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const prime()),
                  );
                },
                child: const Text(
                  "ASC",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: CupertinoColors.systemGreen),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const prime()),
                  );
                },
                child: const Text(
                  "DSC",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: CupertinoColors.systemGreen),
                ),
              ),
              const SizedBox(
                width: 65,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const prime()),
                  );
                },
                child: const Text(
                  "  <5  ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: CupertinoColors.systemGreen),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const prime()),
                  );
                },
                child: const Text(
                  "  >5   ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: CupertinoColors.systemGreen),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
