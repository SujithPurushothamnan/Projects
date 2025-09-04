import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DetailsPage.dart';
// import 'list2Card.dart';

class listverti extends StatefulWidget {
  const listverti({super.key});

  @override
  State<listverti> createState() => _listvertiState();
}

class _listvertiState extends State<listverti> {
  @override
  TextEditingController a = TextEditingController();
  TextEditingController b = TextEditingController();

  List<int> inputs = [];

  //Controlled value stored in a variable and then addded to the inputs list then it is cleaared after that
  //ok button

  result() {
    setState(() {
      if (a.text.isNotEmpty) {
        int olresult = int.parse(a.text);
        inputs.add(olresult);
        a.clear();
      }
    });
  }

//Edit button

  update(index) {
    b.text = inputs[index].toString();
    setState(() {
      showDialog(
        context: context,
        builder: (BuildContext) => AlertDialog(
          content: SizedBox(
            height: 200,
            width: 412,
            child: Column(
              children: [
                const SizedBox(
                  height: 90,
                ),
                TextFormField(
                  controller: b,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
                onPressed: () {
                  if (b.text.isNotEmpty) {
                    int upresult = int.parse(b.text); //upresult = 555
                    setState(() {
                      inputs[index] = upresult; //555 ->inputs[index]
                    });

                    //a.text=b.text;
                    // inputs[index]= b.text;
                    // a.text =inputs[index].toString();
                  }
                  Navigator.pop(context);
                },
                child: const Text("Update")),
          ],
        ),
      );
      // inputs[index] = newValue;
    });
  }

  min() {
    if (inputs.isNotEmpty) {
      int minvalue = inputs.reduce((a, b) => a < b ? a : b);
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text("Minimum Value"),
          content:
              Text(minvalue.toString(), style: const TextStyle(fontSize: 30)),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  max() {
    if (inputs.isNotEmpty) {
      int maxvalue = inputs.reduce((a, b) => a > b ? a : b);
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text("Maximum Value"),
          content:
              Text(maxvalue.toString(), style: const TextStyle(fontSize: 30)),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  asc() {
    setState(() {
      if (inputs.isNotEmpty) {
        inputs.sort();
        showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text("Your ASC order is:"),
            content: SizedBox(
              height: 400,
              width: 412,
              child: ListView.builder(
                itemCount: inputs.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      inputs[index].toString(),
                      style: const TextStyle(fontSize: 30, color: Colors.green),
                    ),
                  );
                },
              ),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    });
  }

  dsc() {
    setState(() {
      if (inputs.isNotEmpty) {
        inputs.sort((a, b) => b.compareTo(a));
        showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text("Your DSC order is:"),
            content: SizedBox(
              height: 400,
              width: 412,
              child: ListView.builder(
                itemCount: inputs.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(
                        inputs[index].toString(),
                        style:
                            const TextStyle(fontSize: 30, color: Colors.green),
                      ),
                    ),
                  );
                },
              ),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    });
  }

  lfive() {
    setState(() {
      List<int> lessThanFive = inputs.where((x) => x < 5).toList();
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text("< 5 Values"),
          content: SizedBox(
            height: 400,
            width: 412,
            child: ListView.builder(
              itemCount: lessThanFive.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    lessThanFive[index].toString(),
                    style: const TextStyle(fontSize: 30, color: Colors.green),
                  ),
                );
              },
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    });
  }

  gfive() {
    setState(() {
      List<int> greaterThanFive = inputs.where((x) => x > 5).toList();
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text("> 5 Values"),
          content: SizedBox(
            height: 400,
            width: 412,
            child: ListView.builder(
              itemCount: greaterThanFive.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    greaterThanFive[index].toString(),
                    style: const TextStyle(fontSize: 30, color: Colors.green),
                  ),
                );
              },
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 150,
                  width: 412,
                  child: TextFormField(
                    style: const TextStyle(fontSize: 50),
                    controller: a,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter the values"),
                  ),
                ), //Controller a
              ],
            ), //TEXT FORM FIELD

            SizedBox(
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  result();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  "Ok",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ), //OK BUTTON
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      min();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      "MIN",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ), //MIN
                const SizedBox(
                  width: 45,
                ),
                SizedBox(
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      max();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      "MAX",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ), //MAX
                const SizedBox(
                  width: 45,
                ),
                SizedBox(
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      asc();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      "ASC",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ), //ASC
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      dsc();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      "DSC",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 55,
                ),
                SizedBox(
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      lfive();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      "<5",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 75,
                ),
                SizedBox(
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      gfive();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      ">5",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),

            SizedBox(
              height: 495,
              width: 300,
              child: ListView.builder(
                itemCount: inputs.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.black,
                    child: ListTile(
                      title: Text(
                        inputs[index].toString(),
                        style: const TextStyle(
                            fontSize: 30, color: Colors.yellowAccent),
                      ),
                      trailing: SizedBox(
                        width: 88,
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  update(index);
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (context) => DetailsPage(),
                                  //   ),
                                  // );
                                },
                                icon: const Icon(Icons.edit)), //EDIT

                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    inputs.removeAt(index);
                                  });
                                },
                                icon: const Icon(Icons.delete)), //DELETE
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailsPage(answer: inputs[index]),
                          ),
                        );
                      },
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
