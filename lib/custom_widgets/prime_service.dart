import 'package:flutter/material.dart';
class PrimeServices extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Container(
              // child: Center(child: Image.asset("images/slider/2.jpg", )),
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("https://images.pexels.com/photos/585419/pexels-photo-585419.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                    fit: BoxFit.fill
                ),
                //color: Colors.white,
                borderRadius: BorderRadius.circular(20),

              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              margin: EdgeInsets.only(top: 40, bottom: 20),
              decoration: BoxDecoration(
                color: Colors.yellow,
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Testing",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: GestureDetector(
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black,
                          size: 30,
                        ),
                        onTap: () {},
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
