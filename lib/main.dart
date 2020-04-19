import 'package:flutter/material.dart';
import 'dart:developer';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  TextEditingController emailController = new TextEditingController();

  void _incrementCounter() {
    setState(() {
      log('data: $_counter');
      String value = emailController.text;
      log('emailText: $value');
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0, bottom:0),
                child: Text(' ax2 - bx + c = 0 '),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0, top: 0, right: 16.0, bottom:0),
                child: TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            labelText: "Enter a"
                            )
                        ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 16.0, top: 8.0, right: 16.0, bottom:0),
                child: TextFormField(
                          decoration: InputDecoration(
                            labelText: "Enter b"
                            )
                        ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 16.0, top: 8.0, right: 16.0, bottom:0),
                child: TextFormField(
                          decoration: InputDecoration(
                            labelText: "Enter c"
                            )
                        ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0, bottom:0),
                child: RaisedButton(
                    onPressed: _incrementCounter,
                    textColor: Colors.white,
                    color: Colors.red,
                    padding: const EdgeInsets.all(16.0),
                    child: new Text(
                      "Subtract",
                    ),
                  ),
              ),
              
              ],
        ),
        ), 
    );
  }
}
