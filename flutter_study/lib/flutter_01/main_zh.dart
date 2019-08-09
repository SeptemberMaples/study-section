import 'package:flutter/material.dart';

//void main()为入口方法,main.dart文件独有
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //应用的最顶层入口
  @override
  Widget build(BuildContext context) {
    //这里使用了MaterialApp脚手架，当然也可以使用WidgetApp，建议入口使用MaterialApp。
    //直接定义一个容器布局也可以
    return MaterialApp(
      //标题
      title: 'Flutter Demo',
      theme: ThemeData(
        //可以自定义配置主题色调
        primarySwatch: Colors.blue,
      ),
      //页面
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

//使用StatefulWidget有状态Widget
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  //创建State状态
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    //每次执行这个方法_counter加一，然后用setState方法进行UI刷新
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    //Scaffold布局脚手架组件
    return Scaffold(
      //标题栏Widget组件
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //定义了一个Button，点击执行_incrementCounter()方法
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}