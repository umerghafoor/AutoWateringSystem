import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:fl_chart/fl_chart.dart';
import 'theme.dart';

import 'controller.dart';

class PercentageContainer extends StatelessWidget {
  const PercentageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const AspectRatio(
      aspectRatio: 10 / 7,
      child: AvatarGlow(
        endRadius: 100,
        child: SizedBox(
          height: 300,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "39%",
                  style: TextStyle(
                    fontSize: 96,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Moisture Value",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          "14%",
                          style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Humidity",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 64),
                    Column(
                      children: [
                        Text(
                          "26.5\u00B0C",
                          style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Temperature",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SliderContainer extends StatefulWidget {
  final Color primaryColor;
  final Color secondaryColor;
  const SliderContainer({
    super.key,
    this.primaryColor = Palette.greenColor,
    this.secondaryColor = Palette.blackColor,
  });

  @override
  State<SliderContainer> createState() => _SliderContainerState();
}

class _SliderContainerState extends State<SliderContainer> {
  double thresholdValue = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Stack(
            alignment: Alignment.center,
            children: [
              const Text(
                "Threshold Value",
                style: TextStyle(color: Colors.transparent, shadows: [
                  Shadow(
                    color: Colors.black12,
                    blurRadius: 2,
                    offset: Offset(1, 1),
                  )
                ]),
              ),
              SliderTheme(
                data: const SliderThemeData(
                  trackHeight: 24,
                  thumbShape: RoundSliderThumbShape(
                      enabledThumbRadius: 13, elevation: 0),
                ),
                child: Slider(
                  value: thresholdValue,
                  onChanged: (value) {
                    setState(() {
                      thresholdValue = value;
                      setThresholdValue(value);
                    });
                  },
                  min: 0,
                  max: 100,
                  activeColor: widget.primaryColor,
                  inactiveColor: Palette.greenColorUltraLight,
                ),
              ),
            ],
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(56),
          child: SizedBox(
            height: 56,
            width: 56,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: widget.primaryColor),
              onPressed: () {},
              child: const Icon(Icons.water_drop_outlined),
            ),
          ),
        ),
      ],
    );
  }
}

class MoisterGraphContainer extends StatelessWidget {
  const MoisterGraphContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Container(
        height: 160,
        width: double.infinity,
        color: Palette.greenColorUltraLight,
        child: const Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                child: Row(
                  children: [
                    Icon(
                      Icons.energy_savings_leaf,
                      size: 24,
                      color: Palette.greenColor,
                    ),
                    SizedBox(width: 16),
                    Text(
                      "Moisture Value",
                      style: TextStyle(
                          fontSize: 16,
                          color: Palette.greenColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            LineCharWidget(
              lineColor: Palette.greenColor,
              shadeColor: Palette.greenColorLight,
              backgroundColor: Palette.greenColorUltraLight,
              values: [
                FlSpot(0, 0),
                FlSpot(10, 40),
                FlSpot(20, 50),
                FlSpot(30, 60),
                FlSpot(40, 40),
                FlSpot(50, 80),
                FlSpot(60, 30),
                FlSpot(70, 50),
                FlSpot(80, 80),
                FlSpot(90, 90),
                FlSpot(100, 70),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TemperatureContainer extends StatelessWidget {
  const TemperatureContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Container(
        height: 150,
        color: Palette.yellowColorUltraLight,
        child: const Center(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                  child: Row(
                    children: [
                      Icon(
                        Icons.sunny,
                        size: 24,
                        color: Palette.yellowColor,
                      ),
                      SizedBox(width: 16),
                      Text(
                        "Temperature Value",
                        style: TextStyle(
                            fontSize: 16,
                            color: Palette.yellowColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              LineCharWidget(
                lineColor: Palette.yellowColor,
                shadeColor: Palette.yellowColorLight,
                backgroundColor: Palette.yellowColorUltraLight,
                values: [
                  FlSpot(0, 0),
                  FlSpot(10, 40),
                  FlSpot(20, 50),
                  FlSpot(30, 70),
                  FlSpot(40, 20),
                  FlSpot(50, 50),
                  FlSpot(60, 80),
                  FlSpot(70, 90),
                  FlSpot(80, 60),
                  FlSpot(90, 90),
                  FlSpot(100, 30),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HumidityContainer extends StatelessWidget {
  const HumidityContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Container(
        height: 150,
        color: Palette.blueColorUltraLight,
        child: const Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                child: Row(
                  children: [
                    Icon(
                      Icons.air,
                      size: 24,
                      color: Palette.blueColor,
                    ),
                    SizedBox(width: 16),
                    Text(
                      "Humidity Value",
                      style: TextStyle(
                          fontSize: 16,
                          color: Palette.blueColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            LineCharWidget(
              lineColor: Palette.blueColor,
              shadeColor: Palette.blueColorLight,
              backgroundColor: Palette.blueColorUltraLight,
              values: [
                FlSpot(0, 14),
                FlSpot(10, 40),
                FlSpot(20, 20),
                FlSpot(30, 30),
                FlSpot(40, 17),
                FlSpot(50, 10),
                FlSpot(60, 15),
                FlSpot(70, 40),
                FlSpot(80, 10),
                FlSpot(90, 20),
                FlSpot(100, 15),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LineCharWidget extends StatelessWidget {
  final List<FlSpot>? values;
  final Color lineColor;
  final Color shadeColor;
  final Color backgroundColor;
  const LineCharWidget(
      {super.key,
      this.values,
      required this.lineColor,
      required this.shadeColor,
      required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: LineChart(
          LineChartData(
            maxX: 100,
            maxY: 100,
            minX: 0,
            minY: 0,
            lineTouchData: const LineTouchData(
                touchTooltipData: LineTouchTooltipData(
                    tooltipBgColor: Palette.greenColorUltraLight)),
            borderData: FlBorderData(show: false, border: null),
            gridData: FlGridData(
              show: true,
              drawHorizontalLine: false,
              verticalInterval: 10,
              getDrawingVerticalLine: (value) => FlLine(
                color: shadeColor,
                strokeWidth: 2,
                dashArray: [5],
              ),
            ),
            titlesData: const FlTitlesData(show: false),
            lineBarsData: [
              LineChartBarData(
                isCurved: true,
                curveSmoothness: 0.4,
                isStrokeJoinRound: true,
                isStrokeCapRound: true,
                color: lineColor,
                barWidth: 8,
                belowBarData: BarAreaData(
                  show: true,
                  gradient: LinearGradient(
                    colors: [backgroundColor, shadeColor],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: const [0, 0.7],
                  ),
                ),
                dotData: const FlDotData(show: false),
                //  showSpots: true,
                spots: values ?? [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
