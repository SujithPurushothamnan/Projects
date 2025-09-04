import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sujith/sujith.dart';

class kadavuley extends StatefulWidget {
  const kadavuley({super.key});

  @override
  State<kadavuley> createState() => _kadavuleyState();
}

class _kadavuleyState extends State<kadavuley> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: const Icon(
          CupertinoIcons.square_arrow_right_fill,
          color: Colors.yellow,
        ),
        title: const Center(
          child: Icon(
            Icons.forest_sharp,
            color: Colors.yellow,
          ),
        ),
        actions: const [
          Icon(
            Icons.foggy,
            color: Colors.yellow,
          ),
        ],
      ),
      body:

          //1st column
          Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(),
          image: const DecorationImage(
            image: AssetImage("assets/forest.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            //1st Row
            Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
                //1st container
                Container(
                  height: 180,
                  width: 180,
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/pig.png",
                        height: 148,
                        width: 180,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Pig",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.teal,
                        ),
                      )
                    ],
                  ),
                ),

                const SizedBox(
                  width: 100,
                ),

                //2nd container
                Container(
                  height: 180,
                  width: 180,
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/bear.png",
                        height: 148,
                        width: 180,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Bear",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.teal,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),

            //2nd Row
            Row(
              children: [
                const SizedBox(
                  width: 90,
                ),
                //2nd Row 1St Container

                Container(
                  height: 350,
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    image: const DecorationImage(
                      image: AssetImage("assets/forest.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage("assets/bear.png"),
                      ),
                      //3rd container
                      SizedBox(
                        height: 100,
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText: "Enter your name",
                            hintStyle: const TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),

                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const sujithu()),
                            );
                          },
                          child: const Text("login")),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
