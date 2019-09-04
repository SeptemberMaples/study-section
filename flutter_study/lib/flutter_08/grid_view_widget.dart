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
      body: gridView3(),
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


  /// GridView.builder 构造
  Widget gridView3() {
    return GridView.builder(
      padding: EdgeInsets.all(10),
      // item总数
      itemCount: 30,
      // 构建item
      itemBuilder: (BuildContext context, int index) {
        // GridTile可以构造带有头部、底部、中间内容的item
        return GridTile(
          header: GridTileBar(
            title: Text(
              'header',
              style: TextStyle(color: Colors.green)
            ),
            subtitle: Text(
              'subtitle',
              style: TextStyle(color: Colors.blueGrey)
            ),
          ),
          child: Image.asset(
            'lib/images/assets_image.jpg',
            fit: BoxFit.cover,
          ),
          footer: GridTileBar(
            title: Text(
              'bottom',
              style: TextStyle(
                backgroundColor: Colors.black
              )
            ),
          ),
        );
      },

      // GridView排列属性设置
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0
      ),
    );
  } 


  /// GridView.custom  构建
  Widget gridView4() {
    return GridView.custom(
      // 设置GridView属性
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10
      ),

      // 设置item属性
      childrenDelegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Container(
          child: Text('data $index'),
          color: Colors.green,
        );
      }, childCount: 20)
    );
  }


  ///GridView.extent构建GridView，根据最大宽度自动计算item数量 
  Widget gridView5() {
    return GridView.extent(
      // item最大宽度
      maxCrossAxisExtent: 180,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      childAspectRatio: 1,
      children: <Widget>[
        GridTile(
          child: Image.asset(
            'lib/images/assets_image.jpg',
            fit: BoxFit.cover,
          ),
        ),
        GridTile(
          child: Image.asset(
            'lib/images/assets_image.jpg',
            fit: BoxFit.cover,
          ),
        ),
        GridTile(
          child: Image.asset(
            'lib/images/assets_image.jpg',
            fit: BoxFit.cover,
          ),
        ),
        GridTile(
          child: Image.asset(
            'lib/images/assets_image.jpg',
            fit: BoxFit.cover,
          ),
        ),
        GridTile(
          child: Image.asset(
            'lib/images/assets_image.jpg',
            fit: BoxFit.cover,
          ),
        ),
        GridTile(
          child: Image.asset(
            'lib/images/assets_image.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

}