import 'package:flutter/material.dart';
import 'package:learning_clip_path/melting_card.dart';
import 'package:learning_clip_path/myclipper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Learning Clippath",
      home: ClipperScaffold(),
      theme: ThemeData(
        accentColor: Colors.blueAccent,
        // brightness: Brightness.dark
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
    ScreenUtil.instance = ScreenUtil(width: 360, height: 640, allowFontScaling: true)..init(context);

    return Scaffold(
      body: MeltingCard(
        child: Text("Melting card xD"),
        color: Color(0xff3B2C85),
        height: ScreenUtil().setHeight(334),
      )
    );
  }
}