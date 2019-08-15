/*
 * @Author:             Simon Young 
 * @Date:               2019-08-14 17:48:24 
 * @Last Modified by: Simon Young
 * @Last Modified time: 2019-08-14 17:48:46
 * @Description:        AppBar Widget Sample
 */
import 'package:flutter/material.dart';

class AppBarWidgetSample extends StatefulWidget {
  AppBarWidgetSample({Key key}) : super(key: key);

  _AppBarWidgetSampleState createState() => _AppBarWidgetSampleState();
}

class _AppBarWidgetSampleState extends State<AppBarWidgetSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => {},
        ),
        // title
        title: Text('AppBar Widget 学习'),
        centerTitle: true,
        // actions
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.access_time),
            padding: EdgeInsets.all(10),
            onPressed: () => {},
          ),
          IconButton(
            icon: Icon(Icons.card_giftcard),
            padding: EdgeInsets.all(10),
            onPressed: () => {},
          ),
        ],
        backgroundColor: Colors.redAccent,
        // 阴影大小
        elevation: 10,
      ),
    );
  }
}