import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:micro_cumulus/home.dart';
import 'package:micro_cumulus/more_infos.dart';
import 'package:micro_cumulus/forecasts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutBuilder(
        builder: (context, constraints) {
          return Scaffold(
            backgroundColor: const Color(0xFF303032),
            body: CarouselSlider(
              items: [
                MoreInfos(),
                HomePage(),
                Forecasts(),
              ],
              options: CarouselOptions(
                autoPlay: false,
                initialPage: 1,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                height: constraints.maxHeight,
              ),
            ),
          );
        },
      ),
    );
  }
}
