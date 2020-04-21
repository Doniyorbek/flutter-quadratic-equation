import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:developer';
import 'dart:convert';

import 'package:flutter/services.dart';

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
  
  TextEditingController aField = new TextEditingController();
  TextEditingController bField = new TextEditingController();
  TextEditingController cField = new TextEditingController();
  TextEditingController resultField = new TextEditingController();


  void _makeMath() {
    var a = int.parse(aField.text);
      var b = int.parse(bField.text);
      var c = int.parse(cField.text);
      var d = pow(b,2) - 4 * a * c;
      if (d > 0) {
          var x1 = (-b - sqrt(d)) / (2 * a);
          var x2 = (-b + sqrt(d)) / (2 * a);
          String x11 = x1.toString();
          String x22 = x2.toString();
          aField.text = 'x1=' + x11 + ' ' + 'x2= ' + x22;
          resultField.text = 'x1 is $x1, x2 is $x2';
      } else {
        resultField.text = 'discriminant is negative';
      }
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
                          controller: aField,
                          decoration: InputDecoration(
                            labelText: "Enter a"
                            ),
                            inputFormatters: <TextInputFormatter>[
                                    WhitelistingTextInputFormatter.digitsOnly
                                ], // Only numbers can be entered
                        ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 16.0, top: 8.0, right: 16.0, bottom:0),
                child: TextFormField(
                          controller: bField,
                          decoration: InputDecoration(
                            labelText: "Enter b"
                            ),
                            inputFormatters: <TextInputFormatter>[
                                    WhitelistingTextInputFormatter.digitsOnly
                                ], // Only numbers can be entered
                        ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 16.0, top: 8.0, right: 16.0, bottom:0),
                child: TextFormField(
                          controller: cField,
                          decoration: InputDecoration(
                            labelText: "Enter c"
                            ),
                            inputFormatters: <TextInputFormatter>[
                                    WhitelistingTextInputFormatter.digitsOnly
                                ], // Only numbers can be entered
                        ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0, top: 8.0, right: 16.0, bottom:0),
                child: TextFormField(
                          controller: resultField,
                          enabled: false,
                          decoration: InputDecoration(
                            labelText: "Result"
                            ),
                            inputFormatters: <TextInputFormatter>[
                                    WhitelistingTextInputFormatter.digitsOnly
                                ], // Only numbers can be entered
                        ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0, bottom:0),
                child: RaisedButton(
                    onPressed: _makeMath,
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
