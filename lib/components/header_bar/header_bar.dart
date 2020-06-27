import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wmsmobile/screens/login/login.dart';

class HeaderBar extends StatelessWidget with PreferredSizeWidget {
  FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    // final prefs = await SharedPreferences.getInstance();
    return AppBar(
      title: Row(
        children: <Widget>[
          Text(
            'WMSImage',
            // + prefs.get('username'),
            style: Theme.of(context).textTheme.headline1,
            textAlign: TextAlign.center,
          ),
          Spacer(),
          IconButton(
              icon: Icon(Icons.exit_to_app),
              color: Colors.white,
              onPressed: () => signOut(context))
        ],
      ),
    );
  }

  void signOut(BuildContext context) {
    _auth.signOut();
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => Login()),
        ModalRoute.withName('/'));
  }

  @override
  Size get preferredSize => new Size.fromHeight(50);
}
