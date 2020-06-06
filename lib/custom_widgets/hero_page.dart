import 'package:flutter/material.dart';

class HeroPage extends StatefulWidget {
  final List<String> imagePath;

  const HeroPage({Key key, @required this.imagePath}) : super(key: key);
  @override
  _HeroPageState createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  @override
  Widget build(BuildContext context) {
    return widget.imagePath.length == 0
        ? Center(child: Text("Images Unavailable"))
        : Container(
            child: GridView.extent(
                shrinkWrap: true,
                maxCrossAxisExtent: 220,
                children: _buildGridWidget(widget.imagePath.length)),
          );
  }

  List<Widget> _buildGridWidget(int length) {
    List<Container> list = new List<Container>.generate(length, (index) {
      return Container(
        margin: EdgeInsets.all(10),
        child: GestureDetector(
          onTap: () {
            showDialog(index);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              widget.imagePath[index],
              fit: BoxFit.fill,
            ),
          ),
        ),
        decoration: new BoxDecoration(color: Colors.white, boxShadow: [
          new BoxShadow(
            color: Colors.black,
            blurRadius: 20.0,
          ),
        ]),
      );
    });
    return list;
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
              SizedBox.expand(child: Image.asset(widget.imagePath[index])),
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
