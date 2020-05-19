import 'package:crindia/custom_widgets/bottom_nav_bar.dart';
import 'package:crindia/views/about_view.dart';
import 'package:crindia/views/home_view.dart';
import 'package:crindia/views/profile.dart';
import 'package:crindia/views/stats_view.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

 List<Widget> pages = [
   HomeView(),
   StatsView(),
   AboutView(),
   ProfileView(),
];

class _NavigationScreenState extends State<NavigationScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        onPageSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: pages[_currentIndex],
    );
  }
}
