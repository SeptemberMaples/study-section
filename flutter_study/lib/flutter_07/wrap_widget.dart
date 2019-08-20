import 'package:flutter/material.dart';

class WrapWidgetSample extends StatefulWidget {
  WrapWidgetSample({Key key}) : super(key: key);

  _WrapWidgetSampleState createState() => _WrapWidgetSampleState();
}

class _WrapWidgetSampleState extends State<WrapWidgetSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap Widget'),
        primary: true,
      ),
      // Wrap 布局，子元素自动换行
      body: Wrap(
        spacing: 10.0,
        runSpacing: 10.0,
        children: <Widget>[
          Text(
            '礼物',
            style: TextStyle(
              backgroundColor: Colors.greenAccent,
              fontSize: 16
            )
          ),
          Text(
            '下雨天去郊游',
            style: TextStyle(
              backgroundColor: Colors.greenAccent,
              fontSize: 16
            )
          ),
          Text(
            '我爸爸',
            style: TextStyle(
              backgroundColor: Colors.greenAccent,
              fontSize: 16
            )
          ),
          Text(
            '我妈妈',
            style: TextStyle(
              backgroundColor: Colors.greenAccent,
              fontSize: 16
            )
          ),
          Text(
            '给爸爸的船',
            style: TextStyle(
              backgroundColor: Colors.greenAccent,
              fontSize: 16
            )
          ),
          Text(
            '美丽星期五',
            style: TextStyle(
              backgroundColor: Colors.greenAccent,
              fontSize: 16
            )
          ),
          Text(
            '给爸爸的船',
            style: TextStyle(
              backgroundColor: Colors.greenAccent,
              fontSize: 16
            )
          ),
          Text(
            '给爸爸的船',
            style: TextStyle(
              backgroundColor: Colors.greenAccent,
              fontSize: 16
            )
          ),
        ],
      ),
    );
  }
}