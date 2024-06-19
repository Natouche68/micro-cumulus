import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoreInfos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sunHours = GoogleFonts.unbounded(
      color: const Color(0XFFD8E1FF),
      fontWeight: FontWeight.w500,
      fontSize: 24,
      letterSpacing: 0.6,
    );

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              children: [
                InfoBlock(
                  title: "Humidité",
                  value: "71%",
                ),
                InfoBlock(
                  title: "Risque de pluie",
                  value: "54%",
                  isPrimary: true,
                ),
              ],
            ),
            const Row(
              children: [
                InfoBlock(
                  title: "Ressenti",
                  value: "16°C",
                ),
                InfoBlock(
                  title: "UV",
                  value: "1",
                ),
              ],
            ),
            const Row(
              children: [
                InfoBlock(
                  title: "Vent",
                  value: "8km/h",
                  isPrimary: true,
                ),
                InfoBlock(
                  title: "Pollen",
                  value: "Peu",
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Card(
                      color: const Color(0xFF353A40),
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("./assets/images/sunrise-sunset.png"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "6:44",
                                  style: sunHours,
                                ),
                                const SizedBox(
                                  width: 72,
                                ),
                                Text(
                                  "21:32",
                                  style: sunHours,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class InfoBlock extends StatelessWidget {
  final String title;
  final String value;
  final bool isPrimary;

  const InfoBlock({
    super.key,
    required this.title,
    required this.value,
    this.isPrimary = false,
  });

  @override
  Widget build(BuildContext context) {
    final titleStyle = GoogleFonts.unbounded(
      color: const Color(0XFFD8E1FF),
      fontWeight: FontWeight.w500,
      fontSize: 12,
      letterSpacing: 0.6,
    );
    final valueStyle = GoogleFonts.unbounded(
      color: const Color(0xFFD8E1FF),
      fontWeight: FontWeight.w300,
      fontSize: 32,
      fontFeatures: [const FontFeature.tabularFigures()],
      letterSpacing: 1.6,
    );

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Card(
          color: isPrimary ? const Color(0xFF6665DD) : const Color(0xFF353A40),
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: titleStyle,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    value,
                    style: valueStyle,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
