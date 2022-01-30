import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/home_screen_bloc.dart';
import '../bloc/home_screen_state.dart';
import '../../../gen/colors.gen.dart';

// mixin _Constants {
//   static const rtspUri = 'rtsp://192.168.0.99:554/av0_0';
//   static const rtspFull = 'rtsp://admin:admin@192.168.0.99:554/av0_0';

//   // Layout
//   static const radius = BorderRadius.only(topLeft: Radius.circular(50));
// }

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<HomeScreenBloc, HomeScreenState>(
        builder: (context, state) => Scaffold(
          body: Container(
            decoration: BoxDecoration(
              // borderRadius: _Constants.radius,
              color: ColorName.tint1.withOpacity(0.5),
            ),
          ),
        ),
      );
}
