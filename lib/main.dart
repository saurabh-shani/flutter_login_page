import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final username = TextEditingController();
  final password = TextEditingController();

  void onSubmit() {
    final enteredUsername = username.text;
    final enteredPassword = password.text;

    if (enteredUsername.isEmpty) {
      Fluttertoast.showToast(
          msg: "Please Enter Username",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 20.0);
    } else if (enteredPassword.isEmpty) {
      Fluttertoast.showToast(
          msg: "Please password",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 20.0);
    } else {
      Fluttertoast.showToast(
          msg: "Username: $enteredUsername \n Password: $enteredPassword",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 20.0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Card(
          elevation: 10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.all(20)),
              Container(
                  height: 60,
                  child: Image.asset(
                    'assets/images/login.png',
                    fit: BoxFit.cover,
                  )),
              Padding(padding: EdgeInsets.all(20)),
              TextField(
                decoration: InputDecoration(labelText: 'Username'),
                controller: username,
                onSubmitted: (_) => onSubmit,
              ),
              Padding(padding: EdgeInsets.all(20)),
              TextField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Password'),
                  controller: password,
                  onSubmitted: (_) => onSubmit),
              Padding(padding: EdgeInsets.all(20)),
              RaisedButton(
                color: Colors.blue,
                child: Text('Login'),
                textColor: Colors.white,
                onPressed: onSubmit,
              ),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
