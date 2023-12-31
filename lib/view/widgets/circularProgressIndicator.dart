// import 'dart:math';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class CircularProgressIndicatorWithText extends StatelessWidget {
//   final double progress; // Your progress value between 0.0 and 1.0
//   final String text; // Your text to display inside the circle
//   final Color progressColor; // Color of the progress arc
//   final Color backgroundColor; // Color of the background circle
//
//     CircularProgressIndicatorWithText({
//     required this.progress,
//     required this.text,
//     this.progressColor = Colors.blue,
//     this.backgroundColor = Colors.grey
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 100.w,
//       height: 200.h,
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           // Background circle
//           Container(
//             width: 100.w,
//             height: 100.h,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: backgroundColor,
//             ),
//           ),
//           // Progress arc
//           CustomPaint(
//             painter: _MyProgressArcPainter(progress, progressColor),
//             child: Container(
//               width: 100.w,
//               height: 100.h,
//             ),
//           ),
//           // Text widget
//           Text(
//             text,
//             style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// // class _MyProgressArcPainter extends CustomPainter {
// //   final double progress;
// //   final Color color;
// //
// //   _MyProgressArcPainter(this.progress, this.color);
// //
// //   @override
// //   void paint(Canvas canvas, Size size) {
// //     final paint = Paint()
// //       ..color = color
// //       ..strokeWidth = 10.0
// //       ..style = PaintingStyle.fill; // Use fill style to fill the arc
// //
// //     final radius = size.width / 2;
// //     final center = Offset(radius, radius);
// //     final angle = progress * 2 * pi;
// //
// //     // Create a path for the arc
// //     final path = Path();
// //     path.arcTo(
// //       center,
// //       radius,
// //       radius,
// //       0.0,
// //       angle,
// //       true, // Use true for clockwise arc
// //     );
// //
// //     canvas.fillPath(path, paint); // Fill the path with the paint
// //   }
// //
// //   @override
// //   bool shouldRepaint(CustomPainter oldDelegate) => true;
// // }
// class _MyProgressArcPainter extends CustomPainter {
//   final double progress;
//   final Color color;
//
//   _MyProgressArcPainter(this.progress, this.color);
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = color
//       ..strokeWidth = 10.0
//       ..style = PaintingStyle.fill; // Use fill style to fill the arc
//
//     final radius = size.width / 2;
//     final center = Offset(radius, radius);
//     final angle = progress * 2 * pi;
//
//     // Create a path for the arc
//     final path = Path();
//     path.addArc(
//       Rect.fromCircle(center: center, radius: radius),
//       0.0,
//       angle,
//     );
//
//     canvas.drawPath(path, paint); // Draw the path with the paint
//   }
//
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => true;
// }

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RingProgressWidget extends StatelessWidget {
  final double addMoney; // Income progress value between 0.0 and 1.0
  final Color color;// Expense progress value between 0.0 and 1.0

  RingProgressWidget({
    required this.addMoney,
     required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 100.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Income ring
          _buildRing(addMoney, color ),
          // Expense ring
          // Text widget
          Text(
            '$addMoney',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold,color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildRing(double progress, Color color) {
    return SizedBox(
      width: 100.w,
      height: 100.h,
      child: CustomPaint(
        painter: _RingPainter(progress, color),
      ),
    );
  }
}

class _RingPainter extends CustomPainter {
  final double progress;
  final Color color;

  _RingPainter(this.progress, this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 10.0
      ..style = PaintingStyle.stroke;

    final radius = (size.width - paint.strokeWidth) / 2;
    final center = Offset(size.width / 2, size.height / 2);
    final startAngle = -pi / 2; // Start from the top
    final sweepAngle = progress * 2 * pi;

    // Create a path for the ring
    final path = Path();
    path.addArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      sweepAngle,
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}