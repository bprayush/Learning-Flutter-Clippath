import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    final Path path = Path();
    final width = size.width;
    final height = size.height - 100;
    final firstEndPoint = Offset(width * 0.5, height - 35);
    final firstControlPoint = Offset(width * 0.25, height - 50);
    final secondEndPoint = Offset(width, height - 80);
    final secondControlPoint = Offset(width * 0.75, height - 10);

    path.lineTo(0, height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}