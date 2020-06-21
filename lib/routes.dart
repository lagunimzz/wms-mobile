import 'package:flutter/widgets.dart';
import 'package:wmsmobile/screens/example1/examplescreen1.dart';
import 'package:wmsmobile/screens/example2/examplescreen2.dart';
import 'package:wmsmobile/screens/main_menu/main_menu.dart';
import 'package:wmsmobile/screens/login/login.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => Login(),
  "/ExScreen2": (BuildContext context) => ExScreen2(),
};
