/*
 * @Author:             Simon Young 
 * @Date:               2019-08-14 17:48:11 
 * @Last Modified by: Simon Young
 * @Last Modified time: 2019-08-14 18:28:51
 * @Description:        相对复杂的AppBar Widget Sample
 */
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppBarWidgetSample2 extends StatefulWidget {
  AppBarWidgetSample2({Key key}) : super(key: key);

  _AppBarWidgetSample2State createState() => _AppBarWidgetSample2State();
}

class _AppBarWidgetSample2State extends State<AppBarWidgetSample2>  with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 5, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text('AppBar Widget'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.share), onPressed: () {}),
          /// 三个点，表示打开更多
          PopupMenuButton(
            itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
              PopupMenuItem<String>(
                child: Text('个人中心'),
                value: 'profile',
              ),
              PopupMenuItem<String>(
                child: Text('更多列表'),
                value: 'list',
              ),
            ],
          ),
        ],
        /// bottom 标题栏下方的空间，一般放TabBar
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(
              text: 'tab1',
              icon: Icon(Icons.add),
            ),
            Tab(
              text: 'tab2',
              icon: Icon(Icons.add),
            ),
            Tab(
              text: 'tab3',
              icon: Icon(Icons.add),
            ),
            Tab(
              text: 'tab4',
              icon: Icon(Icons.add),
            ),
            Tab(
              text: 'tab5',
              icon: Icon(Icons.add),
            ),
          ],
        ),

        backgroundColor: Colors.redAccent,
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Center(
            child: Text('data1'),
          ),
          Center(
            child: Text('data2'),
          ),
          Center(
            child: Text('data3'),
          ),
          Center(
            child: Text('data4'),
          ),
          Center(
            child: Text('data5'),
          ),
        ],
      ),
    );
  }
}