import 'package:flutter/material.dart';

class RowWidgetSample2 extends StatelessWidget {
  const RowWidgetSample2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row Widget'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          // 水平方向左对齐
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Row默认水平排列', textAlign: TextAlign.left,),
            /// Row默认水平排列
            Row(
              children: <Widget>[
                RaisedButton(
                  child: Text('Button'),
                  onPressed: (){},
                ),
                RaisedButton(
                  child: Text('Button2'),
                  color: Colors.greenAccent,
                  onPressed: (){},
                ),
                Text('Text Widget')
              ],
            ),
            SizedBox(
              height: 20,
            ),

            /// Row 水平方向居中
            Text('Row 水平方向居中'),
            Row(
              // Row的主轴是横向轴
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('Button'),
                  onPressed: (){},
                ),
                RaisedButton(
                  child: Text('Button2'),
                  color: Colors.greenAccent,
                  onPressed: (){},
                ),
                Text('Text Widget')
              ],
            ),

            SizedBox(
              height: 20,
            ),

            /// Row 水平方向布局-spaceAround
            Text('将主轴方向上的空白区域均分，使得子元素之间的空白区域相等'),
            Row(
              // Row的主轴是横向轴
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  child: Text('Button'),
                  onPressed: (){},
                ),
                RaisedButton(
                  child: Text('Button2'),
                  color: Colors.greenAccent,
                  onPressed: (){},
                ),
                Text('Text Widget')
              ],
            ),

            /// Row 垂直方向的排列
            SizedBox(
              height: 20,
            ),
            Text('Row 交叉属性：在交叉轴方向的对齐方式，Row 是纵向轴, 垂直方向的排列'),
            Text('Row 交叉属性：start'),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Expanded 响应式布局
                Expanded(
                  child: (
                    Text('The Row widget does not scroll (and in general it is considered an error to have more children in a Row than will fit in the available room). If you have a line of widgets and want them to be able to scroll if there is insufficient room, consider using a ListView. ')
                  )
                ),
                RaisedButton(
                  child: Text('button'),
                  onPressed: () {},
                )
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}