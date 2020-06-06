import 'package:crindia/constants/data.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String expertise;
  final int width;

  const CustomCard({Key key, @required this.expertise, this.width})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.brightness_1,
          color: Data.backgroundColor,
          size: 15,
        ),
        SizedBox(
          width: 10,
        ),
        Container(
            decoration: BoxDecoration(
                color: Data.backgroundColor,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    expertise,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Icon(Icons.arrow_right, color: Colors.white,),
                ],
              ),
            ))
      ],
    );
  }
}
