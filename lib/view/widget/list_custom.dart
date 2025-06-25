import 'dart:math';
import 'package:flutter/material.dart';
import 'package:amazon_ui/view/screen/hotstar_video.dart';

class ListCustom extends StatefulWidget {
  const ListCustom({super.key});

  @override
  State<ListCustom> createState() => _ListCustomState();
}

class _ListCustomState extends State<ListCustom> {
  late final List<String> imagePaths;
  late final List<String> videoUrls;

  @override
  void initState() {
    super.initState();

    // Initialize
    final imgs = List.generate(17, (i) => "assets/images/m${i + 1}.jpeg");
    final vids = [
      'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
      'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4',
      'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4',
      'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4',
      'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4',
      'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4',
      'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4',
      'https://test-videos.co.uk/vids/bigbuckbunny/mp4-h264/720/Big_Buck_Bunny_720_10s_1MB.mp4',
      'https://test-videos.co.uk/vids/bigbuckbunny/mp4-h264/1080/Big_Buck_Bunny_1080_10s_5MB.mp4',
      'https://filesamples.com/samples/video/mp4/sample_640x360.mp4',
      'https://filesamples.com/samples/video/mp4/sample_1280x720.mp4',
      'https://filesamples.com/samples/video/mp4/sample_1920x1080.mp4',
      'https://download.blender.org/peach/bigbuckbunny_movies/big_buck_bunny_480p_surround-fix.avi',
      'https://download.blender.org/peach/trailer/trailer_480p.mov',
      'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/VolkswagenGTIReview.mp4',
      'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4',
      'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4',
    ];

    final indices = List<int>.generate(min(imgs.length, vids.length), (i) => i);
    indices.shuffle(Random());
    imagePaths = indices.map((i) => imgs[i]).toList();
    videoUrls = indices.map((i) => vids[i]).toList();
  }

  @override
  Widget build(BuildContext context) {
    final count = min(imagePaths.length, videoUrls.length);

    return SizedBox(
      height: 250,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: count,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => HotstarVideo(url: videoUrls[index]),
                  ),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  imagePaths[index],
                  fit: BoxFit.cover,
                  width: 150,
                  height: 250,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
