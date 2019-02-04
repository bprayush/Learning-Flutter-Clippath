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

    // return Scaffold(
    //   body: ClipPath(
    //     clipper: MyClipper(context),
    //     child: Container(
    //       height: ScreenUtil().setHeight(340),
    //       decoration: BoxDecoration(
    //         color: Color(0xff3B2C85),
    //         boxShadow: [
    //           BoxShadow(
    //             blurRadius: 25,
    //             offset: Offset(0, 20),
    //             color: Color(0xfafafa),
    //             spreadRadius: 200
    //           )
    //         ]
    //       ),
    //     ),
    //   ),
    // );

    return Scaffold(
      body: MeltingCard(
        child: Padding(
          padding: EdgeInsets.only(bottom: 100),
          child: Center(
            child: Text("Melting card xD"),
          ),
        ),
        color: Colors.blue,
        height: ScreenUtil().setHeight(400),
      )
    );
  }
}