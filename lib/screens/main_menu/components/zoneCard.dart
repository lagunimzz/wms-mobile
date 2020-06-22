import 'package:flutter/material.dart';

class ZoneCard extends StatefulWidget {


  @override
  _ZoneCardState createState() => _ZoneCardState();
}

class _ZoneCardState extends State<ZoneCard> {
  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Container(
        child: new Row(
          children: <Widget>[
            new CircleAvatar(
              child: new Text("test"),
            )
          ],
        ),
      ),
    );
  }
}
