import 'package:flutter/material.dart';
import 'package:plant_monitoring/home_elements.dart';

import 'comman.dart';

class MobileViewHome extends StatelessWidget {
  const MobileViewHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: UIConstants.appBar(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const PercentageContainer(),
              ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: Container(
                  color: Colors.grey[100],
                  child: const Column(
                    children: [
                      SizedBox(height: 16),
                      Text("Controller",
                          style:
                              TextStyle(fontSize: 24, color: Colors.black54)),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ButtonContainer(),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: MoisterGraphContainer(),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TemperatureContainer(),
                      ),
                      HumidityContainer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const AppNavigationBar());
  }
}

class DesktopViewHome extends StatelessWidget {
  const DesktopViewHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Plant Monitoring"),
      ),
      body: const Row(children: [
        DesktopNavigationRail(),
        SingleChildScrollView(
          child: SizedBox(
            width: 400,
            child: Column(
              children: [
                PercentageContainer(),
                ButtonContainer(),
              ],
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                MoisterGraphContainer(),
                TemperatureContainer(),
                HumidityContainer(),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class DesktopViewWideHome extends StatelessWidget {
  const DesktopViewWideHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Plant Monitoring"),
      ),
      body: const Row(children: [
        DesktopNavigationRail(),
        SingleChildScrollView(
          child: SizedBox(
            width: 400,
            child: Column(
              children: [
                PercentageContainer(),
                ButtonContainer(),
              ],
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                MoisterGraphContainer(),
                TemperatureContainer(),
                HumidityContainer(),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class DesktopViewUltraWideHome extends StatelessWidget {
  const DesktopViewUltraWideHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Plant Monitoring"),
      ),
      body: Row(children: [
        const DesktopNavigationRail(),
        Expanded(child: Container()),
        const SingleChildScrollView(
          child: SizedBox(
            width: 400,
            child: Column(
              children: [
                PercentageContainer(),
                ButtonContainer(),
              ],
            ),
          ),
        ),
        const SingleChildScrollView(
          child: SizedBox(
            width: 342,
            child: Column(
              children: [
                MoisterGraphContainer(),
                TemperatureContainer(),
                HumidityContainer(),
              ],
            ),
          ),
        ),
        Expanded(child: Container()),
      ]),
    );
  }
}
