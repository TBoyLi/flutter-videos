import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_videos/video_player_view.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class SelectFileVideoPlayerView extends StatefulWidget {
  const SelectFileVideoPlayerView({Key? key}) : super(key: key);

  @override
  _SelectFileVideoPlayerViewState createState() =>
      _SelectFileVideoPlayerViewState();
}

class _SelectFileVideoPlayerViewState extends State<SelectFileVideoPlayerView> {
  File? _file;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () async {
            final file =
                await ImagePicker().pickVideo(source: ImageSource.gallery);
            if (file != null) {
              setState(() => _file = File(file.path));
            }
          },
          child: const Text(
            '选择视频文件',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        if (_file != null)
          VideoPlayerView(
            source: _file?.path ?? '',
            placeholder: '',
            dataSourceType: DataSourceType.file,
          ),
      ],
    );
  }
}
