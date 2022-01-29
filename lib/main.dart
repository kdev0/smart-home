import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/modules/home/bloc/home_screen_bloc.dart';
import 'package:smart_home/modules/home/ui/home_screen.dart';
import 'assembly.dart' as assembly;

void main() {
  assembly.configure();
  runApp(const SmartHomeApp());
}

class SmartHomeApp extends StatelessWidget {
  const SmartHomeApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => HomeScreenBloc(),
        child: const HomeScreen(),
      ),
    );
  }
}
