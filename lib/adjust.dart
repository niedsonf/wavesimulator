import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:wavesimulator/controllers/adjustcontroller.dart';
import 'package:wavesimulator/slider.dart';
import 'package:provider/provider.dart';
import 'package:wavesimulator/style.dart';

class Adjust extends StatefulWidget {
  const Adjust({super.key});

  @override
  State<Adjust> createState() => _AdjustState();
}

class _AdjustState extends State<Adjust> {
  @override
  Widget build(BuildContext context) {
    final adjustController = Provider.of<AdjustController>(context);
    Size size = MediaQuery.of(context).size;

    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: lightColor,
          borderRadius: BorderRadius.vertical(top: Radius.elliptical(20, 10)),
          boxShadow: [BoxShadow(color: darkColor.withOpacity(.5), blurRadius: 3, spreadRadius: 1, offset: Offset(0, -2))]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Adjusts", style: TextStyle(fontSize: 18, color: darkColor, fontWeight: FontWeight.w600)),
            Observer(
              builder: (_) => AdjustSlider(
                  title: 'Amplitude',
                  value: adjustController.amplitude,
                  onChange: adjustController.setAmplitude,
                  min: 0,
                  max: 1,
                  divisions: 10),
            ),
            Observer(
              builder: (_) => AdjustSlider(
                  title: 'Frequency',
                  value: adjustController.frequency,
                  onChange: adjustController.setFrequency,
                  min: 1,
                  max: 10,
                  divisions: 9),
            ),
            Observer(
              builder: (_) => AdjustSlider(
                  title: 'Velocity',
                  value: adjustController.velocity,
                  onChange: adjustController.setVelocity,
                  min:0,
                  max: 10,
                  divisions: 10),
            )
          ],
        ),
      ),
    );
  }
}
