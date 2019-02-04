import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learning_clip_path/myclipper.dart';

class MeltingCard extends StatefulWidget {
  final child;
  final height;
  final color;
 
  MeltingCard({this.child, int this.height, this.color});
  
  _MeltingCardState createState() => _MeltingCardState();
}

class _MeltingCardState extends State<MeltingCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: ClipPath(
        clipper: MyClipper(context),
        child: Container(
          height: ScreenUtil().setHeight(widget.height),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: widget.color,
            boxShadow: [
              BoxShadow(
                blurRadius: 25,
                offset: Offset(0, 20),
                color: Color(0xfafafa),
                spreadRadius: 200
              )
            ]
          ),
          child: widget.child
        ),
      ),
    );
  }
}