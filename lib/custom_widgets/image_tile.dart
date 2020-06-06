import 'package:flutter/material.dart';
class ImageTile extends StatefulWidget {
  final String imageUrl;

  const ImageTile({Key key, @ required this.imageUrl}) : super(key: key);
  @override
  _ImageTileState createState() => _ImageTileState();
}

class _ImageTileState extends State<ImageTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){print("Hello world");},
      child: new Card(
        color: const Color(0x00000000),
        elevation: 3.0,
        child: new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage(widget.imageUrl),
                fit: BoxFit.cover,
              ),
              borderRadius: new BorderRadius.all(const Radius.circular(10.0)),
            )),
      ),
    );
  }
}
