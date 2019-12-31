import 'package:flutter/material.dart';

class Updates extends StatefulWidget {
  @override
  _UpdatesState createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
            alignment: Alignment.center,
            height: deviceHeight * 0.12,
            width: deviceWidth * 0.87,
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.grey[350],
              // border: new Border.all(width: 0.0, style: BorderStyle.solid),
              borderRadius: new BorderRadius.all(new Radius.circular(8.0)),
            ),
            child: Row(
              children: <Widget>[],
            )),
      ],
    );
  }
}
