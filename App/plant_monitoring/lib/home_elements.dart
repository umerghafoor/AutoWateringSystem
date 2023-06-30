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

class ButtonContainer extends StatefulWidget {
  const ButtonContainer({super.key});

  @override
  State<ButtonContainer> createState() => _ButtonContainerState();
}

class _ButtonContainerState extends State<ButtonContainer> {
  double thresholdValue = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SliderTheme(
            data: const SliderThemeData(
              trackHeight: 24,
              thumbShape:
                  RoundSliderThumbShape(enabledThumbRadius: 13, elevation: 0),
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
              activeColor: Colors.green,
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(56),
          child: SizedBox(
            height: 56,
            width: 56,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
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
        height: 150,
        width: double.infinity,
        color: Palette.greenColorLight,
        child: const Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                child: Text(
                  "Moisture Value",
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
              ),
            ),
            LineCharWidget(
              lineColor: Palette.greenColor,
              shadeColor: Palette.greenColorOverlay,
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
        color: Palette.orangeColorLight,
        child: const Center(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                  child: Text(
                    "Temperature Value",
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ),
              ),
              LineCharWidget(
                lineColor: Colors.orange,
                shadeColor: Colors.orange,
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Container(
          height: 150,
          color: Colors.green.shade200,
          child: const Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                  child: Text(
                    "Humidity Value",
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ),
              ),
              LineCharWidget(
                lineColor: Colors.green,
                shadeColor: Colors.green,
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
      ),
    );
  }
}

class LineCharWidget extends StatelessWidget {
  final List<FlSpot>? values;
  final Color lineColor;
  final Color shadeColor;
  const LineCharWidget(
      {super.key,
      this.values,
      required this.lineColor,
      required this.shadeColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LineChart(
        LineChartData(
          maxX: 100,
          maxY: 100,
          minX: 0,
          minY: 0,
          borderData: FlBorderData(show: false, border: null),
          gridData: const FlGridData(show: false),
          titlesData: const FlTitlesData(show: false),
          lineBarsData: [
            LineChartBarData(
              isCurved: true,
              curveSmoothness: 0.4,
              isStrokeJoinRound: true,
              color: lineColor,
              barWidth: 1,
              belowBarData: BarAreaData(show: true, color: shadeColor),
              dotData: const FlDotData(show: false),
              //  showSpots: true,
              spots: values ?? [],
            ),
          ],
        ),
      ),
    );
  }
}
