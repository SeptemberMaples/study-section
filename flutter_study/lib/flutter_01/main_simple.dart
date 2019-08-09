import 'package:flutter/material.dart';

//void main()为入口方法,main.dart文件独有
void main() => runApp(MyMainApp());

class MyMainApp extends StatefulWidget {
  //这里可以简写为：State<StatefulWidget> createState() => _MyMainPageState();
  @override
  State<StatefulWidget> createState() {
    return _MyMainPageState();
  }
}

class _MyMainPageState extends State<MyMainApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //页面
      home: Scaffold(
        appBar: AppBar(
          title: Text('标题'),
        ),
        body: Center(
          child: Text("我是内容"),
        ),
      ),
    );
  }
}