import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final weatherStyle = theme.textTheme.displaySmall!.copyWith(
      color: const Color(0XFFD8E1FF),
      fontWeight: FontWeight.bold,
      letterSpacing: 2,
    );
    
    final temperatureStyle = theme.textTheme.displayLarge!.copyWith(
      color: const Color(0XFFD8E1FF),
      fontWeight: FontWeight.normal,
      letterSpacing: 1,
    );

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Légèrement nuageux',
            style: weatherStyle,
            textAlign: TextAlign.center,
          ),
          Text(
            "19°C",
            style: temperatureStyle,
          ),
        ],
      ),
    );
  }
}
