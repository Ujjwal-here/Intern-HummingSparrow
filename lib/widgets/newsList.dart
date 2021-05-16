import 'package:flutter/material.dart';

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
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 130,
              width: 140,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(img),
              ),
            ),
          ),
          Container(
            constraints: BoxConstraints(maxHeight: 120),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: 230),
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: 230),
                  child: Text(
                    subtitle,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 17, color: Colors.grey),
                  ),
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: 230),
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
                            EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Color.fromRGBO(237, 98, 6, 1),
                        ),
                        child: Text(
                          newsType,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Icon(
                        Icons.calendar_today_outlined,
                        color: Colors.grey,
                        size: 20,
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
