import 'package:flutter/material.dart';
import 'package:sujith/prime.dart';
import 'package:sujith/routlist.dart';

class listing extends StatefulWidget {
  const listing({super.key});

  @override
  State<listing> createState() => _listingState();
}

class _listingState extends State<listing> {
  @override
  TextEditingController username = TextEditingController();
  TextEditingController gmail = TextEditingController();
  TextEditingController mobile_no = TextEditingController();
  List inputs = [];
  add() {
    setState(() {
      if (username.text.isNotEmpty &&
          gmail.text.isNotEmpty &&
          mobile_no.text.isNotEmpty) {
        addpanna variablename = addpanna(
          a: username.text,
          b: gmail.text,
          c: mobile_no.text,
        );
        inputs.add(variablename);
        username.clear();
        gmail.clear();
        mobile_no.clear();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Please enter all fields")),
        );
      }
    });
  }

  editlist(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => routlist(
          edited: inputs[index],
        ),
      ),
    ).then((updateduser) {
      if (updateduser != null) {
        setState(() {
          inputs[index] = updateduser;
        });
      }
    });

    Color bellIconColor = Colors.white;
    Color followersColor = Colors.white;
    Color followingColor = Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            //user name
            Container(
              child: TextFormField(
                controller: username,
                decoration: InputDecoration(
                    hintText: "Enter your Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            const SizedBox(
              height: 40,
            ),

            //gmail
            Container(
              child: TextFormField(
                controller: gmail,
                decoration: InputDecoration(
                    hintText: "Enter your Gmail ID",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),

            const SizedBox(
              height: 40,
            ),
            //mobile number
            Container(
              child: TextFormField(
                controller: mobile_no,
                decoration: InputDecoration(
                    hintText: "Enter your Phone Number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),

            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: add, // Destination page

              child: const Text('Add'),
            ),

            SizedBox(
              height: 300,
              child: ListView.builder(
                itemCount: inputs.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.red,
                    child: ListTile(
                      title: Text(
                          " Name:${inputs[index].a}\n Gmail: ${inputs[index].b}\n mobile no: ${inputs[index].c}                                 "),

                      trailing: SizedBox(
                        width: 80,
                        child: Row(
                          children: [
//edit button
                            IconButton(
                                onPressed: () {
                                  editlist(index);
                                },
                                icon: const Icon(Icons.edit)),

//delete button
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    inputs.removeAt(index);
                                  });
                                },
                                icon: const Icon(Icons.delete)),
                          ],
                        ),
                      ),
                      // onTap: () {
                      //           editlist(index);
                      //         },
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

class addpanna {
  String a;
  String b;
  String c;
  addpanna({
    required this.a,
    required this.b,
    required this.c,
  });
}
