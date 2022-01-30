import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/gen/assets.gen.dart';
import 'package:smart_home/modules/home/bloc/home_screen_bloc.dart';
import 'package:smart_home/modules/menu/ui/menu_screen.dart';
import 'modules/home/ui/home_screen.dart';
import 'gen/colors.gen.dart';
import 'modules/menu/ui/item.dart';
import 'modules/settings/bloc/settings_screen_bloc.dart';
import 'modules/settings/ui/settings_screen.dart';
import 'packages/split_widget/split_widget.dart';
import 'assembly.dart' as assembly;
import 'packages/top_bar_widget/src/top_bar_widget.dart';

void main() {
  assembly.configure();
  runApp(SmartHomeApp());
}

class SmartHomeApp extends StatelessWidget {
  SmartHomeApp({Key? key}) : super(key: key);
  final Map<Item, WidgetBuilder> _availableScreens = {
    Item(image: Assets.images.home.svg(color: Colors.white), title: 'Home'):
        (_) => BlocProvider(
              create: (context) => HomeScreenBloc(),
              child: const HomeScreen(),
            ),
    Item(image: Assets.images.settings.svg(color: Colors.white), title: 'Settings'):
        (_) => BlocProvider(
              create: (context) => SettingsScreenBloc(),
              child: const SettingsScreen(),
            )
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: ColorName.main,
          primarySwatch: Colors.blue,
          primaryColor: ColorName.main),
      home: SplitWidget(
        topBar: const TopBarWidget(),
        menu: MenuScreen(
          selectesId: _availableScreens.keys.first.id,
          items: _availableScreens.keys,
        ),
        content: BlocProvider(
          create: (context) => HomeScreenBloc(),
          child: const HomeScreen(),
        ),
      ),
    );
  }
}
