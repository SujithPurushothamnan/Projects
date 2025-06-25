// ignore: unused_import
import 'package:amazon_ui/view/screen/fullscreen-video-screen.dart';
// ignore: unused_import
import 'package:amazon_ui/view/screen/hotstar_home_page.dart';
import 'package:amazon_ui/view/widget/list_custom.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: depend_on_referenced_packages
import 'package:video_player/video_player.dart';
import 'package:flick_video_player/flick_video_player.dart';

// ignore: unused_import
import 'fullscreen_video_page.dart';

class HotstarVideo extends StatefulWidget {
  final String url;
  const HotstarVideo({super.key, required this.url});

  @override
  State<HotstarVideo> createState() => _HotstarVideoState();
}

class _HotstarVideoState extends State<HotstarVideo> {
  late FlickManager flickManager;

  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.networkUrl(
        Uri.parse(widget.url),
      ),
      autoPlay: true,
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 300,
                    child: FlickVideoPlayer(
                      flickManager: flickManager,
                      flickVideoWithControls: FlickVideoWithControls(
                        videoFit: BoxFit.fitHeight,
                      ),
                      flickVideoWithControlsFullscreen: FlickVideoWithControls(
                        videoFit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    right: 10,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          _buildLanguageButton('Tamil'),
                          SizedBox(width: 20),
                          _buildLanguageButton('English'),
                          SizedBox(width: 20),
                          _buildLanguageButton('Malayalam', width: 85),
                          SizedBox(width: 20),
                          _buildLanguageButton('Hindi'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FullscreenVideoPage(
                              url: widget.url,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.9,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.play_arrow,
                              color: Colors.black,
                              size: 40,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "Watch Now",
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Comedy | Horror | Romance | Couples",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Example: A honeybee flits gracefully from blossom to blossom, its translucent wings shimmering in the sunlight as it extracts sweet nectar. Deep inside each flower, the bee’s proboscis delicately sips the sugary fluid, storing it in its honey stomach.",
                  style: GoogleFonts.poppins(
                    color: Colors.grey.shade400,
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20),
                  _buildIconButton(Icons.add, "Watchlist"),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 24,
                      ),
                      Text(
                        "Share",
                        style: GoogleFonts.poppins(
                          color: Colors.grey.shade400,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  _buildIconButton(Icons.file_download_outlined, "Download"),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 24,
                      ),
                      Text(
                        "Watchlist",
                        style: GoogleFonts.poppins(
                          color: Colors.grey.shade400,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 60),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "More Like This",
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              ListCustom(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLanguageButton(String label, {double width = 60}) {
    return Container(
      height: 25,
      width: width,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 203, 202, 202),
        borderRadius: BorderRadius.circular(16.0),
      ),
      alignment: Alignment.center,
      child: Text(
        label,
        style: GoogleFonts.poppins(fontSize: 12),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildIconButton(IconData icon, String label) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 30,
        ),
        Text(
          label,
          style: GoogleFonts.poppins(
            color: Colors.grey.shade400,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
