import 'package:flutter/material.dart';
import 'package:plant_monitoring/home_elements.dart';
import 'package:plant_monitoring/theme.dart';

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
              borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(24), bottom: Radius.circular(0)),
              child: Container(
                color: Palette.whiteColor,
                child: const Column(
                  children: [
                    SizedBox(height: 16),
                    Text("Controller",
                        style: TextStyle(fontSize: 24, color: Colors.black54)),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SliderContainer(),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: MoisterGraphContainer(),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: HumidityContainer(),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TemperatureContainer(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      //    bottomNavigationBar: const AppNavigationBar(),
    );
  }
}

class DesktopViewHome extends StatelessWidget {
  const DesktopViewHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.greenColor,
      appBar: UIConstants.appBar(),
      body: const Row(children: [
        DesktopNavigationRail(),
        SingleChildScrollView(
          child: SizedBox(
            width: 400,
            child: Column(
              children: [
                PercentageContainer(),
                SliderContainer(
                    primaryColor: Palette.greenColorLight,
                    secondaryColor: Palette.whiteColor),
              ],
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: MoisterGraphContainer(),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: HumidityContainer(),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TemperatureContainer(),
                ),
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
      backgroundColor: Palette.greenColor,
      appBar: UIConstants.appBar(),
      body: Row(children: [
        const DesktopNavigationRail(),
        Expanded(child: Container()),
        const Row(
          children: [
            SingleChildScrollView(
              child: SizedBox(
                width: 400,
                //  height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    PercentageContainer(),
                    SliderContainer(
                        primaryColor: Palette.greenColorLight,
                        secondaryColor: Palette.whiteColor),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: SizedBox(
                width: 442,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: MoisterGraphContainer(),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TemperatureContainer(),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: HumidityContainer(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Expanded(child: Container()),
      ]),
    );
  }
}
