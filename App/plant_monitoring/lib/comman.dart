import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'all_plants.dart';

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

class AppNavigationBar extends StatefulWidget {
  const AppNavigationBar({Key? key}) : super(key: key);

  @override
  _AppNavigationBarState createState() => _AppNavigationBarState();
}

class _AppNavigationBarState extends State<AppNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
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
            selectedIndex: _currentIndex,
            onTabChange: (index) {
              setState(() {
                _currentIndex = index;
              });

              // Handle page navigation based on the index
              if (index == 1) {
                // Navigate to the Feed page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => AllPlantsPage()),
                );
              }
            },
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
