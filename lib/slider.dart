import 'package:flutter/material.dart';
import 'package:wavesimulator/style.dart';

class AdjustSlider extends StatefulWidget {
  final String title;
  final double value;
  final Function(double) onChange;
  final double min;
  final double max;
  final int divisions;
  const AdjustSlider(
      {super.key,
      required this.title,
      required this.value,
      required this.onChange,
      required this.min,
      required this.max, required this.divisions});

  @override
  State<AdjustSlider> createState() => _AdjustSliderState();
}

class _AdjustSliderState extends State<AdjustSlider> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(widget.title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400))),
          Expanded(
            flex: 3,
            child: Slider.adaptive(
                thumbColor: darkEmeraldColor,
                activeColor: emeraldColor,
                value: widget.value,
                label: widget.value.toString(),
                min: widget.min,
                max: widget.max,
                divisions: widget.divisions,
                onChanged: widget.onChange),
          ),
        ],
      ),
    );
  }
}
