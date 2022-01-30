import 'package:flutter/material.dart';
import '../../../gen/colors.gen.dart';

import 'item.dart';

mixin _Constants {
  static const radius = BorderRadius.only(
    topLeft: Radius.circular(50),
    bottomLeft: Radius.circular(50),
  );

  static const rowElementPadding = EdgeInsets.symmetric(horizontal: 10);
  static const rowPadding = EdgeInsets.only(left: 60);
}

class MenuScreen extends StatelessWidget {
  final String? selectesId;
  final Iterable<Item> items;
  const MenuScreen({
    Key? key,
    this.selectesId,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: items.map(flexing).toList(),
        ),
      );
}

extension _Private on MenuScreen {
  Widget flexing(Item item) {
    return Flexible(
      child: widget(item: item),
      fit: FlexFit.loose,
    );
  }

  Widget widget({required Item item}) => ConstrainedBox(
        constraints: const BoxConstraints.tightForFinite(height: 50),
        child: Stack(
          children: [
            Padding(
              padding: _Constants.rowPadding,
              child: Container(
                decoration: BoxDecoration(
                  color: (item.id == selectesId && selectesId != null)
                      ? ColorName.tint1.withOpacity(0.5)
                      : null,
                  borderRadius: _Constants.radius,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                item.image ?? Container(),
                Padding(
                  padding: _Constants.rowElementPadding,
                  child: Center(
                    child: Text(
                      item.title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
