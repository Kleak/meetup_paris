import 'package:flutter/widgets.dart';
import 'package:meetup_paris/src/views/master.dart';
import 'package:rc_router/rc_router.dart';

class MasterRoute extends RcRoute {
  static String routePath = '/';

  MasterRoute() : super(path: routePath);

  @override
  Widget build(BuildContext context) {
    return MasterView();
  }
}
