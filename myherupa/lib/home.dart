import 'package:flutter/material.dart';
import './cards.dart';
import './updates.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    String name = 'Dhawal Agarwal';
    String rollno = '101703165';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
          height: deviceHeight * 0.50,
          width: deviceWidth,
          margin: EdgeInsets.only(top: deviceHeight * 0.085),
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[Cards(), Cards(), Cards()],
            scrollDirection: Axis.horizontal,
          ),
        ),
        Container(
          // margin: EdgeInsets.only(top: .0),
          padding: EdgeInsets.only(top: 10.0, left: deviceWidth * 0.06),
          child: Text(
            'Updates',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 23.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(8),
            child: Cards(),
            scrollDirection: Axis.vertical,
          ),
        )
      ],
    );
  }
}
