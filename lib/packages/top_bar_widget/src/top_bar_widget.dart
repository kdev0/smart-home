import 'package:flutter/material.dart';
import 'package:smart_home/packages/date_time_widget/date_time_widget.dart';

class TopBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const TopBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Row(
          children: const [
            Spacer(),
            Flexible(
              child: Center(
                child: DateTimeWidget(),
              ),
            ),
          ],
        ),
      );

  @override
  Size get preferredSize => const Size(double.infinity, 100);
}
