import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MinMax extends StatefulWidget {
  const MinMax({super.key});

  @override
  State<MinMax> createState() => _MinMaxState();
}

class _MinMaxState extends State<MinMax> {
  final TextEditingController _numberController = TextEditingController();
  List<int> numbers = []; // List to store the entered numbers

  //kudutha text aah int aah tranform panna use panroom"int.tryparse"aah  Function to add the input number to the list
  void addNumber() {
    if (_numberController.text.isNotEmpty) {
      final int? number = int.tryParse(_numberController.text);
      if (number != null) {
        setState(() {
          numbers.add(number);
          _numberController.clear();
        });
      } else {
        _showDialog("Error", "Please enter a valid number.");
      }
    }
  }

  // Function to find the minimum number
  int? findMin() {
    if (numbers.isEmpty) return null;

    // value = first user kudukura input. element = second kudukura input.
    return numbers.reduce((value, element) => value < element ? value : element);
  }

  // Function to find the maximum number
  int? findMax() {
    if (numbers.isEmpty) return null;
    return numbers.reduce((value, element) => value > element ? value : element);
  }

  // Function to get numbers in ascending order
  List<int> getAscending() {
    return List<int>.from(numbers)..sort();
  }

  // Function to get numbers in descending order
  List<int> getDescending() {
    return List<int>.from(numbers)..sort((a, b) => b.compareTo(a));
  }

  // Function to get numbers greater than 5
  List<int> greaterThanFive() {
    return numbers.where((num) => num > 5).toList();
  }

  // Function to get numbers less than 5
  List<int> lessThanFive() {
    return numbers.where((num) => num < 5).toList();
  }

  // Function to show a dialog with the result
  void _showDialog(String title, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: _numberController,
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
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: addNumber,
              child: const Text(
                "Add Number",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: CupertinoColors.systemGreen),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    final min = findMin();
                    _showDialog("Minimum Number", "Minimum: ${min ?? 'N/A'}");
                  },
                  child: const Text("MIN"),
                ),
                ElevatedButton(
                  onPressed: () {
                    final max = findMax();
                    _showDialog("Maximum Number", "Maximum: ${max ?? 'N/A'}");
                  },
                  child: const Text("MAX"),
                ),
                ElevatedButton(
                  onPressed: () {
                    final ascending = getAscending();
                    _showDialog("Ascending Order", "Ascending: $ascending");
                  },
                  child: const Text("ASC"),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    final descending = getDescending();
                    _showDialog("Descending Order", "Descending: $descending");
                  },
                  child: const Text("DSC"),
                ),
                ElevatedButton(
                  onPressed: () {
                    final greater = greaterThanFive();
                    _showDialog("Numbers > 5", "Greater than 5: $greater");
                  },
                  child: const Text(">5"),
                ),
                ElevatedButton(
                  onPressed: () {
                    final less = lessThanFive();
                    _showDialog("Numbers < 5", "Less than 5: $less");
                  },
                  child: const Text("<5"),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: numbers.isEmpty
                  ? const Center(
                      child: Text(
                        "No numbers added yet.",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    )
                  : GridView.builder(
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 4, // Number of columns
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
  ),
  itemCount: numbers.length,
  itemBuilder: (context, index) {
    // Define a list of colors to alternate through
    List<Color> colors = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.orange,
      Colors.purple,
      Colors.teal,
      Colors.brown,
      Colors.cyan,
    ];

    // Choose the color based on the index
    Color textColor = colors[index % colors.length]; // This will cycle through colors

    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8),
      ),
      alignment: Alignment.center,
      child: Text(
        numbers[index].toString(),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: textColor,  // Set the color dynamically
        ),
      ),
    );
  },
),

            ),
          ],
        ),
      ),
    );
  }
}
