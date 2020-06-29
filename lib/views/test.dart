import 'package:crindia/constants/data.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
      height: MediaQuery.of(context).size.height / 3.5,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Data.domainExpertise.length,
          itemBuilder: (context, index) {
            return Container(

              width: MediaQuery.of(context).size.width * 0.5,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.pink,
                        borderRadius: BorderRadius.all(Radius.circular(10))),

                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        Data.domainExpertise[index].toString(),
                        maxLines: null,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500),
                      ),
                    )),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
