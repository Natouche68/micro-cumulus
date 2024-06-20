import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Forecasts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final buttonStyle = ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF303032),
      elevation: 0,
    );

    final buttonTextStyle = GoogleFonts.unbounded(
      color: const Color(0xFFD8E1FF),
      fontWeight: FontWeight.w500,
      fontSize: 16,
    );

    final selectedButtonTextStyle = buttonTextStyle.copyWith(
      color: const Color(0xFF6665DD),
      fontSize: 18,
      letterSpacing: 1.6,
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: buttonStyle,
                child: Text(
                  "24 h",
                  style: selectedButtonTextStyle,
                ),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: buttonStyle,
                child: Text(
                  "7 jours",
                  style: buttonTextStyle,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: SizedBox(
            height: 450,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ForecastLine(),
                  ForecastLine(),
                  ForecastLine(),
                  ForecastLine(),
                  ForecastLine(),
                  ForecastLine(),
                  ForecastLine(),
                  ForecastLine(),
                  ForecastLine(),
                  ForecastLine(),
                  ForecastLine(),
                  ForecastLine(),
                  ForecastLine(),
                  ForecastLine(),
                  ForecastLine(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ForecastLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final timeStyle = GoogleFonts.unbounded(
      color: const Color(0XFFD8E1FF),
      fontWeight: FontWeight.w300,
      fontFeatures: [const FontFeature.tabularFigures()],
    );
    final temperatureStyle = GoogleFonts.unbounded(
      color: const Color(0XFFD8E1FF),
      fontWeight: FontWeight.w500,
      fontFeatures: [const FontFeature.tabularFigures()],
    );
    final windStyle = GoogleFonts.unbounded(
      color: const Color(0XFFD8E1FF),
      fontWeight: FontWeight.w300,
      fontFeatures: [const FontFeature.tabularFigures()],
    );
    final rainStyle = GoogleFonts.unbounded(
      color: const Color(0xFF6665DD),
      fontWeight: FontWeight.w300,
      fontFeatures: [const FontFeature.tabularFigures()],
    );

    return Card(
      color: const Color(0xFF353A40),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "14:00",
              style: timeStyle,
            ),
            Image.asset(
              "assets/images/partly-cloudy.png",
              height: 24,
            ),
            Text(
              "21°C",
              style: temperatureStyle,
            ),
            Text(
              "12km/h",
              style: windStyle,
            ),
            Text(
              "43%",
              style: rainStyle,
            ),
          ],
        ),
      ),
    );
  }
}
