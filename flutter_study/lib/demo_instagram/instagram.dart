// 仿写 Instagram demo
import 'package:flutter/material.dart';

class InstagramDemo extends StatefulWidget {
  InstagramDemo({Key key}) : super(key: key);

  _InstagramDemoState createState() => _InstagramDemoState();
}

class _InstagramDemoState extends State<InstagramDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram'),
      ),
      body: Container(),
    );
  }
}