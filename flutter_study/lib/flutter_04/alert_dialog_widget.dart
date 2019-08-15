/*
 * @Author:             Simon Young 
 * @Date:               2019-08-15 14:10:33 
 * @Last Modified by: Simon Young
 * @Last Modified time: 2019-08-15 15:46:19
 * @Description:        AlertDialog Wdiget Sample
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum Option { A, B, C }

class AlertDialogWidgetSample extends StatefulWidget {
  AlertDialogWidgetSample({Key key}) : super(key: key);
  _AlertDialogWidgetSampleState createState() => _AlertDialogWidgetSampleState();
}

class _AlertDialogWidgetSampleState extends State<AlertDialogWidgetSample> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialog Wdiget'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('点击出AlertDialog'),
              onPressed:_showDialog1,
            ),
            RaisedButton(
              child: Text('点击出自定义Dialog'),
              onPressed: _showDialog2,
            ),
            RaisedButton(
              child: Text('AboutDialog'),
              onPressed: _showDialog3,
            ),
            RaisedButton(
              child: Text('iOS风格Dialog'),
              onPressed: _showDialog4,
            ),
          ],
        ),
      ),
    );
  }

  // AlertDialog 标题、内容、操作按钮
  Future<void> dialog1(BuildContext context) async {
    return showDialog<void>(
      context: context,
      // 点击周围空白区域对话框是否消失
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("提示"),
          content: new Text("是否退出"),
          actions: <Widget>[
            new FlatButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: new Text("取消")),
            new FlatButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: new Text("确定")
            ),
          ],
        );
      });
  }


  // 自定义Dialog
  Future<void> dialog2(BuildContext context) async {
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return Center(
            child: Text(
              '正在加载...',
              style: TextStyle(
                color: Colors.black,
                backgroundColor: Colors.white,
                decoration: TextDecoration.none
              ),
            ),
          );
        });
  }

// AboutDialog
  Future<void> dialog3(BuildContext context) async {
    return showAboutDialog(
      context: context,
      applicationName: "应用名称",
      applicationVersion: "1.0.0",
      applicationIcon: Icon(Icons.apps),
      applicationLegalese: "内容"
    );
  }

  // AlertDialog 标题、内容、操作按钮
  Future<void> dialog4(BuildContext context) async {
    return showCupertinoDialog<void>(
      context: context,
      // 点击周围空白区域对话框是否消失
      // barrierDismissible: false,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text("提示"),
          content: new Text("是否退出"),
          actions: <Widget>[
            new FlatButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: new Text("取消")),
            new FlatButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: new Text("确定")
            ),
          ],
        );
      });
  }

  _showDialog1() {
    dialog1(context);
  }
  _showDialog2() {
    dialog2(context);
  }
  _showDialog3() {
    dialog3(context);
  }
  _showDialog4() {
    dialog4(context);
  }


}
