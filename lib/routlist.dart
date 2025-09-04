import 'package:flutter/material.dart';
import 'package:sujith/listing.dart';

// import 'package:sujith/prime.dart';
class routlist extends StatefulWidget {
  final addpanna edited;
  const routlist({super.key, required this.edited});

  @override
  State<routlist> createState() => _routlistState();
}

class _routlistState extends State<routlist> {
  @override
  //alt => alternative illana edit nu mention pannurathukaga.

  TextEditingController altusername = TextEditingController();
  TextEditingController altgmail = TextEditingController();
  TextEditingController altmobile_no = TextEditingController();
  // List inputs=[];
  // add(){
  //   setState(
  //           () {
  //         if (username.text.isNotEmpty &&  gmail.text.isNotEmpty && mobile_no.text.isNotEmpty) {
  //           addpanna variablename= addpanna(a: username.text, b:gmail.text, c: mobile_no.text,);
  //           inputs.add(variablename);
  //           username.clear();
  //           gmail.clear();
  //           mobile_no.clear();
  //         }
  //         else{
  //
  //           ScaffoldMessenger.of(context).showSnackBar(
  //             SnackBar(
  //                 content: Text("Please enter all fields")),
  //           );
  //         }
  //       }
  //   );
  //
  //
  //
  // }
  @override
  void initState() {
    //
    // super.initState();
    altusername = TextEditingController(text: widget.edited.a);
    altgmail = TextEditingController(text: widget.edited.b);
    altmobile_no = TextEditingController(text: widget.edited.c);
  }

  save() {
    final updateduser = addpanna(
      a: altusername.text,
      b: altgmail.text,
      c: altmobile_no.text,
    );
    Navigator.pop(context, updateduser);
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
                controller: altusername,
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
                controller: altgmail,
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
                controller: altmobile_no,
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
              onPressed: save,
              //     () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => listing(),
              //     ),
              //   );
              // }, // Destination page

              child: const Text('Update'),
            ),

            // Container(
            //   height: 300,
            //
            //   child: ListView.builder(
            //
            //     itemCount: inputs.length,
            //     itemBuilder: (context, index)
            //     {
            //       return Card(
            //         color: Colors.red,
            //         child:
            //
            //
            //         ListTile(
            //           title: Text(
            //               " Name:${inputs[index].a}\n Gmail: ${inputs[index].b}\n mobile no: ${inputs[index].c}                                 "
            //           ),
            //
            //
            //         ),
            //
            //
            //
            //
            //
            //       );
            //
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

// class addpanna {
//   String a;
//   String b;
//   String c;
//   addpanna({required this.a,required this.b,required this.c,});
// }
