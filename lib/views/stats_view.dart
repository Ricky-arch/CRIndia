import 'package:crindia/constants/data.dart';
import 'package:crindia/custom_widgets/custom_card.dart';
import 'package:crindia/custom_widgets/custom_pie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatsView extends StatefulWidget {
  @override
  _StatsViewState createState() => _StatsViewState();
}

class _StatsViewState extends State<StatsView> {
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
                              text: 'Statistics',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.yellow,
                                  fontSize: 22)),
                        ],
                      ),
                    ),
                    Spacer(),
                  ],
                ))
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: Text(
                    "On going works",
                    style: TextStyle(color: Colors.yellow, fontSize: 18),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(35),
                        bottomRight: Radius.circular(35))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.brightness_1,
                                color: Data.pieColors[0],
                              ),
                              Text(
                                  Data.pieDataExpertise[0]['title'].toString()),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.brightness_1,
                                color: Data.pieColors[1],
                              ),
                              Text(
                                  Data.pieDataExpertise[1]['title'].toString()),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.brightness_1,
                                color: Data.pieColors[2],
                              ),
                              Text(
                                  Data.pieDataExpertise[2]['title'].toString()),
                            ],
                          )
                        ],
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
                      child: Container(
                        width: 200,
                        height: 200,
                        child: CustomPie(),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white70,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: -10,
                              blurRadius: 17,
                              offset: Offset(-5, -5),
                              color: Colors.white,
                            ),
                            BoxShadow(
                              spreadRadius: -2,
                              blurRadius: 10,
                              offset: Offset(7, 7),
                              color: Color.fromRGBO(146, 182, 216, 1),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
