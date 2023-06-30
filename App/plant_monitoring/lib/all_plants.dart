import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_monitoring/all_plants_elements.dart';
import 'package:plant_monitoring/comman.dart';
import 'package:plant_monitoring/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'constants.dart';

class AllPlantsPage extends StatelessWidget {
  const AllPlantsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MobileViewAllPlants();
  }
}

class MobileViewAllPlants extends StatelessWidget {
  const MobileViewAllPlants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.greenColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Palette.greenColor,
            expandedHeight: 300,
            floating: true,
            stretch: true,
            pinned: true,
            title: Column(
              children: [UIConstants.appBar(), const SizedBox(height: 24)],
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: const EdgeInsets.fromLTRB(0, 56, 0, 0),
                child: SvgPicture.asset(
                  Graphics.illustration,
                  height: 256,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Container(
                color: Palette.whiteColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SearchBox(),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16),
                      child: Text(
                        "All Plants",
                        style:
                            TextStyle(fontSize: 32, color: Palette.blackColor),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    CarouselSlider(
                      items: const [
                        PlantContainer(),
                        PlantContainer(),
                        PlantContainer(),
                      ],
                      options: CarouselOptions(
                        autoPlay: false,
                        aspectRatio: 10 / 5,
                        enlargeCenterPage: true,
                        viewportFraction: 0.71,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16),
                      child: Text(
                        "Warnings",
                        style:
                            TextStyle(fontSize: 32, color: Palette.blackColor),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    CarouselSlider(
                      items: const [
                        PlantContainer(),
                        PlantContainer(),
                        PlantContainer(),
                      ],
                      options: CarouselOptions(
                        autoPlay: false,
                        aspectRatio: 10 / 5,
                        enlargeCenterPage: true,
                        viewportFraction: 0.71,
                      ),
                    ),
                    CarouselSlider(
                      items: const [
                        PlantContainer(),
                        PlantContainer(),
                        PlantContainer(),
                      ],
                      options: CarouselOptions(
                        autoPlay: false,
                        aspectRatio: 10 / 5,
                        enlargeCenterPage: true,
                        viewportFraction: 0.71,
                      ),
                    ),
                    CarouselSlider(
                      items: const [
                        PlantContainer(),
                        PlantContainer(),
                        PlantContainer(),
                      ],
                      options: CarouselOptions(
                        autoPlay: false,
                        aspectRatio: 10 / 5,
                        enlargeCenterPage: true,
                        viewportFraction: 0.71,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 0,
        backgroundColor: Palette.greenColor,
        foregroundColor: Palette.greenColorUltraLight,
        child: const Icon(
          Icons.add,
          size: 32,
        ),
      ),
      bottomNavigationBar: const AppNavigationBar(),
    );
  }
}
