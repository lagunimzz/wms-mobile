import 'package:flutter/material.dart';
import 'package:wmsmobile/components/header_bar/header_bar.dart';
import 'package:wmsmobile/components/footer_bar/footer_bar.dart';
import 'package:wmsmobile/screens/zone_management/components/BodyMain.dart';

class ZoneMain extends StatefulWidget {
  @override
  _ZoneMainState createState() => _ZoneMainState();
}

class _ZoneMainState extends State<ZoneMain> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: HeaderBar(),
      body: BodyMain(),
      bottomNavigationBar: FooterBar(),
      floatingActionButton: new FloatingActionButton(
        onPressed: null,
        child: new Icon(Icons.add),
        backgroundColor: Colors.indigoAccent,
      ),
    );
  }
}
