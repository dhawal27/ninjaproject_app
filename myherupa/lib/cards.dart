import 'package:flutter/material.dart';

import './PaletteCard.dart';

class CardPalette extends StatefulWidget {

  @override
  _CardPaletteState createState() => _CardPaletteState();
}

class _CardPaletteState extends State<CardPalette> {
  
  int selected;
  
  @override
  void initState() {
    super.initState();
    selected = -1;
  }

  hoverCard (i) {
    setState(() {
      selected = i;
    });
  }

  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.50,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.085),
      child: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          PaletteCard(selected: selected, hoverCard: hoverCard, currIndex: 1),
          PaletteCard(selected: selected, hoverCard: hoverCard, currIndex: 2),
          PaletteCard(selected: selected, hoverCard: hoverCard, currIndex: 3)
        ],
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
