import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:crindia/constants/data.dart';
import 'package:crindia/custom_widgets/carousal_widget.dart';
import 'package:crindia/custom_widgets/custom_card.dart';
import 'package:crindia/views/all_expertise.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
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
                              text: 'Company Profile',
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



      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

        ],
      ),
    );
  }
}
