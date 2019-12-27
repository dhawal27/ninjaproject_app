import 'package:flutter/material.dart';

class Cards extends StatefulWidget {
  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  bool selected;
  @override
  void initState() {
    super.initState();

    selected = false;
  }

  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    var cardWidth = 0.7 * deviceWidth;
    var cardHeight = 0.42 * deviceHeight;
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Container(
        width: cardWidth,
        height: cardHeight,

        // alignment: _alignment,
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        margin: selected
            ? EdgeInsets.only(top: 10.0, bottom: 100.0)
            : EdgeInsets.only(top: 100.0, bottom: 0.0),
        // duration: Duration(seconds: 2),
        // curve: Curves.fastOutSlowIn,

        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          color: Colors.lightBlue,
          elevation: 7,
        ),
      ),
    );
  }
}
