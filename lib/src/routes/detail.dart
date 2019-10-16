import 'package:flutter/widgets.dart';
import 'package:meetup_paris/src/views/detail.dart';
import 'package:provider/provider.dart';
import 'package:rc_router/rc_router.dart';

class DetailRoute extends RcRoute {
  static String routePath = '/:index';

  DetailRoute() : super(path: routePath);

  @override
  Widget build(BuildContext context) {
    final routeParams = Provider.of<RcRouteParams>(context, listen: false);
    return DetailView(
      index: routeParams.pathParams['index'],
    );
  }
}
