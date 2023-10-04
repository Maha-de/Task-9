import 'package:flutter/material.dart';

class MySecondScreen extends StatefulWidget {

  var ahmed;
  var data;
  var passdata;
  MySecondScreen({this.data, this.passdata , this.ahmed,  super.key});

  @override
  State<MySecondScreen> createState() => _MySecondScreenState();
}

class _MySecondScreenState extends State<MySecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Second"),)   ,
    body: Center(
    child: Padding(
    padding: const EdgeInsets.all(100.0),
    child: Column(
    children: [
    Text("${widget.data}"),
    Text("${widget.passdata}"),
    ElevatedButton(onPressed: (){

    Navigator.pop(context);
    }, child: Icon(Icons.backspace))
    ],
    ),) ,
    ));
  }
}
