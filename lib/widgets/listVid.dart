import 'package:flutter/material.dart';

import '../config.dart';

class ListVid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: isPortrait
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.center,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(3),
              child: Image(
                  width: isPortrait
                      ? SizeConfig.blockSizeHorizontal * 38
                      : SizeConfig.blockSizeVertical * 38,
                  image: AssetImage("assets/forest.jpg"))),
          Container(
            margin: isPortrait ? null : const EdgeInsets.only(left: 20),
            child: Column(
              children: [
                Container(
                  constraints: BoxConstraints(
                    maxWidth: isPortrait
                        ? SizeConfig.blockSizeHorizontal * 48
                        : SizeConfig.blockSizeVertical * 48,
                  ),
                  child: Text(
                    "This is the Heading of the realted news or may be extend",
                    style: TextStyle(
                        fontSize: isPortrait
                            ? SizeConfig.safeBlockHorizontal * 4
                            : SizeConfig.safeBlockVertical * 4,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  constraints: BoxConstraints(
                    maxWidth: isPortrait
                        ? SizeConfig.blockSizeHorizontal * 48
                        : SizeConfig.blockSizeVertical * 48,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.calendar_today_outlined,
                        color: Colors.grey,
                        size: isPortrait
                            ? SizeConfig.safeBlockHorizontal * 4.5
                            : SizeConfig.safeBlockVertical * 4.5,
                      ),
                      Text(
                        "03-03-21",
                        style: TextStyle(
                            fontSize: isPortrait
                                ? SizeConfig.safeBlockHorizontal * 4.2
                                : SizeConfig.safeBlockVertical * 4.2,
                            color: Colors.grey),
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
                              fontSize: isPortrait
                                  ? SizeConfig.safeBlockHorizontal * 3.5
                                  : SizeConfig.safeBlockVertical * 3.5,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
