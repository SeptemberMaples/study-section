// ListView widget 实例

import 'package:flutter/material.dart';

 /// 稍复杂应用
  // 定义一个List
  List<String> items = <String>[
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
  ]; 

  // 定义个枚举来设置item显示几行及类型
  enum _MaterialListType {
    oneLine,

    oneLineWithAvatar,

    twoLine,

    threeLine,
  }

class ListViewSample extends StatefulWidget {
  ListViewSample({Key key}) : super(key: key);

  _ListViewSampleState createState() => _ListViewSampleState();
}

class _ListViewSampleState extends State<ListViewSample> {
 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Widget'),
      ),
      body: listView3(),
    );
  }


  // 最简单用法
  Widget listView1() {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(20),
      children: <Widget>[
        // Container
        Container(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 2,
                color: Colors.grey[300]
              ),
            )
          ),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 15.0),
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text(
                    'D', 
                    style: TextStyle( color: Colors.white,),
                  ),
                ),
              ),
              Text(
                'data',
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
        ),
        // Container end
        // Container
        Container(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 2,
                color: Colors.grey[300]
              ),
            )
          ),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 15.0),
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text(
                    'D', 
                    style: TextStyle( color: Colors.white,),
                  ),
                ),
              ),
              Text(
                'data',
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
        ),
        // Container end
        // Container
        Container(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 2,
                color: Colors.grey[300]
              ),
            )
          ),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 15.0),
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text(
                    'D', 
                    style: TextStyle( color: Colors.white,),
                  ),
                ),
              ),
              Text(
                'data',
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
        ),
        // Container end
        // Container
        Container(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 2,
                color: Colors.grey[300]
              ),
            )
          ),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 15.0),
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text(
                    'D', 
                    style: TextStyle( color: Colors.white,),
                  ),
                ),
              ),
              Text(
                'data',
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
        ),
        // Container end
        // Container
        Container(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 2,
                color: Colors.grey[300]
              ),
            )
          ),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 15.0),
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text(
                    'D', 
                    style: TextStyle( color: Colors.white,),
                  ),
                ),
              ),
              Text(
                'data',
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
        ),
        // Container end
        // Container
        Container(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 2,
                color: Colors.grey[300]
              ),
            )
          ),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 15.0),
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text(
                    'D', 
                    style: TextStyle( color: Colors.white,),
                  ),
                ),
              ),
              Text(
                'data',
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
        ),
        // Container end
        // Container
        Container(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 2,
                color: Colors.grey[300]
              ),
            )
          ),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 15.0),
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text(
                    'D', 
                    style: TextStyle( color: Colors.white,),
                  ),
                ),
              ),
              Text(
                'data',
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
        ),
        // Container end
        // Container
        Container(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 2,
                color: Colors.grey[300]
              ),
            )
          ),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 15.0),
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text(
                    'D', 
                    style: TextStyle( color: Colors.white,),
                  ),
                ),
              ),
              Text(
                'data',
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
        ),
        // Container end
        // Container
        Container(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 2,
                color: Colors.grey[300]
              ),
            )
          ),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 15.0),
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text(
                    'D', 
                    style: TextStyle( color: Colors.white,),
                  ),
                ),
              ),
              Text(
                'data',
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
        ),
        // Container end
        
      ],
    );
  }


  


  /// 使用ListView.builder构造
  /// https://api.flutter.dev/flutter/widgets/ListView/ListView.builder.html 
  Widget listView2() {
    // item widget集合
    return ListView.builder(
      // 设置item数量
      itemCount: items.length,
      itemBuilder: (BuildContext context, int position) {
        return getItem(items.elementAt(position));
      },
    );
  }

  /// ListView.custom构建ListView
  /// https://api.flutter.dev/flutter/widgets/ListView/ListView.custom.html
  Widget listView3() {
    ///SliverChildListDelegate：适用于有固定数量的item的List
    ///SliverChildBuilderDelegate:适用于不固定数量的item的List
    return ListView.custom(
      // 设置item构建属性
      childrenDelegate:
          SliverChildBuilderDelegate((BuildContext context, int index) {
        // 返回item布局
        return ListTile(
          isThreeLine: true,
          dense: true,
          leading: ExcludeSemantics(
              child: CircleAvatar(child: Text(items.elementAt(index)))),
          title: Text('This item represents .'),
          subtitle: Text("$index"),
          trailing: Icon(Icons.info, color: Theme.of(context).disabledColor),
        );
      }, childCount: 13),
    );
  }


  ///  ListView.separated构建ListView 
  ///  https://api.flutter.dev/flutter/widgets/ListView/ListView.separated.html
  ///  ListTile widget : https://api.flutter.dev/flutter/material/ListTile-class.html
  Widget listView4() {
    return ListView.separated(
      itemCount: items.length,
      // 分隔线属性设置
      separatorBuilder: (BuildContext context, int index) {
        return Container(height: 1, color: Colors.grey[300]);
      },
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          isThreeLine: true,
          dense: true,
          leading: ExcludeSemantics(
              child: CircleAvatar(child: Text(items.elementAt(index)))),
          title: Text('This item represents .'),
          subtitle: Text(items.elementAt(index)),
          trailing: Icon(Icons.info, color: Theme.of(context).disabledColor),
        );
      },
    );
  }


  // 用来获取item布局的方法
  ///  ListTile widget : https://api.flutter.dev/flutter/material/ListTile-class.html
  Widget getItem(String item) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListTile(
            dense: true,
            title: Text('Two-line ' + item),
            trailing: Radio<_MaterialListType>(
              value: _MaterialListType.twoLine,
              groupValue: _MaterialListType.twoLine,
              onChanged: changeItemType,
            )),
      ),
      onTap: () {
        setState(() {
          // print('row $i');
        });
      },
      onLongPress: () {},
    );
  }

  void changeItemType(_MaterialListType type) {
    print("changeItemType");
  }

}