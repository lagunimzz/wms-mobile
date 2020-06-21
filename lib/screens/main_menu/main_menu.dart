import 'package:flutter/material.dart';
import 'package:wmsmobile/models/User.dart';
import 'package:wmsmobile/screens/main_menu/components/body.dart';
import 'package:wmsmobile/components/footer_bar/footer_bar.dart';
import 'package:wmsmobile/components/header_bar/header_bar.dart';
import 'package:wmsmobile/models/User.dart';

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  void initState() {
    super.initState();

    // example2Bloc = Example2Bloc();
  }

  @override
  void dispose() {
    // example2Bloc.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: HeaderBar(),
        body: Body(),
        bottomNavigationBar: FooterBar(),
      ),
    );
  }
}
