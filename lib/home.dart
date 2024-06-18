import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final weatherStyle = GoogleFonts.unbounded(
      fontWeight: FontWeight.w500,
      fontSize: 32,
      letterSpacing: 2,
      color: const Color(0XFFD8E1FF),
    );

    final temperatureStyle = GoogleFonts.unbounded(
      fontWeight: FontWeight.w300,
      fontSize: 48,
      fontFeatures: [const FontFeature.tabularFigures()],
      letterSpacing: 0.8,
      color: const Color(0XFFD8E1FF),
    );

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "./assets/images/partly-cloudy.png",
            scale: 1.1,
          ),
          const SizedBox(height: 8),
          Text(
            'Légèrement nuageux',
            style: weatherStyle,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            "19°C",
            style: temperatureStyle,
          ),
        ],
      ),
    );
  }
}
