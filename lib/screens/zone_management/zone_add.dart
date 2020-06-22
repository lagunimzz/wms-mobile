import 'package:flutter/material.dart';
import 'package:wmsmobile/components/header_bar/header_bar.dart';
import 'package:wmsmobile/components/footer_bar/footer_bar.dart';
import 'package:wmsmobile/screens/zone_management/components/BodyAdd.dart';

class ZoneAdd extends StatefulWidget {
  @override
  _ZoneAddState createState() => _ZoneAddState();
}

class _ZoneAddState extends State<ZoneAdd> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: HeaderBar(),
      body: BodyAdd(),
      bottomNavigationBar: FooterBar(),
      floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton.extended(
              label: Text("Camera"),
              onPressed: null,
              icon: Icon(Icons.camera),
              foregroundColor: Colors.white,
              backgroundColor: Colors.blueAccent,
              heroTag: "camera",
            ),
            SizedBox(width: 15),
            FloatingActionButton.extended(
              label: Text("Gallery"),
              onPressed: null,
              icon: Icon(Icons.photo_library),
              foregroundColor: Colors.white,
              backgroundColor: Colors.blueAccent,
              heroTag: "gallery",
              hoverColor: Colors.amber,
              focusColor: Colors.amber,
            )
          ]
      )
    );
  }
}
