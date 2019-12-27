import 'package:flutter/material.dart';
import './cards.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    String name = 'Dhawal Agarwal';
    String rollno = '101703165';

    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  left: deviceWidth * 0.08, top: deviceHeight * 0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      '$name',
                      style: TextStyle(
                          color: Colors.blueGrey[900],
                          fontWeight: FontWeight.w600,
                          fontSize: 25.0,
                          fontFamily: 'Roboto'),
                    ),
                  ),
                  Container(
                    child: Text(
                      '$rollno',
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w400,
                          fontSize: 20.0,
                          fontFamily: 'Roboto'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  right: deviceWidth * 0.07, top: deviceHeight * 0.03),
              child: IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {},
                iconSize: 30.0,
                // color: Colors.grey[600],
              ),
            ),
          ],
        ),
        Container(
          height: deviceHeight * 0.6,
          width: deviceWidth,
          margin: EdgeInsets.only(top: deviceHeight * 0.1),
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[Cards(), Cards(), Cards()],
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    );
  }
}
