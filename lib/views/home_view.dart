import 'package:carousel_slider/carousel_slider.dart';
import 'package:crindia/constants/data.dart';
import 'package:crindia/custom_widgets/carousal_widget.dart';
import 'package:crindia/custom_widgets/custom_card.dart';
import 'package:crindia/views/all_expertise.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Data.backgroundColor,
      appBar: AppBar(
        backgroundColor: Data.backgroundColor,
        automaticallyImplyLeading: false,
        //backgroundColor: Data.backgroundColor,
        title: Stack(
          children: <Widget>[
            Container(
                decoration: BoxDecoration(color: Data.backgroundColor),
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
                    GestureDetector(
                      child: Image.asset(
                        "images/menu.png",
                        height: 20,
                      ),
                      onTap: () {},
                    ),
                  ],
                ))
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: Text(
                "Expert Solutions in Concrete Rehabilitation",
                style: TextStyle(color: Colors.yellow, fontSize: 18),
              ),
            ),
          ),
          CarouselSlider(
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            initialPage: 0,
            height: 300,
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
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15, 0.0),
                child: Container(
                  child: Text(
                    "Domain Expertise",
                    style: TextStyle(color: Colors.yellow, fontSize: 18),
                  ),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllExpertise()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15, 0.0),
                  child: Container(
                    child: Text(
                      "Show All ->",
                      style: TextStyle(color: Colors.yellow, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5,),

          Padding(
            padding: EdgeInsets.fromLTRB(40, 20, 0, 0.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50)),
                  color: Colors.white),
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: Data.domainExpertise.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(20, 8, 0, 7),
                      child: CustomCard(
                        expertise: Data.domainExpertise[index],
                      ),
                    );
                  }),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Spacer(),
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15, 0.0),
                child: Container(
                  child: Text(
                    "Why Choose Us?",
                    style: TextStyle(color: Colors.yellow, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 30, 40, 0.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  color: Colors.white),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: Data.whyChooseUs.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ExpansionTile(
                          backgroundColor: Colors.transparent,
                          title: Stack(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Data.backgroundColor,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Text(
                                      Data.whyChooseUs[index]['title'],
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          trailing: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.pink,
                          ),
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8.0, 8, 0, 8),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.pink,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20))),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    Data.whyChooseUs[index]['reason'],
                                    maxLines: null,
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                  SizedBox(
                    height: 32,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
