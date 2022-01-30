import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/settings_screen_bloc.dart';
import '../bloc/settings_screen_state.dart';
import '../../../gen/colors.gen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<SettingsScreenBloc, SettingsScreenState>(
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
