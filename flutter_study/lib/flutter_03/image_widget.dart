import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImageWidgetSample extends StatefulWidget {
  ImageWidgetSample({Key key}) : super(key: key);

  _ImageWidgetSampleState createState() => _ImageWidgetSampleState();
}

class _ImageWidgetSampleState extends State<ImageWidgetSample> {
  var imageUrl = 'https://cn.bing.com/th?id=OIP.OkF_Fras3_He1z06NyZx3AAAAA&pid=Api&rs=1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Widget 学习'),
      ),
      body: CustomScrollView(
       slivers: <Widget>[
         SliverPadding(
           padding: EdgeInsets.all(20.0),
           sliver: SliverList(
             delegate: SliverChildListDelegate(
               <Widget>[
                 // 读取网络图片
                  Image.network(imageUrl),
                  Text(
                    "读取网络图片",
                    textAlign: TextAlign.center,
                  ),
                  Image(
                    image: NetworkImage(imageUrl),
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                  Text(
                    "用NetworkImage读取网络图片",
                    textAlign: TextAlign.center,
                  ),

                  //从项目目录里读取图片，需要在pubspec.yaml注册路径
                  Image.asset("lib/images/assets_image.jpg"),
                  Text(
                    "项目asset目录里读取",
                    textAlign: TextAlign.center,
                  ),
                  Image(
                    image: AssetImage("lib/images/assets_image.jpg"),
                    width: 200,
                    height: 130,
                  ),
                  Text(
                    "AssetImage读取",
                    textAlign: TextAlign.center,
                  ),

                  /// 从文件读取图片
                  // Image.file(
                  //   File('/sdcard/img.png'),
                  //   width: 200,
                  //   height: 80,
                  // ),
                  // Image(
                  //   image: FileImage(File('/sdcard/img.png')),
                  // ),

                  ///内存中读取byte数组图片
                  /// Image.memory(bytes)
                  /// Image(
                  ///   image: MemoryImage(bytes),
                  /// ),
                   
                  ///加入占位图的加载图片
                  // FadeInImage(
                  //   placeholder: AssetImage("lib/images/assets_image.jpg"),
                  //   image: FileImage(File('/sdcard/img.png')),
                  // ),
                  FadeInImage.assetNetwork(
                    placeholder: "lib/images/assets_image.jpg",
                    image: imageUrl,
                  ),
                  Text(
                    "加入占位图的加载图片",
                    textAlign: TextAlign.center,
                  ),

                  ///加载圆角图片
                  CircleAvatar(
                    backgroundColor: Colors.brown.shade800,
                    child: Text("圆角头像"),
                    backgroundImage: AssetImage("lib/images/assets_image.jpg"),
                    radius: 100.0,
                  ),
                  Text(
                    "加载圆角图片",
                    textAlign: TextAlign.center,
                  ),

                  ImageIcon(NetworkImage(imageUrl)),
                  Text(
                    "ImageIcon",
                    textAlign: TextAlign.center,
                  ),
                  ClipRRect(
                    child: Image.network(
                      imageUrl,
                      scale: 8.5,
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  Text(
                    "ClipRRect",
                    textAlign: TextAlign.center,
                  ),

                   Container(
                    width: 120,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: NetworkImage(imageUrl), fit: BoxFit.cover),
                    ),
                  ),
                  Text(
                    "BoxDecoration",
                    textAlign: TextAlign.center,
                  ),
                  ClipOval(
                    child: Image.network(
                      imageUrl,
                      scale: 8.5,
                    ),
                  ),
                  Text(
                    "ClipOval",
                    textAlign: TextAlign.center,
                  ),
               ]
             ),
           ),
         )
       ],
      ),
    );
  }
}