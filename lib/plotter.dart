import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'dart:math' as math;
import 'package:wavesimulator/style.dart';

import 'controllers/adjustcontroller.dart';

class Plotter extends StatefulWidget {
  const Plotter({super.key});

  @override
  State<Plotter> createState() => _PlotterState();
}

class _PlotterState extends State<Plotter> {
  double _angle = 0;

  @override
  Widget build(BuildContext context) {
    final adjustController = Provider.of<AdjustController>(context);
    Timer.periodic(Duration(milliseconds: 100), (timer) {
      setState(() {
        _angle += adjustController.velocity / 1000;
      });
      if (_angle > 2 * math.pi) {
        setState(() {
          _angle = 0;
        });
      }
    });
    Size size = MediaQuery.of(context).size;
    final ref = size.width < size.height ? size.width : size.height;
    return CustomPaint(
      willChange: true,
      painter: PlotterPaint(adjustController, _angle),
      size: Size(ref*0.75, ref*0.75),
    );
  }
}

class PlotterPaint extends CustomPainter {
  late AdjustController _controller;
  late double _angle;

  PlotterPaint(AdjustController controller, double angle) {
    _controller = controller;
    _angle = angle;
  }

  @override
  void paint(Canvas canvas, Size size) {
    double ref = size.width;

    Paint paint = Paint()
      ..style = PaintingStyle.fill
      ..isAntiAlias = true
      ..strokeWidth = 1
      ..color = darkColor;
    final rect = Offset(0, 0) & Size(ref, ref);
    canvas.drawRect(rect, paint);

    paint
      ..style = PaintingStyle.stroke
      ..color = lightColor
      ..strokeWidth = 0.25;
    for (double i = 0.1; i < 1; i += 0.1) {
      canvas.drawLine(Offset(0 + ref * i, 0),
          Offset(0 + ref * i, ref), paint);
      canvas.drawLine(
          Offset(0, ref * i), Offset(ref + 0, ref * i), paint);
    }

    paint
      ..color = emeraldColor
      ..strokeWidth = 1.25;
    double x1 = 0 , x2, y1 = ref / 2, y2;
    for (int i = 2; i <= ref; i++) {
      x2 = 0 + i.toDouble();
      y2 = (ref /
          2 *
          (1 -
              _controller.amplitude *
                  math.sin(2 * math.pi * _controller.frequency * x2 / ref +
                      _angle)));
      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), paint);
      x1 = x2;
      y1 = y2;
    }

    paint
      ..strokeWidth = 1
      ..color = lightColor;
    canvas.drawLine(
        Offset(0, ref / 2), Offset(ref + 0, ref / 2), paint);
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(CustomPainter old) => true;
}
