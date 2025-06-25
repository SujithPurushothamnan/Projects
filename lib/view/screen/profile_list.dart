import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileList extends StatefulWidget {
  const ProfileList({super.key});

  @override
  State<ProfileList> createState() => _ProfileListState();
}

class _ProfileListState extends State<ProfileList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: [
          //     Icon(
          //       Icons.settings,
          //       color: Colors.white,
          //       size: 20,
          //     ),
          //     SizedBox(
          //       width: 5,
          //     ),
          //     Text(
          //       "Helps & Settings",
          //       style: GoogleFonts.poppins(color: Colors.white),
          //     )
          //   ],
          // ),
          Column(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Color(0xFF138efb), Color(0xFFe40268)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: CircleAvatar(
                  radius: 38,
                  backgroundColor: Colors.transparent,
                  child: Text(
                    ":)",
                    style:
                        GoogleFonts.poppins(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Profile",
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 12),
              )
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Color(0xFF138efb), Color(0xFFe40268)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: CircleAvatar(
                  radius: 38,
                  backgroundColor: Colors.transparent,
                  child: Text(
                    ":)",
                    style:
                        GoogleFonts.poppins(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Profile",
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 12),
              )
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Color(0xFF138efb), Color(0xFFe40268)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: CircleAvatar(
                  radius: 38,
                  backgroundColor: Colors.transparent,
                  child: Text(
                    ":)",
                    style:
                        GoogleFonts.poppins(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Profile",
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 12),
              )
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Color(0xFF138efb), Color(0xFFe40268)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: CircleAvatar(
                  radius: 38,
                  backgroundColor: Colors.transparent,
                  child: Text(
                    ":)",
                    style:
                        GoogleFonts.poppins(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Profile",
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 12),
              )
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Color(0xFF138efb), Color(0xFFe40268)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: CircleAvatar(
                  radius: 38,
                  backgroundColor: Colors.transparent,
                  child: Text(
                    ":)",
                    style:
                        GoogleFonts.poppins(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Profile",
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 12),
              )
            ],
          ),
        ],
      ),
    );
  }
}
