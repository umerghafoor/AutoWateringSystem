import 'package:flutter/cupertino.dart';
import 'all_plants.dart';
import 'home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 700) {
      return const MobileViewHome();
    } else if (MediaQuery.of(context).size.width < 900) {
      return const DesktopViewHome();
    } else if (MediaQuery.of(context).size.width < 1000) {
      return const DesktopViewWideHome();
    } else {
      return const DesktopViewUltraWideHome();
    }
  }
}
