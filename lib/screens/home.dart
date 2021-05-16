import 'package:flutter/material.dart';
import 'package:task/widgets/newsList.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          NewsList(
            title: "This is the Heading of the realted news this is and go on",
            subtitle:
                "This is the Heading of the realted news this is another Heading of the",
            img: "assets/road.jpg",
            newsType: "Sports",
          ),
          NewsList(
            title: "This is the Heading of the",
            subtitle:
                "This is the Heading of the realted news this is another Heading of the and this will go like this when nothing",
            img: "assets/forest.jpg",
            newsType: "Medical",
          ),
          NewsList(
            title: "This is the Heading of the",
            subtitle:
                "This is the Heading of the realted news this is another Heading of the and this will go like this when nothing",
            img: "assets/forest.jpg",
            newsType: "Medical",
          ),
          NewsList(
            title: "This is the Heading of the realted news this is and go on",
            subtitle:
                "This is the Heading of the realted news this is another Heading of the",
            img: "assets/road.jpg",
            newsType: "Gaming",
          ),
          NewsList(
            title: "This is the Heading of the realted news this is and go on",
            subtitle:
                "This is the Heading of the realted news this is another Heading of the",
            img: "assets/road.jpg",
            newsType: "Gaming",
          ),
        ],
      ),
    );
  }
}
