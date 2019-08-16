import 'package:flutter/material.dart';

class FormWidgetSample extends StatefulWidget {
  FormWidgetSample({Key key}) : super(key: key);

  _FormWidgetSampleState createState() => _FormWidgetSampleState();
}

class _FormWidgetSampleState extends State<FormWidgetSample> {

  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  FormState _formState;
  String _name;
  String _password;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Widget'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            // TextFormField用于表单
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: '请输入用户名', // placeholder
                labelText: '用户名',
                prefixText: '用户名：'
              ),
              validator: (value){
                if(value.length == 0){
                  return '请输入用户名';
                }
                return value.contains('@') ? '不能包含@符号' : null;
              },
              onSaved: (value) {
                _name = value;
              },
            ),

            TextFormField(
              obscureText: true,
              maxLength: 12,
              maxLines: 1,
              keyboardType: TextInputType.numberWithOptions(),
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                hintText: '请输入密码',
                labelText: '密码',
                prefixText: '密码：'
              ),
              validator: (String value) {
                return value.trim().length < 10 ? '密码长度为10~12位' : null;
              },
              onSaved: (value) {
                _password = value;
              },
            ),

            RaisedButton(
              child: Text('登录'),
              color: Colors.deepPurpleAccent,
              textColor: Colors.white,
              onPressed: (){
                onSubmit();
              },
            )
          ],
        ),
      ),
    );
  }

  void onSubmit(){
    _formState = _formKey.currentState;
    if(_formState.validate()){
      _formState.save();
      print('$_name');
      print('$_password');
      showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text('登录成功'),
            content: Column(
              children: <Widget>[
                Text('用户名：$_name'),
                Text('密码：$_password'),
              ],
            ),
            actions: <Widget>[
              RaisedButton(
                textColor: Colors.white, 
                color: Colors.deepPurpleAccent,
                child: Text('确定'),
                onPressed: (){
                  Navigator.of(context).pop(true);
                },
              )
            ],
          );
        }
      );
    }
  }
}