import 'package:flutter/material.dart';

class DrawBackground extends CustomPainter {
  Paint _paint;

  DrawBackground() {
    _paint = Paint();
  }

  @override
  void paint(Canvas canvas, Size size) {
    // canvas.drawCircle(this._position ?? Offset(0.0, 0.0), this._radius ?? 100.0, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}