import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_videos/select_file_video_player_view.dart';
import 'package:flutter_videos/video_player_view.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Video Player'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: const [
            VideoPlayerView(
              source: 'assets/bee.mp4',
              placeholder:
                  'https://media.wnyc.org/i/1400/1400/l/80/1/ScienceFriday_WNYCStudios_1400.jpg',
              dataSourceType: DataSourceType.asset,
            ),
            SizedBox(
              height: 20,
            ),
            VideoPlayerView(
              source:
                  'http://vfx.mtime.cn/Video/2019/02/04/mp4/190204084208765161.mp4',
              placeholder:
                  'https://media.wnyc.org/i/1400/1400/l/80/1/ScienceFriday_WNYCStudios_1400.jpg',
              dataSourceType: DataSourceType.network,
            ),
            SizedBox(
              height: 20,
            ),
            SelectFileVideoPlayerView(),
          ],
        ),
      ),
    );
  }
}
