import 'package:crindia/constants/data.dart';
import 'package:crindia/custom_widgets/hero_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'image_tile.dart';

class AboutExpertise extends StatefulWidget {
  final String title, about, noOfWorks, duration;
  final List<String> imageUrl;

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
  var orientation;
  @override
  @override
  Widget build(BuildContext context) {
    orientation = MediaQuery.of(context).orientation;
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 1000,
                    child: Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: new StaggeredGridView.countBuilder(
                          crossAxisCount: 4,
                          itemCount: widget.imageUrl.length,
                          itemBuilder: (BuildContext context, int index) =>
                              GestureDetector(
                            onTap: () {
                              print("hello World");
                            },
                            child: new Container(
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child:
                                      ImageTile(imageUrl: widget.imageUrl[index]),
                                )),
                          ),
                          staggeredTileBuilder: (int index) =>
                              new StaggeredTile.count(2, index.isEven ? 2 : 1),
                          mainAxisSpacing: 4.0,
                          crossAxisSpacing: 4.0,
                        )),
                  );
                }),
          ),
          Center(
            child: IconButton(
              icon: Icon(Icons.arrow_left),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }

  void showDialog(int index) {
    showGeneralDialog(
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 400),
      context: context,
      pageBuilder: (_, __, ___) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: MediaQuery.of(context).size.height / 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  SizedBox.expand(child: Image.asset(Data.testImages[index])),
            ),
            margin: EdgeInsets.only(bottom: 50, left: 12, right: 12),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        return SlideTransition(
          position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
          child: child,
        );
      },
    );
  }
}
