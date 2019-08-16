import 'package:flutter/material.dart';

class TextFieldWidgetSample extends StatefulWidget {
  TextFieldWidgetSample({Key key}) : super(key: key);

  _TextFieldWidgetSampleState createState() => _TextFieldWidgetSampleState();
}

class _TextFieldWidgetSampleState extends State<TextFieldWidgetSample> {

  // 通过controller监听 TextField 输入值的变化。 同 onChanged
  TextEditingController _controller;
  @override
  void initState(){
    super.initState();
    _controller = TextEditingController();
    // 在任何时候想获取输入框文本内容就直接调用：_controller.text
    //设置默认值
    _controller.text="我在学习Flutter!";
    // 监听变化
    _controller.addListener((){
      String _text = _controller.text;  // TextField 当前值
      print('$_text');
    });
  }

  // onChanged, text是当前输入框的值
  _handleChange(text){
    print(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Widget'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                // 输入文本样式
                style: TextStyle(color: Colors.blueAccent),
                maxLength: 11,
                // 输入类型
                keyboardType: TextInputType.phone,
                // 设置样式
                decoration: const InputDecoration(
                  //左侧显示的图标
                  icon: Icon(Icons.phone),
                  // 输入框顶部提示信息
                  labelText: '输入手机号',
                  labelStyle: TextStyle(color: Colors.grey),
                  helperText: '提示：11位手机号码',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(5.0))
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)
                  )
                ),

                // onChanged 监听
                onChanged: _handleChange,
                controller: _controller,
              ),
            )
            
          ],
        ),
      ),
    );
  }
}