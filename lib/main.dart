import 'package:crindia/custom_widgets/carousal_widget.dart';
import 'package:crindia/custom_widgets/custom_card.dart';
import 'package:crindia/views/home_view.dart';
import 'package:crindia/views/navigation_screen.dart';
import 'package:crindia/views/splash_screen.dart';
import 'package:crindia/views/stats_view.dart';
import 'package:crindia/views/all_expertise.dart';
import 'package:crindia/views/test.dart';
import 'package:flutter/material.dart';

import 'custom_widgets/custom_pie.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: Scaffold(
        backgroundColor: Color.fromRGBO(0, 7, 17, 9),
        body: SplashScreen(),
      ),
    );
  }
}

