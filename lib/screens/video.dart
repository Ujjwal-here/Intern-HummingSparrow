import 'package:flutter/material.dart';
import 'package:task/widgets/list.dart';

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
            padding: const EdgeInsets.all(15),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Text(
              "Video",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Stack(
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
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text(
                    "Date & Time here",
                    style: TextStyle(
                        fontSize: 17, color: Color.fromRGBO(125, 125, 125, 1)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "This is the Heading of the related news this is another Heading of the",
                    style: TextStyle(
                        fontSize: 18, color: Color.fromRGBO(125, 125, 125, 1)),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(12),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey[200],
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ]),
                  child: Text(
                    "Information",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                ListVid(),
                ListVid(),
                ListVid(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
