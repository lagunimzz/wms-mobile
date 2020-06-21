import 'package:flutter/material.dart';
import 'package:wmsmobile/components/header_bar/header_bar.dart';

class ZoneMain extends StatefulWidget {
  @override
  _ZoneMainState createState() => _ZoneMainState();
}

class _ZoneMainState extends State<ZoneMain> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: HeaderBar(),

    );
  }
}
