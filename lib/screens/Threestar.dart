import 'dart:math';
import 'package:flutter/material.dart';

class ThreeColorRectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill // Change this line
      ..strokeWidth = 5;

    // Define the colors
    final rectangleColor = Colors.grey[400];
    final plusSignColor = Colors.white;

    // Function to draw a rectangle with a plus sign inside
    void drawRectangleWithPlusSign(Offset center) {
      // Draw the rectangle
      paint.color = rectangleColor!;
      canvas.drawRect(
        Rect.fromCenter(
          center: center,
          width: size.width / 1,
          height: size.height / 1,

        ),

        paint,
      );

      // Draw the plus sign
      paint
        ..style = PaintingStyle.stroke // Change style to stroke for the plus sign
        ..color = plusSignColor
        ..strokeWidth = 3;
      final double halfWidth = size.width / 6;
      final double halfHeight = size.height / 6;
      canvas.drawLine(
        Offset(center.dx - 10, center.dy),
        Offset(center.dx + 10, center.dy),
        paint,
      );
      canvas.drawLine(
        Offset(center.dx, center.dy - 10),
        Offset(center.dx, center.dy + 10),
        paint,
      );
    }

    // // Draw the rectangles with plus signs

    drawRectangleWithPlusSign(Offset(size.width * 1 /3,size.height /2));

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}


