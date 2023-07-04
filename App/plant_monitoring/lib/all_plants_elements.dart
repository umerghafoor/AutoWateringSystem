import 'package:plant_monitoring/theme.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PlantContainer extends StatelessWidget {
  const PlantContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Container(
        color: Palette.greenColorUltraLight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(8, 16, 8, 8),
                    child: Text(
                      "Plant Name",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                    child: SizedBox(
                      width: 140,
                      height: 46,
                      child: Text(
                        "Description of the plant will be written here. Description of the plant will be written here.",
                        style: TextStyle(fontSize: 12),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: 190,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 16),
                            child: CircularPercentIndicator(
                              radius: 28,
                              lineWidth: 8,
                              percent: 0.14,
                              animation: true,
                              animationDuration: 1000,
                              progressColor: Palette.greenColor,
                              backgroundColor: Palette.greenColorLight,
                              circularStrokeCap: CircularStrokeCap.round,
                              center: const Icon(Icons.air,
                                  color: Palette.greenColor),
                            ),
                          ),
                          const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 8),
                              child: Column(
                                children: [
                                  Text(
                                    "26.5\u00B0C",
                                    style: TextStyle(fontSize: 32),
                                  ),
                                  Text(
                                    "Temperature",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircularPercentIndicator(
                      radius: 46,
                      lineWidth: 16,
                      percent: 0.68,
                      animation: true,
                      progressColor: Palette.greenColor,
                      backgroundColor: Palette.greenColorLight,
                      circularStrokeCap: CircularStrokeCap.round,
                      center: const Text(
                        "68%",
                        style: TextStyle(fontSize: 32),
                      ),
                    ),
                  ),
                  const SizedBox(
                      width: 102,
                      child:
                          Text("Soil Moisture", textAlign: TextAlign.center)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(56),
                      child: SizedBox(
                        height: 56,
                        width: 56,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green),
                          onPressed: () {},
                          child: const Icon(Icons.water_drop_outlined,
                              color: Palette.greenColorUltraLight),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      width: double.infinity,
      child: Card(
        elevation: 0,
        color: Palette.greenColorUltraLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(64),
        ),
        child: const Center(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle:
                  TextStyle(color: Palette.greenColorLight, fontSize: 24),
              prefixIcon: Icon(Icons.search, color: Palette.greenColorLight),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
