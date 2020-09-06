import 'package:flutter/material.dart';

class EventCardDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "Bobotie is a delightful blend of complex flavours. It is essentially a meatloaf that's mixed with...",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey.shade700),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: FlatButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.black87)),
            child: Text(
              'More Details',
              style: TextStyle(color: Colors.grey.shade800),
            ),
          ),
        )
      ],
    );
  }
}
