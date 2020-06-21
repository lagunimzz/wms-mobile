import 'package:flutter/widgets.dart';
import 'package:wmsmobile/screens/example1/examplescreen1.dart';
import 'package:wmsmobile/screens/example2/examplescreen2.dart';
import 'package:wmsmobile/screens/DCManagement/ManagementScreen.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => ExScreen1(),
  "/ExScreen2": (BuildContext context) => ExScreen2(),
  "/Management": (BuildContext context) => ManagementScreen(),
};
