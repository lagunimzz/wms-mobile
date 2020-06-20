import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Theme.of(context).accentColor,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 39,
              vertical: 18,
            ),
            child: Container(
              child: Image.asset('images/wms_main_image.jpeg'),
            ),
          ),
        ),
      ],
    );
  }
}
