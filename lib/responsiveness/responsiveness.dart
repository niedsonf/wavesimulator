import 'package:flutter/material.dart';

const int largeScreenSize = 700;

class Responsiveness extends StatefulWidget {
  final Widget smallScreen;
  final Widget largeScreen;
  const Responsiveness(
      {super.key, required this.smallScreen, required this.largeScreen});

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= largeScreenSize;

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < largeScreenSize;      

  @override
  State<Responsiveness> createState() => _ResponsivenessState();
}

class _ResponsivenessState extends State<Responsiveness> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double _width = MediaQuery.of(context).size.width;
        if (_width >= largeScreenSize)
          return widget.largeScreen;
        else
          return widget.smallScreen;
      },
    );
  }
}
