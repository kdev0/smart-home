import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class Item {
  static String _genUuid() {
    const uuid = Uuid();

    return uuid.v4();
  }

  final String id = Item._genUuid();
  final Widget? image;
  final String title;

  Item({this.image, required this.title});
}
