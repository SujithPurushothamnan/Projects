import 'package:flutter/material.dart';
import 'package:sujith/gt.dart';

class form extends StatefulWidget {
  const form({super.key});

  @override
  State<form> createState() => _formState();
}

class _formState extends State<form> {
  @override
  final valid = GlobalKey<FormState>();
  bool kaami = false;

  TextEditingController name = TextEditingController();
  TextEditingController gmail = TextEditingController();
  TextEditingController mobile_number = TextEditingController();
  TextEditingController pass = TextEditingController();

  maraiya_vaika() {
    setState(() {
      kaami = name.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: valid,
        child: Column(
          children: [
            // name
            SizedBox(
              height: 100,
              width: 450,
              child: TextFormField(
                controller: name,
                validator: (sariparthal) {
                  if (sariparthal!.isEmpty ||
                      !RegExp(r'^[a-zA-Z][a-zA-Z0-9._]{2,19}(?<![._])$')
                          .hasMatch(sariparthal)) //regular expression
                  {
                    return "please enter something";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: "enter your name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            //gmail
            SizedBox(
              height: 100,
              width: 450,
              child: TextFormField(
                controller: gmail,
                validator: (sariparthal) {
                  if (sariparthal!.isEmpty ||
                      !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(sariparthal)) //regular expression
                  {
                    return "please enter something";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: "enter your gmail",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            //mobile number
            SizedBox(
              height: 100,
              width: 450,
              child: TextFormField(
                controller: mobile_number,
                validator: (sariparthal) {
                  if (sariparthal!.isEmpty ||
                      !RegExp(r'^[6-9]\d{9}$')
                          .hasMatch(sariparthal)) //regular expression
                  {
                    return "please enter something";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: "enter your mobile number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            //password
            SizedBox(
              height: 100,
              width: 450,
              child: TextFormField(
                controller: pass,
                validator: (sariparthal) {
                  if (sariparthal!.isEmpty ||
                      !RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$')
                          .hasMatch(sariparthal)) //regular expression
                  {
                    return "please enter something";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: "enter your password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                if (valid.currentState!.validate()) {
                  const SnackBar(
                    content: Text("processing the data"),
                  );

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const gt()));
                } else {
                  const SnackBar(
                      content:
                          Text('Please enter correct username and password'));
                }
              },
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
