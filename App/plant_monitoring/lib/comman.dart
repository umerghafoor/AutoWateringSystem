import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:plant_monitoring/theme.dart';

import 'all_plants.dart';
import 'home.dart';

class UIConstants {
  static AppBar appBar() {
    return AppBar(
      title: const Center(child: Text("Plant Monitoring")),
      centerTitle: true,
      backgroundColor: Colors.green,
      elevation: 0,
    );
  }
}

class DesktopNavigationRail extends StatelessWidget {
  const DesktopNavigationRail({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: NavigationRail(
              extended: !(MediaQuery.of(context).size.width < 1200),
              destinations: const [
                NavigationRailDestination(
                    icon: Icon(
                      Icons.home_filled,
                      color: Palette.greenColor,
                      size: 32,
                    ),
                    label: Text("Home")),
                NavigationRailDestination(
                    icon: Icon(Icons.newspaper), label: Text("NewsFeed")),
                NavigationRailDestination(
                    icon: Icon(Icons.settings), label: Text("Setting"))
              ],
              selectedIndex: 0,
            ),
          ),
        ),
      ),
    );
  }
}

class AppNavigationBar extends StatelessWidget {
  final Function(int) onTabSelected;
  AppNavigationBar({Key? key, required this.onTabSelected}) : super(key: key);

  final tabs = [const MobileViewHome(), const AllPlantsPage()];

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(
          top: Radius.circular(24), bottom: Radius.circular(0)),
      child: Container(
        color: Colors.green,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: GNav(
            gap: 8,
            backgroundColor: Colors.green,
            color: Colors.white,
            activeColor: Colors.green,
            tabBackgroundColor: Colors.white,
            padding: const EdgeInsets.all(16),
            onTabChange: (index) {
              onTabSelected(index);
            },
            tabs: const [
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
