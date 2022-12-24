import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wavesimulator/adjust.dart';
import 'package:wavesimulator/controllers/adjustcontroller.dart';
import 'package:wavesimulator/plotter.dart';
import 'package:provider/provider.dart';
import 'package:wavesimulator/style.dart';

void main() {
  runApp(Provider(create: (_) => AdjustController(), child: WaveSimulator()));
}

class WaveSimulator extends StatelessWidget {
  const WaveSimulator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: darkGreenColor,
          textTheme: GoogleFonts.mulishTextTheme()),
      title: "Wave Simulator",
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 10),
            Text("Wave Simulator", style: TextStyle(fontSize: 20, color: lightColor, fontWeight: FontWeight.w900)),
            SizedBox(height: 20),
            Plotter(),
            SizedBox(height: 20),
            Adjust()
          ],
        ),
      ),
    );
  }
}
