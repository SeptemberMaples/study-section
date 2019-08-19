import 'package:flutter/material.dart';

class StackWidgetSample extends StatelessWidget {
  const StackWidgetSample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Widget'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            // Stack 层叠布局
            Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                Container(
                  width: 300,
                  height: 300,
                  color: Colors.grey,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.teal,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
                Text(
                  "Stack",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),

            SizedBox(
              height: 20,
            ),
            // IndexedStack层叠布局
            IndexedStack(
              // 指定显示的子元素序号，其余子元素隐藏
              index: 2,
              children: <Widget>[
                Container(
                  width: 300,
                  height: 300,
                  color: Colors.grey,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.teal,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
                Text(
                  "Stack",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}