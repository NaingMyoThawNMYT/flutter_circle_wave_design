import 'package:flutter/material.dart';

class WavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();

    int c = 1;
    for (int i = 5; i > 0; i--) {
      paint.color = Colors.blue[c * 100];
      c++;
      canvas.drawCircle(
        Offset(size.width / 2, size.height / 2),
        (i * 30).toDouble(),
        paint,
      );
    }
  }

  void drawWaveCircle(
      Canvas canvas, Offset offset, double radius, Paint paint) {}

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
