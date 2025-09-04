import 'package:flutter/material.dart';
import 'package:sujith/gt.dart';

class ui extends StatefulWidget {
  const ui({super.key});

  @override
  State<ui> createState() => _uiState();
}
//Niri  abc@gmail.com

//user name email cell pass login bt

class _uiState extends State<ui> {
  @override
  bool show = false; //for murmun variable declaration with boolean data type

  final validkey = GlobalKey<FormState>();

  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController pass = TextEditingController();

  marmum() {
    //wanted to hide details and showed when all requiments are filled
    setState(() {
      show = username.text.isNotEmpty &&
          email.text.isNotEmpty &&
          phone.text.isNotEmpty &&
          pass.text.isNotEmpty;
    });
  }

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
      body: Form(
        key: validkey, // for form

        child: Column(
          children: [
            //User name
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 100,
              width: 400,
              child: TextFormField(
                  controller: username,
                  onChanged: (mathipu) {
                    marmum();
                  },
                  validator: (mathipu) {
                    if (mathipu!.isEmpty ||
                        !RegExp(r'^[a-zA-Z][a-zA-Z0-9._]{2,19}(?<![._])$')
                            .hasMatch(mathipu)) //regular expression
                    {
                      return "please enter something";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: "Enter your User Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)))),
            ),
            const SizedBox(
              height: 10,
            ),
            //Email
            SizedBox(
              height: 100,
              width: 400,
              child: TextFormField(
                  controller: email,
                  onChanged: (mathipu) {
                    marmum();
                  },
                  validator: (mathipu) {
                    if (mathipu!.isEmpty ||
                        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(mathipu)) //regular expression
                    {
                      return "please enter something";
                    }

                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: "Enter your User Email Id",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)))),

              //user name email cell pass login bt
            ),
            const SizedBox(
              height: 10,
            ),

            //Ph No
            SizedBox(
              height: 100,
              width: 400,
              child: TextFormField(
                  controller: phone,
                  onChanged: (mathipu) {
                    //
                    marmum();
                  },
                  validator: (mathipu) {
                    if (mathipu!.isEmpty ||
                        !RegExp(r'^[6-9]\d{9}$')
                            .hasMatch(mathipu)) //regular expression
                    {
                      return "please enter something";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: "Enter your Phone Number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)))),
            ),
            const SizedBox(
              height: 10,
            ),

            //Pass
            SizedBox(
              height: 100,
              width: 400,
              child: TextFormField(
                  controller: pass,
                  onChanged: (mathipu) {
                    marmum();
                  },
                  validator: (mathipu) {
                    if (mathipu!.isEmpty ||
                        !RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$')
                            .hasMatch(mathipu)) //regular expression
                    {
                      return "please enter something";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: "Enter your Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)))),
            ),

            Visibility(
              visible: show,
              child: ElevatedButton(
                  onPressed: () {
                    if (validkey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const gt()));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text(
                              'Please enter correct username and password')));
                    }
                  },
                  child: const Text("login")),
            ),
          ],
        ),
      ),
    );
  }
}
