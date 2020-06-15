import 'package:flutter/material.dart';
import 'package:wmsmobile/theme/style.dart';
import 'package:wmsmobile/routes.dart';
import 'package:wmsmobile/bloc/bloc-prov-tree.dart';
import 'package:wmsmobile/bloc/bloc-prov.dart';
import 'package:wmsmobile/blocs/blocs.dart';
import 'blocs/blocs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProviderTree(
      blocProviders: <BlocProvider>[
        BlocProvider<AuthBloc>(bloc: AuthBloc()),
        BlocProvider<PrefBloc>(bloc: PrefBloc()),
      ],
      child: MaterialApp(
        title: 'ExampleApp',
        theme: appTheme(),
        initialRoute: '/',
        routes: routes,
      ),
    );
  }
}
