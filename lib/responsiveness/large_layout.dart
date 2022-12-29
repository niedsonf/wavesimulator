import 'package:flutter/material.dart';
import 'package:wavesimulator/adjust.dart';
import 'package:wavesimulator/plotter.dart';
import 'package:wavesimulator/style.dart';

class LargeLayout extends StatelessWidget {
  const LargeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Row(
      children: [
        Expanded(child: Container()),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Wave Simulator",
                style: TextStyle(
                    fontSize: 20,
                    color: lightColor,
                    fontWeight: FontWeight.w900)),
            SizedBox(height: 20),
            Plotter(),
          ],
        ),
        Expanded(child: Container()),
        Expanded(flex: 4, child: Adjust())
      ],
    );
  }
}
