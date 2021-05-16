import 'package:flutter/material.dart';
import 'package:task/config.dart';

class NewsList extends StatelessWidget {
  final String subtitle;
  final String img;
  final String title;
  final String newsType;

  NewsList({
    @required this.subtitle,
    @required this.title,
    @required this.img,
    @required this.newsType,
  });

  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    SizeConfig().init(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: isPortrait
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: isPortrait
                  ? SizeConfig.blockSizeVertical * 16
                  : SizeConfig.blockSizeHorizontal * 18,
              width: isPortrait
                  ? SizeConfig.blockSizeHorizontal * 30
                  : SizeConfig.blockSizeVertical * 35,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(img),
              ),
            ),
          ),
          Container(
            margin: isPortrait ? null : const EdgeInsets.only(left: 20),
            constraints: BoxConstraints(
              maxHeight: isPortrait
                  ? SizeConfig.blockSizeVertical * 15
                  : SizeConfig.blockSizeHorizontal * 17,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  constraints: BoxConstraints(
                    maxWidth: isPortrait
                        ? SizeConfig.blockSizeHorizontal * 55
                        : SizeConfig.blockSizeVertical * 55,
                  ),
                  child: Text(
                    title,
                    style: TextStyle(
                        fontSize: isPortrait
                            ? SizeConfig.safeBlockHorizontal * 4.5
                            : SizeConfig.safeBlockVertical * 4.5,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  constraints: BoxConstraints(
                    maxWidth: isPortrait
                        ? SizeConfig.blockSizeHorizontal * 55
                        : SizeConfig.blockSizeVertical * 55,
                  ),
                  child: Text(
                    subtitle,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: isPortrait
                            ? SizeConfig.safeBlockHorizontal * 4.1
                            : SizeConfig.safeBlockVertical * 4.1,
                        color: Colors.grey),
                  ),
                ),
                Container(
                  constraints: BoxConstraints(
                    maxWidth: isPortrait
                        ? SizeConfig.blockSizeHorizontal * 55
                        : SizeConfig.blockSizeVertical * 55,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.calendar_today_outlined,
                        color: Colors.grey,
                        size: isPortrait
                            ? SizeConfig.safeBlockHorizontal * 4.2
                            : SizeConfig.safeBlockVertical * 4.2,
                      ),
                      Text(
                        "03-03-21",
                        style: TextStyle(
                            fontSize: isPortrait
                                ? SizeConfig.safeBlockHorizontal * 4.1
                                : SizeConfig.safeBlockVertical * 4.1,
                            color: Colors.grey),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Color.fromRGBO(237, 98, 6, 1),
                        ),
                        child: Text(
                          newsType,
                          style: TextStyle(
                              fontSize: isPortrait
                                  ? SizeConfig.safeBlockHorizontal * 3.5
                                  : SizeConfig.safeBlockVertical * 3.5,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Icon(
                        Icons.bookmark_outline,
                        color: Colors.black87,
                        size: isPortrait
                            ? SizeConfig.safeBlockHorizontal * 4.8
                            : SizeConfig.safeBlockVertical * 4.8,
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
