import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/gen/assets.gen.dart';
import 'package:smart_home/modules/home/ui/top_bar_widget.dart';
import 'package:smart_home/modules/home/ui/video_player_widget.dart';
import '../../../gen/colors.gen.dart';
import '../bloc/home_screen_bloc.dart';
import '../bloc/home_screen_state.dart';

mixin _Constants {
  // Colors
  static const backgroundColor = ColorName.main;
  static const rtspUri = 'rtsp://192.168.0.99:554/av0_0';
  static const rtspFull = 'rtsp://admin:admin@192.168.0.99:554/av0_0';

  // Layout
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final player = VideoPlayerWidget();
    return BlocBuilder<HomeScreenBloc, HomeScreenState>(
      builder: (context, state) => Scaffold(
        backgroundColor: _Constants.backgroundColor,
        body: Column(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints.loose(const Size.fromHeight(128)),
              child: TopBarWidget(),
            ),
            Expanded(
              child: Row(
                children: [
                  Container(
                    color: Colors.blueGrey[900],
                    width: 100,
                    child: Column(
                      children: [
                        GestureDetector(
                          child: Assets.images.home.svg(
                            color: Colors.white38,
                          ),
                          onTap: player.openAndPlay,
                        )
                      ],
                    ),
                  ),
                  Flexible(
                    child: Container(
                      color: Colors.white38,
                      child: player,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
