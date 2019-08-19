import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RowWidgetSample extends StatelessWidget {
  const RowWidgetSample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row Widget'),
      ),
      body: Column(
        children: <Widget>[
          Text('水平排列'),
          Padding(
            padding: EdgeInsets.all(20),
            // Row Widget
            child: Row(
              children: <Widget>[
                Text('Text Widget'),
                RaisedButton(
                  child: Text('Raised Button'),
                  onPressed: (){},
                ),
                RaisedButton(
                  child: Text('Raised Button2'),
                  textColor: Colors.blueAccent,
                  onPressed: (){},
                ),
              ],
            ),
          )
          
        ],
      ),
    );
  }
}