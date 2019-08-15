/*
 * @Author:             Simon Young 
 * @Date:               2019-08-15 11:09:17 
 * @Last Modified by: Simon Young
 * @Last Modified time: 2019-08-15 11:55:41
 * @Description:        Icon Widget Sample
 */
import 'package:flutter/material.dart';
class IconWidgetSample extends StatelessWidget {
  const IconWidgetSample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon Widget'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            /// flutter 自带的icon
            IconButton(
              icon: Icon(Icons.add_circle),
              iconSize: 30,
              // icon颜色
              color: Colors.greenAccent,
              // 按下时，button 水波纹效果
              splashColor: Colors.indigoAccent,
              onPressed: (){},
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Text('IconButton'),
            ),
            
            /// Icon
            Icon(
              Icons.add_shopping_cart,
              size: 30.0,
              color: Colors.blueAccent,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Text('Icon'),
            ),

            /// ImageIcon, 使用自已的png图片，有透明度
            ImageIcon(
              AssetImage('lib/images/icon_wx.png'),
              size: 50.0,
              color: Colors.green,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Text('ImageIcon'),
            ),
          ],
        ),
      ),
    );
  }
}