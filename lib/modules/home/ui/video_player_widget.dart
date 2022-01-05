import 'dart:io';

import 'package:dart_vlc/dart_vlc.dart';
import 'package:flutter/material.dart';

class VideoPlayerWidget extends StatelessWidget {
  VideoPlayerWidget({Key? key}) : super(key: key);

  Media media = Media.network('rtsp://admin:admin@192.168.0.99:554/av0_0');

  void openAndPlay() {
    print('open and play');
    player.open(media);
    player.play();
  }

  void play() {
    player.play();
  }

  final Player player = Player(id: 69420);

  @override
  Widget build(BuildContext context) {
    return Video(
      player: player,
      height: 400.0,
      width: 600.0,
      scale: 1.0, // default
      showControls: false, // default
    );
  }
}
