import 'package:flutter/material.dart';
import 'package:wmsmobile/models/User.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HeaderBar extends StatelessWidget with PreferredSizeWidget {

  @override
  Widget build(BuildContext context)  {
    return _buildScreen(context);

  }
  _buildScreen(BuildContext context) async
  {
    final prefs = await SharedPreferences.getInstance();
   return  AppBar(
      title: Text(
        'WMSImage' + prefs.get('username'),
        style: Theme.of(context).textTheme.headline1,
        textAlign: TextAlign.center,
      ),

    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(50);
}
