import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class TextWidgetSample extends StatelessWidget {
  const TextWidgetSample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Widget 用法介绍'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            // 最基础用法
            Text('Text 最基础用法'),
            // TextStyle 字体相关、字号、颜色、透明度、下划线等
            Text(
              '设置文字样式',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.green,
                backgroundColor: Colors.black87,
                // background: Paint()..color,  // 同上面的backgroundColor
                decoration: TextDecoration.underline,
                decorationThickness: 2,
                letterSpacing: 5.0
              ),
              textWidthBasis: TextWidthBasis.longestLine,
            ),
            // 换行、裁剪
            Text(
              '文字换行，超出的文字用省略号表示.文字换行，超出的文字用省略号表示.文字换行，超出的文字用省略号表示.文字换行，超出的文字用省略号表示',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Text.rich()
            Text.rich(TextSpan(
              text: 'TextSpan',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 30.0,
                decoration: TextDecoration.none,
              ),
              children: <TextSpan>[
                new TextSpan(
                  text: '拼接1',
                  style: new TextStyle(
                    color: Colors.teal,
                  ),
                ),
                new TextSpan(
                  text: '拼接2',
                  style: new TextStyle(
                    color: Colors.teal,
                  ),
                ),
                new TextSpan(
                  text: '拼接3有点击事件',
                  style: new TextStyle(
                    color: Colors.yellow,
                  ),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      //增加一个点击事件
                      print(
                          '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@');
                    },
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}