import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              child: Text('Hello\,'),
            ),
            // Container(child: Text($name),),
          ],
        ),
      ],
    );
  }
}
