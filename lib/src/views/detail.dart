import 'package:flutter/material.dart';

class DetailView extends StatelessWidget {
  final String index;

  const DetailView({Key key, @required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$index'),
      ),
      body: Center(
        child: Text('$index'),
      ),
    );
  }
}
