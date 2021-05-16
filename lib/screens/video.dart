import 'package:flutter/material.dart';
import 'package:task/widgets/listVid.dart';

import '../config.dart';

class Video extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    SizeConfig().init(context);
    return Scaffold(
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
              style: TextStyle(
                  fontSize: isPortrait
                      ? SizeConfig.safeBlockHorizontal * 4.8
                      : SizeConfig.safeBlockVertical * 4.8,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image(
                  image: AssetImage("assets/forest.jpg"),
                ),
                Icon(
                  Icons.play_arrow_rounded,
                  color: Colors.white,
                  size: isPortrait
                      ? SizeConfig.safeBlockHorizontal * 20
                      : SizeConfig.safeBlockVertical * 20,
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            margin:
                isPortrait ? null : const EdgeInsets.only(left: 60, right: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "This is the Heading of the realted news This is another",
                  style: TextStyle(
                      fontSize: isPortrait
                          ? SizeConfig.safeBlockHorizontal * 4.3
                          : SizeConfig.safeBlockVertical * 4.3,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  child: Text(
                    "Date & Time here",
                    style: TextStyle(
                        fontSize: isPortrait
                            ? SizeConfig.safeBlockHorizontal * 4.2
                            : SizeConfig.safeBlockVertical * 4.2,
                        color: Color.fromRGBO(125, 125, 125, 1)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Text(
                    "This is the Heading of the related news this is another Heading of the",
                    style: TextStyle(
                        fontSize: isPortrait
                            ? SizeConfig.safeBlockHorizontal * 4.3
                            : SizeConfig.safeBlockVertical * 4.3,
                        color: Color.fromRGBO(125, 125, 125, 1)),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 20),
                  padding: const EdgeInsets.all(12),
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
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: isPortrait
                          ? SizeConfig.safeBlockHorizontal * 4.3
                          : SizeConfig.safeBlockVertical * 4.3,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                ListVid(
                  img: "assets/forest.jpg",
                ),
                ListVid(
                  img: "assets/forest.jpg",
                ),
                ListVid(
                  img: "assets/forest.jpg",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
