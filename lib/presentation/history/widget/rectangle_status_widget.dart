import 'package:flutter/material.dart';

class CustomRectangleStatus extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    
    // Define the shape or clip you want to create
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class TriangleShadowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 9.0);

    final path = Path();
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(TriangleShadowPainter oldDelegate) => false;
}
