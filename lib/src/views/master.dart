import 'package:flutter/material.dart';
import 'package:meetup_paris/src/packages/platform/platform.dart';
import 'package:meetup_paris/src/routes/detail.dart';
import 'package:rc_router/rc_router.dart';

class MasterView extends StatefulWidget {
  @override
  _MasterViewState createState() => _MasterViewState();
}

class _MasterViewState extends State<MasterView> {
  final platform = Platform();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${platform.name}'),
      ),
      body: ListView.builder(
        itemBuilder: (c, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                RcRoute.generateRoute(
                  DetailRoute.routePath,
                  pathParams: {
                    'index': '$index',
                  },
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('$index'),
            ),
          );
        },
      ),
    );
  }
}
