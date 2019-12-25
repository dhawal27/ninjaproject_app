import 'package:flutter/material.dart';

class Cards extends StatefulWidget {
  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    var cardWidth = 0.7 * deviceWidth;
    var cardHeight = 0.42 * deviceHeight;
    bool selected = false;
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: AnimatedContainer(
          width: cardWidth,
          height: cardHeight,
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          margin: selected
              ? EdgeInsets.only(bottom: deviceHeight * 0.1)
              : EdgeInsets.only(top: deviceHeight * 0.2),
          duration: Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            color: Colors.grey,
            elevation: 7,
          ),
        ),
      ),
    );
  }
}
