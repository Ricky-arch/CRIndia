import 'package:carousel_slider/carousel_slider.dart';
import 'package:crindia/constants/data.dart';
import 'package:crindia/custom_widgets/carousal_widget.dart';
import 'package:crindia/custom_widgets/prime_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Data.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Container(
                  child: Row(
                children: <Widget>[
                  Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Image.asset(
                          "images/logo.png",
                          fit: BoxFit.cover,
                        ),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: 'CR',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 22)),
                        TextSpan(
                          text: 'India',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.yellow,
                              fontSize: 22),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: GestureDetector(
                      child: Image.asset(
                        "images/menu.png",
                        height: 20,
                      ),
                      onTap: () {},
                    ),
                  ),
                ],
              )),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
//                  Padding(
//                    padding: const EdgeInsets.all(8.0),
//                    child: Container(
//                      child: Text("Hello Mr. X!", style: TextStyle(color: Colors.white, fontSize: 18),),
//                    ),
//                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      child: Text(
                        "Expert Solutions in Concrete Rehabilitation",
                        style: TextStyle(color: Colors.yellow, fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  CarouselSlider(
                    height: 260,
                    reverse: false,
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(seconds: 3),
                    enableInfiniteScroll: true,
                    items: Data.carousal.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return CarousalWidget(
                            imagePath: i['imagepath'],
                            title: i['title'],
                          );
                        },
                      );
                    }).toList(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      child: Text(
                        "Domain Expertise",
                        style: TextStyle(color: Colors.yellow, fontSize: 18),
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
