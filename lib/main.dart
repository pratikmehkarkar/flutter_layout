//Code written by Pratik Mehkarkar to work on basic concepts of layout in flutter
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World!'),
        ),
        body: Container(
          child: Center(
            child: Column(
              children: [
                Text('Initial Commit Code')
              ],
            ),
          ),
        ),
      ),
    );
  }
}

