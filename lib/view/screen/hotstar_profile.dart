import 'dart:io';
// ignore: unnecessary_import
import 'dart:typed_data';

import 'package:amazon_ui/view/screen/sign_in_page.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class HotstarProfile extends StatefulWidget {
  const HotstarProfile({super.key});

  @override
  State<HotstarProfile> createState() => _HotstarProfileState();
}

class _HotstarProfileState extends State<HotstarProfile> {
  File? _pickedFile;
  Uint8List? _pickedBytes;

  String _profileName = "Sujith";
  bool _isEditingName = false;
  final _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.text = _profileName;
  }

  Future<void> _pickImage() async {
    if (kIsWeb) {
      var result = await FilePicker.platform.pickFiles(type: FileType.image);
      if (result?.files.single.bytes != null) {
        setState(() => _pickedBytes = result!.files.single.bytes);
      }
    } else {
      var picked = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (picked != null) {
        setState(() => _pickedFile = File(picked.path));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget avatar = Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 50),
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: const LinearGradient(
              colors: [Color(0xFF138efb), Color(0xFFe40268)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            image: (_pickedBytes != null || _pickedFile != null)
                ? DecorationImage(
                    fit: BoxFit.cover,
                    image: kIsWeb
                        ? MemoryImage(_pickedBytes!)
                        : FileImage(_pickedFile!) as ImageProvider,
                  )
                : null,
          ),
          child: (_pickedBytes == null && _pickedFile == null)
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      ":)",
                      style: TextStyle(color: Colors.white, fontSize: 36),
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Icon(
                        Icons.edit_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ],
                )
              : null,
        ),
      ],
    );

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            const Icon(Icons.bolt_outlined, color: Colors.yellow, size: 30),
            const SizedBox(width: 8),
            Text(
              "Hotstar",
              style: GoogleFonts.poppins(color: Colors.white, fontSize: 32),
            ),
          ],
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          SizedBox(
            height: 60,
          ),
          Row(
            children: [
              SizedBox(
                height: 30,
                width: 15,
              ),
              Text(
                "Profile",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: _pickImage,
            child: avatar,
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              setState(() {
                _isEditingName = true;
                _nameController.text = _profileName;
              });
            },
            child: _isEditingName
                ? SizedBox(
                    width: 200,
                    child: TextField(
                      controller: _nameController,
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                      textAlign: TextAlign.center,
                      autofocus: true,
                      onSubmitted: (val) {
                        setState(() {
                          _profileName = val;
                          _isEditingName = false;
                        });
                      },
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        _profileName,
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(
                          Icons.edit_outlined,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
          ),
          Spacer(
            flex: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInPage(),
                  ));
            },
            child: Container(
              child: Text(
                "Log Out",
                style: GoogleFonts.poppins(
                  color: Colors.blue,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
