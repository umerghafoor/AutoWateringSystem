import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_monitoring/all_plants.dart';
import 'package:plant_monitoring/theme.dart';
import 'comman.dart';
import 'home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 700) {
      return MobileView();
    } else if (MediaQuery.of(context).size.width < 1000) {
      return const DesktopViewHome();
    } else {
      return const DesktopViewUltraWideHome();
    }
  }
}

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  final List<Widget> tabs = [
    const MobileViewHome(),
    const MobileViewAllPlants(),
    const MobileViewHome(),
  ];
  int _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.whiteColor,
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        child: FadeTransition(
          key: ValueKey<int>(_currentTab),
          opacity: const AlwaysStoppedAnimation<double>(1.0),
          child: tabs[_currentTab],
        ),
      ),
      bottomNavigationBar: AppNavigationBar(
        onTabSelected: (changeIndex) {
          setState(() {
            _currentTab = changeIndex;
          });
        },
      ),
    );
  }
}
