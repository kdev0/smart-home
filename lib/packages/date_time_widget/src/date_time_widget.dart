import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:smart_home/gen/colors.gen.dart';

class DateTimeWidget extends StatelessWidget {
  const DateTimeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();

    final dateFormat = DateFormat('EEEE, dd MMMM yyyy');
    final timeThemeStyle = Theme.of(context)
        .textTheme
        .headline2
        ?.copyWith(color: ColorName.tint10);
    final dateThemeStyle =
        Theme.of(context).textTheme.bodyText1?.copyWith(color: ColorName.tint3);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          DateFormat.Hm().format(now),
          style: timeThemeStyle,
        ),
        Text(
          dateFormat.format(now),
          style: dateThemeStyle,
        ),
      ],
    );
  }
}
