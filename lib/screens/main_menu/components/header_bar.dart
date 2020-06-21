import 'package:flutter/material.dart';

class HeaderBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'WMSImage',
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(50);
}
