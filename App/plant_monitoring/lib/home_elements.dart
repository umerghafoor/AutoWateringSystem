import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:fl_chart/fl_chart.dart';

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
        )),
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
        color: Colors.green.shade100,
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
    );
  }
}

class TemperatureContainer extends StatelessWidget {
  const TemperatureContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.amber.shade100,
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: const Column(
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

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Container(
        color: Colors.green,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: GNav(
            gap: 8,
            backgroundColor: Colors.green,
            color: Colors.white,
            activeColor: Colors.green,
            tabBackgroundColor: Colors.white,
            padding: EdgeInsets.all(16),
            tabs: [
              GButton(icon: Icons.home, text: "Home"),
              GButton(icon: Icons.newspaper, text: "Feed"),
              GButton(icon: Icons.settings, text: "Settings"),
            ],
          ),
        ),
      ),
    );
  }
}

class DesktopNavigationRail extends StatelessWidget {
  const DesktopNavigationRail({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      extended: !(MediaQuery.of(context).size.width < 900),
      destinations: const [
        NavigationRailDestination(icon: Icon(Icons.home), label: Text("Home")),
        NavigationRailDestination(
            icon: Icon(Icons.newspaper), label: Text("NewsFeed")),
        NavigationRailDestination(
            icon: Icon(Icons.settings), label: Text("Setting"))
      ],
      selectedIndex: 0,
    );
  }
}

class UIConstants {
  static AppBar appBar() {
    return AppBar(
      title: const Text("Plant Monitoring"),
      centerTitle: true,
      backgroundColor: Colors.green,
      elevation: 0,
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
