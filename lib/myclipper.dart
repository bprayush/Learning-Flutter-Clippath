import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    final Path path = Path();
    final height = size.height - 100;
    final width = size.width;

    path.lineTo(0, height);
    // path.quadraticBezierTo(20, height + 20, 40, height);
    // path.lineTo(40, height - 20);
    path.arcToPoint(Offset(30, height), radius: Radius.circular(5), clockwise: false);
    path.lineTo(30, height - 40);
    path.arcToPoint(Offset(60, height - 40), radius: Radius.circular(5));
    path.lineTo(60, height + 60);
    path.arcToPoint(Offset(90, height + 60), radius: Radius.circular(5), clockwise: false);
    path.lineTo(90, height - 40);
    path.arcToPoint(Offset(120, height - 40), radius: Radius.circular(5));
    path.lineTo(120, height - 20);
    path.arcToPoint(Offset(150, height - 20), radius: Radius.circular(5), clockwise: false);
    path.lineTo(150, height - 100);
    path.arcToPoint(Offset(180, height - 100), radius: Radius.circular(5));
    path.lineTo(180, height + 5);
    // path.arcToPoint(Offset(195, height + 5), radius: Radius.circular(5), clockwise: false);
    // path.lineTo(189, height + 12.5);
    // path.arcToPoint(Offset(200, height + 60), radius: Radius.circular(5));
    // path.lineTo(210, )
    path.arcTo(Rect.fromCircle(center: Offset(180, height + 5), radius: 5), 20, 0, false);


    // ENDING PATH
    path.lineTo(width, height);
    path.lineTo(width, 0);


    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}