import 'package:flutter/material.dart';

class ClipClipper extends CustomClipper<Path> {
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(size.width / 1.5, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.height, size.width);
    path.close();
    // path.moveTo(size.width/3, size.height*0.03);
    path.lineTo(0, size.height - 50);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    // path.quadraticBezierTo(0,size.height,0,0 );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}