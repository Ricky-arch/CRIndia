import 'package:crindia/constants/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutExpertise extends StatefulWidget {
  final String title, about, noOfWorks, duration;
  final List imageUrl;

  const AboutExpertise(
      {Key key,
      this.title,
      this.about,
      this.imageUrl,
      this.noOfWorks,
      this.duration})
      : super(key: key);
  @override
  _AboutExpertiseState createState() => _AboutExpertiseState();
}

class _AboutExpertiseState extends State<AboutExpertise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Data.backgroundColor,
        automaticallyImplyLeading: false,
        //backgroundColor: Data.backgroundColor,
        title: Stack(
          children: <Widget>[
            Container(
                child: Padding(
              padding: EdgeInsets.fromLTRB(0, 8, 8, 8),
              child: Text(
                widget.title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ))
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Data.backgroundColor,
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(60))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "About: ",
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.about,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Current Number of Works: ",
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.noOfWorks,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Duration of Work: ",
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "3-4 hrs",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Gallery: ",
                      style: TextStyle(
                        color: Data.backgroundColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
