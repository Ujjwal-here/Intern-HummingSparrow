import 'package:flutter/material.dart';

class Video extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(26, 50, 43, 1),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(15),
            alignment: Alignment.center,
            child: Text(
              "Video",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Image(image: AssetImage("assets/forest.jpg")),
              Icon(
                Icons.play_arrow_rounded,
                color: Colors.white,
                size: 100,
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "This is the Heading of the realted news This is another",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Date & Time here",
                  style: TextStyle(
                      fontSize: 18, color: Color.fromRGBO(125, 125, 125, 1)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
