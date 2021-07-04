import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

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
  static const channelForRequest = MethodChannel('com.tfn.app/request');
  String message = "Waiting for message!";
  Future<void> getMessage() async {
    String recievedMessage;
    try {
      final String result = await channelForRequest.invokeMethod('sendMessage');
      recievedMessage = result;
    } on PlatformException catch (e) {
      log("Error in recieving message", error: e);
      recievedMessage = "Oops! some error occured";
      setState(() {});
    }
    setState(() {
      message = recievedMessage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(message),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getMessage,
        tooltip: 'Invoke request',
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
