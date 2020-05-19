import 'package:crindia/constants/data.dart';
import 'package:flutter/material.dart';

class CarousalWidget extends StatelessWidget {
  final String imagePath;
  final String title;

  const CarousalWidget({Key key, this.imagePath, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(

            decoration: BoxDecoration(
              color: Colors.white
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0,0, 8,0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Image.asset(
                      imagePath,
                      height: 200,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          title,
                          style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: (){

                          },
                          child: Icon(
                            Icons.arrow_right,
                            size: 25,
                            color: Colors.black,
                          ),
                        )

                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
