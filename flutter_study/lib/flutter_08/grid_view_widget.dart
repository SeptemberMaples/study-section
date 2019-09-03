// GridView widget 实例
import 'package:flutter/material.dart';

class GridViewSample extends StatefulWidget {
  GridViewSample({Key key}) : super(key: key);

  _GridViewSampleState createState() => _GridViewSampleState();
}

class _GridViewSampleState extends State<GridViewSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Widget'),
      ),
      body: gridView1(),
    );
  }


  // 简单应用 GridView.count 构造
  Widget gridView1() {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20.0),
      crossAxisSpacing: 10.0,
      // 每行多少个item
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      children: <Widget>[
        const Text('He\'d have you all unravel at the'),
        const Text('Heed not the rabble'),
        const Text('Sound of screams but the'),
        const Text('Who scream'),
        // Image.asset(
        //   'lib/images/assets_image.jpg',
        //   fit: BoxFit.cover,
        // ),
        // Image.asset(
        //   'lib/images/assets_image.jpg',
        //   fit: BoxFit.cover,
        // ),
        // Image.asset(
        //   'lib/images/assets_image.jpg',
        //   fit: BoxFit.cover,
        // ),
      ],
    );
  }

  ///  GridView构造
  Widget gridView2() {
    return GridView(
      padding: EdgeInsets.all(20.0),
      ///可以固定设置每行item个数
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      children: <Widget>[
        Image.asset(
          'lib/images/assets_image.jpg',
          fit: BoxFit.cover,
        ),
        Image.asset(
          'lib/images/assets_image.jpg',
          fit: BoxFit.cover,
        ),
        Image.asset(
          'lib/images/assets_image.jpg',
          fit: BoxFit.cover,
        ),
        Image.asset(
          'lib/images/assets_image.jpg',
          fit: BoxFit.cover,
        ),
        Image.asset(
          'lib/images/assets_image.jpg',
          fit: BoxFit.cover,
        ),
      ],
    );
  }


  /// GridView. 


}