import 'package:flutter/material.dart';

class SplitWidget extends StatelessWidget {
  final Widget menu;
  final Widget content;
  final PreferredSizeWidget topBar;
  final double _menuWidth;

  const SplitWidget({
    Key? key,
    required this.menu,
    required this.content,
    required this.topBar,
    double menuWidth = 240,
  })  : _menuWidth = menuWidth,
        super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: topBar,
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints.tightForFinite(width: _menuWidth),
              child: menu,
            ),
            Expanded(
              // flex: 4,
              child: content,
            ),
          ],
        ),
      );
}
