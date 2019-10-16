import 'package:flutter/material.dart';
import 'package:meetup_paris/src/routes/detail.dart';
import 'package:meetup_paris/src/routes/master.dart';
import 'package:rc_router/rc_router.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  RcRoutes _rcRoutes;

  @override
  void initState() {
    super.initState();
    _rcRoutes = RcRoutes(
      routes: [
        MasterRoute(),
        DetailRoute(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _rcRoutes.onGeneratedRoute,
    );
  }
}
