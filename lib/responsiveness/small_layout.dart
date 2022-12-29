import 'package:flutter/material.dart';
import 'package:wavesimulator/adjust.dart';
import 'package:wavesimulator/plotter.dart';
import 'package:wavesimulator/style.dart';

class SmallLayout extends StatelessWidget {
  const SmallLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Container()),
        Text("Wave Simulator",
            style: TextStyle(
                fontSize: 20, color: lightColor, fontWeight: FontWeight.w900)),
        SizedBox(height: 20),
        Plotter(),
        Expanded(child: Container()),
        Expanded(flex: 3, child: Adjust())
      ],
    );
  }
}
