import 'package:flutter/material.dart';

class FlexWidgetSample extends StatelessWidget {
  const FlexWidgetSample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flex Widget'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        // Flex
        child: Flex(
          direction: Axis.horizontal, // Row
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.redAccent,
                child: Text(
                  'Text1: 2/5'
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blueAccent,
                child: Text('Text2'),
              )
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.greenAccent,
                child: Text('Text3: 2/5'),
              ),
            ),
          ],
        ),
      )
    );
  }
}