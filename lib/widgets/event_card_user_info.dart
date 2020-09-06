import 'package:flutter/material.dart';

class EventCardUserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.grey.shade900,
          child: Text('SS'),
          minRadius: 40.0,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Text(
                'SIYA SHANGE',
                textAlign: TextAlign.left,
              ),
              Text(
                ' Musgrave, Dbn',
                textAlign: TextAlign.left,
              )
            ],
          ),
        )
      ],
    );
  }
}
