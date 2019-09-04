import 'package:flutter/material.dart';

class CustomScrollViewSample extends StatelessWidget {
  const CustomScrollViewSample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        // slivers里面放置sliver滚动块组件
        slivers: <Widget>[
          // 放置一个顶部的标题栏
          SliverAppBar(
            // title: Text('data'),
            // 是否固定在顶部
            pinned: true,
            // 展开高度
            expandedHeight: 250.0,
            // 可展开区域，通常是一个FlexibleSpaceBar
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('CustomScrollView'),
              background: Image.asset('lib/images/assets_image.jpg',fit: BoxFit.cover,),
            ),
          ),

          // 放置一个SliverGrid Widget
          SliverGrid(
            // 设置Grid属性：
            // SliverGridDelegateWithMaxCrossAxisExtent：
            // 按照设置最大扩展宽度计算item个数
            // SliverGridDelegateWithFixedCrossAxisCount:
            // 可以固定设置每行item个数
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              // item最大宽度
              maxCrossAxisExtent: 200.0,
              // 主轴item间隔
              mainAxisSpacing: 10.0,
              // 交叉轴item间隔
              crossAxisSpacing: 10.0,
              // item宽高比
              childAspectRatio: 4.0,
            ),
            // 设置item的布局及属性
            // SliverChildListDelegate：适用于有固定数量的item的List
            // SliverChildBuilderDelegate:适用于不固定数量的item的List
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('grid item $index'),
                );
              },
              // 20个item数量
              childCount: 20,
            ),
          ),
          // 指定item高度的List
          SliverFixedExtentList(
            // item固定高度
            itemExtent: 50.0,
            // 设置item布局和属性
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index % 9)],
                  child: Text('list item $index'),
                );
              },
              childCount: 20,
            ),
          )
        ],
      ),
    );
  }
}