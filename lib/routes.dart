import 'package:flutter/widgets.dart';
import 'package:wmsmobile/screens/example1/examplescreen1.dart';
import 'package:wmsmobile/screens/example2/examplescreen2.dart';
import 'package:wmsmobile/screens/DCManagement/ManagementScreen.dart';
import 'package:wmsmobile/screens/login/login.dart';
import 'package:wmsmobile/screens/main_menu/main_menu.dart';
import 'package:wmsmobile/screens/zone_management/zone_main.dart';
import 'package:wmsmobile/screens/product_type/product_type.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => Login(),
  "/MainMenu": (BuildContext context) => MainMenu(),
  "/Management": (BuildContext context) => ManagementScreen(),
  "/ZoneMain": (BuildContext context) => ZoneMain(),
  "/ProductType": (BuildContext context) => ProductType(),
};
