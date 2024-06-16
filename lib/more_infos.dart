import 'package:flutter/material.dart';

class MoreInfos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                InfoBlock(
                  title: "Humidité",
                  value: "71%",
                ),
                InfoBlock(
                  title: "Risque de pluie",
                  value: "54%",
                ),
              ],
            ),
            Row(
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
            Row(
              children: [
                InfoBlock(
                  title: "Vent",
                  value: "8km/h",
                ),
                InfoBlock(
                  title: "Pollen",
                  value: "Peu",
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

  const InfoBlock({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Card(
          color: const Color(0xFF353A40),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                Text(
                  value,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
