import 'package:flutter/material.dart';

class DetailsList extends StatelessWidget {
  final String title;
  final String subtitle;

  DetailsList({@required this.title, @required this.subtitle});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, left: 5),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(209, 209, 209, 1)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 5, left: 5),
            child: Text(
              subtitle,
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Divider(
            thickness: 1,
            color: Color.fromRGBO(182, 189, 187, 1),
          )
        ],
      ),
    );
  }
}
