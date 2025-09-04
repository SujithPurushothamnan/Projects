import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class calcy extends StatefulWidget {
  const calcy({super.key});

  @override
  State<calcy> createState() => _calcyState();
}

class _calcyState extends State<calcy> {
  @override
  Calculate() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                TextFormField(
                  cursorColor: Colors.blue,
                  cursorErrorColor: Colors.red,
                  cursorHeight: 60,
                  textAlign: TextAlign.right,
                  style: const TextStyle(color: Colors.white, fontSize: 38),

                  // textAlignVertical: TextAlignVertical(y: 20),
                  // cursorWidth: 20,

                  decoration: const InputDecoration(
                    fillColor:
                        Colors.black, // Background color of the TextFormField
                    filled: true,

                    contentPadding:
                        EdgeInsets.symmetric(vertical: 150, horizontal: 16),
                    // enabledBorder: OutlineInputBorder(
                    //       borderSide: BorderSide(color: Colors.green, width: 2),),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      child: const Icon(
                        Icons.access_time_outlined,
                        color: Color(0xFF80B5FF),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      child: const Icon(CupertinoIcons.line_horizontal_3,
                          color: Color(0xFF80B5FF)),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      child: const Icon(
                        Icons.calculate_outlined,
                        color: Color(0xFF80B5FF),
                      ),
                    ),
                    const SizedBox(
                      width: 180,
                    ),
                    Container(
                      child: const Icon(
                        Icons.backspace_outlined,
                        size: 20,
                        color: Color(0xFF80B5FF),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            color: Colors.grey, // Color of the line
            thickness: 0.5, // Thickness of the line
            indent: 14, // Left padding
            endIndent: 14, // Right padding
          ),
          const SizedBox(
            height: 20,
          ),
//1st row
          Row(
            children: [
// calculate button
              ElevatedButton(
                  onPressed: Calculate,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(100, 80), //
                    backgroundColor: const Color(0x0f8497ff),
                    shape: const CircleBorder(),
                  ),
                  child: const Center(
                      child: Text(
                    "C",
                    style: TextStyle(color: Colors.red, fontSize: 32),
                  ))),
// ()button
              ElevatedButton(
                  onPressed: Calculate,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(100, 80),
                    backgroundColor: const Color(0x0f8497ff),
                    shape: const CircleBorder(),
                  ),
                  child: const Center(
                      child: Text(
                    "()",
                    style: TextStyle(color: Color(0xFF80B5FF), fontSize: 32),
                  ))),
// % button
              ElevatedButton(
                  onPressed: Calculate,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(100, 80),
                    backgroundColor: const Color(0x0f8497ff),
                    shape: const CircleBorder(),
                  ),
                  child: const Center(
                      child: Text(
                    "÷",
                    style: TextStyle(color: Color(0xFF80B5FF), fontSize: 32),
                  ))),
// divide button
              ElevatedButton(
                  onPressed: Calculate,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(100, 80),
                    backgroundColor: const Color(0x0f8497ff),
                    shape: const CircleBorder(),
                  ),
                  child: const Center(
                      child: Text(
                    "/",
                    style: TextStyle(color: Color(0xFF80B5FF), fontSize: 32),
                  ))),
            ],
          ),
          const SizedBox(
            height: 20,
          ),

//2nd row
          Row(
            children: [
// 7 button
              ElevatedButton(
                  onPressed: Calculate,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(100, 80), //
                    backgroundColor: const Color(0x0f8497ff),
                    shape: const CircleBorder(),
                  ),
                  child: const Center(
                      child: Text(
                    "7",
                    style: TextStyle(color: Color(0xFF80B5FF), fontSize: 32),
                  ))),
//8 button
              ElevatedButton(
                  onPressed: Calculate,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(100, 80),
                    backgroundColor: const Color(0x0f8497ff),
                    shape: const CircleBorder(),
                  ),
                  child: const Center(
                      child: Text(
                    "8",
                    style: TextStyle(color: Color(0xFF80B5FF), fontSize: 32),
                  ))),
//9 button
              ElevatedButton(
                  onPressed: Calculate,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(100, 80),
                    backgroundColor: const Color(0x0f8497ff),
                    shape: const CircleBorder(),
                  ),
                  child: const Center(
                      child: Text(
                    "9",
                    style: TextStyle(color: Color(0xFF80B5FF), fontSize: 32),
                  ))),
//* button
              ElevatedButton(
                  onPressed: Calculate,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(100, 80),
                    backgroundColor: const Color(0x0f8497ff),
                    shape: const CircleBorder(),
                  ),
                  child: const Center(
                      child: Text(
                    "*",
                    style: TextStyle(color: Color(0xFF80B5FF), fontSize: 32),
                  ))),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
//3rd row
          Row(
            children: [
              ElevatedButton(
                  onPressed: Calculate,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(100, 80), //
                    backgroundColor: const Color(0x0f8497ff),
                    shape: const CircleBorder(),
                  ),
                  child: const Center(
                      child: Text(
                    "4",
                    style: TextStyle(color: Color(0xFF80B5FF), fontSize: 32),
                  ))),
              ElevatedButton(
                  onPressed: Calculate,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(100, 80),
                    backgroundColor: const Color(0x0f8497ff),
                    shape: const CircleBorder(),
                  ),
                  child: const Center(
                      child: Text(
                    "5",
                    style: TextStyle(color: Color(0xFF80B5FF), fontSize: 32),
                  ))),
              ElevatedButton(
                  onPressed: Calculate,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(100, 80),
                    backgroundColor: const Color(0x0f8497ff),
                    shape: const CircleBorder(),
                  ),
                  child: const Center(
                      child: Text(
                    "6",
                    style: TextStyle(color: Color(0xFF80B5FF), fontSize: 32),
                  ))),
              ElevatedButton(
                  onPressed: Calculate,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(100, 80),
                    backgroundColor: const Color(0x0f8497ff),
                    shape: const CircleBorder(),
                  ),
                  child: const Center(
                      child: Text(
                    "-",
                    style: TextStyle(color: Color(0xFF80B5FF), fontSize: 32),
                  ))),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
//4th row
          Row(
            children: [
              ElevatedButton(
                  onPressed: Calculate,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(100, 80), //
                    backgroundColor: const Color(0x0f8497ff),
                    shape: const CircleBorder(),
                  ),
                  child: const Center(
                      child: Text(
                    "1",
                    style: TextStyle(color: Color(0xFF80B5FF), fontSize: 32),
                  ))),
              ElevatedButton(
                  onPressed: Calculate,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(100, 80),
                    backgroundColor: const Color(0x0f8497ff),
                    shape: const CircleBorder(),
                  ),
                  child: const Center(
                      child: Text(
                    "2",
                    style: TextStyle(color: Color(0xFF80B5FF), fontSize: 32),
                  ))),
              ElevatedButton(
                  onPressed: Calculate,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(100, 80),
                    backgroundColor: const Color(0x0f8497ff),
                    shape: const CircleBorder(),
                  ),
                  child: const Center(
                      child: Text(
                    "3",
                    style: TextStyle(color: Color(0xFF80B5FF), fontSize: 32),
                  ))),
              ElevatedButton(
                  onPressed: Calculate,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(100, 80),
                    backgroundColor: const Color(0x0f8497ff),
                    shape: const CircleBorder(),
                  ),
                  child: const Center(
                      child: Text(
                    "+",
                    style: TextStyle(color: Color(0xFF80B5FF), fontSize: 32),
                  ))),
            ],
          ),
          const SizedBox(
            height: 20,
          ),

//5throw
          Row(
            children: [
              ElevatedButton(
                  onPressed: Calculate,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(100, 80), //
                    backgroundColor: const Color(0x0f8497ff),
                    shape: const CircleBorder(),
                  ),
                  child: const Center(
                      child: Text(
                    "+/-",
                    style: TextStyle(color: Color(0xFF80B5FF), fontSize: 32),
                  ))),
              ElevatedButton(
                  onPressed: Calculate,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(100, 80),
                    backgroundColor: const Color(0x0f8497ff),
                    shape: const CircleBorder(),
                  ),
                  child: const Center(
                      child: Text(
                    "0",
                    style: TextStyle(color: Color(0xFF80B5FF), fontSize: 32),
                  ))),
              ElevatedButton(
                  onPressed: Calculate,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(100, 80),
                    backgroundColor: const Color(0x0f8497ff),
                    shape: const CircleBorder(),
                  ),
                  child: const Center(
                      child: Text(
                    ".",
                    style: TextStyle(color: Color(0xFF69BBED), fontSize: 32),
                  ))),
              ElevatedButton(
                  onPressed: Calculate,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(100, 80),
                    backgroundColor: const Color(0xFF1AAFDC),
                    shape: const CircleBorder(),
                  ),
                  child: const Center(
                      child: Text(
                    "=",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 38,
                    ),
                  ))),
            ],
          ),
        ],
      ),
    );
  }
}
