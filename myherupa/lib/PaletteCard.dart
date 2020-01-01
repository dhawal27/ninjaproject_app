import 'package:flutter/material.dart';

class PaletteCard extends StatelessWidget {

  final int selected;
  final hoverCard;
  final int currIndex;

  PaletteCard({this.selected, this.hoverCard, this.currIndex});

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    var cardWidth = 0.75 * deviceWidth;
    var cardHeight = 0.42 * deviceHeight;
    return GestureDetector(
      onTap: () {
        hoverCard(currIndex);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: cardWidth,
        height: cardHeight,
        // alignment: _alignment,
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        margin: selected == currIndex
            ? EdgeInsets.only(
                top: deviceHeight * 0.0, bottom: deviceHeight * 0.06)
            : EdgeInsets.only(top: deviceHeight * 0.06, bottom: 0.0),
        // duration: Duration(seconds: 2),
        // FOR DHAWAL: SELECT AN ANIMATION CURVE
        // curve: Curves.fastOutSlowIn,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          color: Colors.lightBlue,
          elevation: 7,
        ),
      ),
    );
  }
}