import 'package:flutter/material.dart';

class ListVid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(3),
              child: Image(width: 170, image: AssetImage("assets/forest.jpg"))),
          Column(
            children: [
              Container(
                constraints: BoxConstraints(maxWidth: 200),
                child: Text(
                  "This is the Heading of the realted news or may be extend",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 12),
                constraints: BoxConstraints(maxWidth: 200),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.grey,
                      size: 20,
                    ),
                    Text(
                      "03-03-21",
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Color.fromRGBO(237, 98, 6, 1),
                      ),
                      child: Text(
                        "Info",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
