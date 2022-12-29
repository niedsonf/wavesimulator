import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wavesimulator/controllers/adjustcontroller.dart';
import 'package:provider/provider.dart';
import 'package:wavesimulator/responsiveness/large_layout.dart';
import 'package:wavesimulator/responsiveness/responsiveness.dart';
import 'package:wavesimulator/responsiveness/small_layout.dart';
import 'package:wavesimulator/style.dart';

void main() {
  runApp(Provider(create: (_) => AdjustController(), child: WaveSimulator()));
}

class WaveSimulator extends StatefulWidget {
  const WaveSimulator({super.key});

  @override
  State<WaveSimulator> createState() => _WaveSimulatorState();
}

class _WaveSimulatorState extends State<WaveSimulator> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: darkGreenColor,
          textTheme: GoogleFonts.mulishTextTheme()),
      title: "Wave Simulator",
      home: Scaffold(
          body: Responsiveness(
              smallScreen: SmallLayout(), largeScreen: LargeLayout())),
    );
  }
}
