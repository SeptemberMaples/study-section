import 'package:flutter/material.dart';

class ButtonWidgetSample extends StatefulWidget {
  ButtonWidgetSample({Key key}) : super(key: key);

  _ButtonWidgetSampleState createState() => _ButtonWidgetSampleState();
}

class _ButtonWidgetSampleState extends State<ButtonWidgetSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Button Widget 介绍')
       ),
       body: Container(
         padding: EdgeInsets.all(20),
         child: Column(
           children: <Widget>[
            //  返回按钮
             BackButton(
               color: Colors.blue,
             ),

            //  关闭按钮
            CloseButton(),

            ///  flatButton
            ButtonBar(
              children: <Widget>[
                // 正常状态
                FlatButton(
                  child: Text(
                    '一个Flat按钮', 
                  ),
                  // 按钮背景色
                  color: Colors.green,
                  // 按钮文字的颜色
                  textColor: Colors.white,
                  // textTheme: ButtonTextTheme.primary,
                  onPressed: () => {},
                ),

                // 禁用状态
                FlatButton(
                  child: Text(
                    '禁用的Flat按钮', 
                  ),
                  disabledColor: Colors.grey[300],
                  disabledTextColor: Colors.grey,
                  onPressed: null,
                ),
              ],
            ),

            /// MaterialButton
            MaterialButton(
              child: Text('MaterialButton'),
              onPressed: () => {},
            ),

            /// FloatingActionButton
            FloatingActionButton(
              child: Text('Float'),
              onPressed: () => {},
            ),

            /// RaisedButton
            RaisedButton(
              child: Text('RaisedButton'),
              onPressed: () => {},
            ),

            // OutlineButton
            OutlineButton(
              child: Text('OutlineButton'),
              onPressed: () => {},
              textColor: Colors.blue,
              borderSide: BorderSide(
                color: Colors.blue,
              ),
            ),

            /// OutlineButton + icon
            OutlineButton.icon(
              icon: Icon(Icons.add_to_photos, size: 18),
              label: Text('带icon的按钮'),
              onPressed: () => {},
            ),

            /// IconButton
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () => {},
              color: Colors.green, // icon的颜色
              highlightColor: Colors.blue,  // press时，iconbutton的背景色
              tooltip: 'add iconbutton', // press时的提示
            ),
            Text('IconButton'),

            
           ],
         ),
       ),

    );
  }
}