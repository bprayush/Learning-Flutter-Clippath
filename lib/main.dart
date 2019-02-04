import 'package:flutter/material.dart';
import 'package:learning_clip_path/myclipper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Learning Clippath",
      home: ClipperScaffold(),
      theme: ThemeData(
        accentColor: Colors.blueAccent,
        brightness: Brightness.dark
      ),
    );
  }
}

class ClipperScaffold extends StatefulWidget {
  _ClipperScaffoldState createState() => _ClipperScaffoldState();
}

class _ClipperScaffoldState extends State<ClipperScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learning Clippath"),
      ),
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              height: 400,
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}