import 'package:crindia/constants/data.dart';
import 'package:crindia/custom_widgets/about_expertise.dart';
import 'package:flutter/material.dart';

class AllExpertise extends StatefulWidget {
  @override
  _AllExpertiseState createState() => _AllExpertiseState();
}

class _AllExpertiseState extends State<AllExpertise> {
  getWord<T>(String s) {
    return s.split(" ");
  }

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
                              text: 'Domain ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 22)),
                          TextSpan(
                            text: 'Expertise',
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
                      icon: Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                ))
          ],
        ),
      ),
      backgroundColor: Data.backgroundColor,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: Data.allExpertise.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Data.backgroundColor,
                                  border: Border.all(
                                      width: 1, color: Colors.yellow)),
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: RichText(
                                      text: TextSpan(
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: getWord(Data.allExpertise[
                                                          index]['title'])[0]
                                                      .toString() +
                                                  " ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontSize: 18)),
                                          TextSpan(
                                            text: getWord(
                                                    Data.allExpertise[index]
                                                        ['title'])[1]
                                                .toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.yellow,
                                                fontSize: 20),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.question_answer,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                ],
                              )),
                        ),
                        ListView.builder(
                          scrollDirection: Axis.vertical,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: Data.allExpertise[index]['list'].length,
                          itemBuilder: (BuildContext context, int i) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AboutExpertise(
                                            title: Data.allExpertise[index]
                                                ['list'][i]['title'],
                                            about: Data.allExpertise[index]
                                                ['list'][i]['about'],
                                            noOfWorks: Data.allExpertise[index]
                                                ['list'][i]['noOfWorks'],
                                        imageUrl: Data.allExpertise[index]['list'][i]['images'],
                                          )),
                                );
                              },
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Wrap(
                                    children: [
                                      Row(
                                        children: [
                                          (i % 2 == 0)
                                              ? Spacer()
                                              : SizedBox(
                                                  width: 0,
                                                ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5)),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  (i % 2 != 0)
                                                      ? Icon(Icons.arrow_left)
                                                      : SizedBox(
                                                          width: 0,
                                                        ),
                                                  Text(
                                                    Data.allExpertise[index]
                                                        ['list'][i]['title'],
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  (i % 2 == 0)
                                                      ? Icon(Icons.arrow_right)
                                                      : SizedBox(
                                                          width: 0,
                                                        ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    );
                  }),
            ],
          )
        ],
      ),
    );
  }
}
