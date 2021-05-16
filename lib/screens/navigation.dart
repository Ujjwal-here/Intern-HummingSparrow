import 'package:flutter/material.dart';
import 'package:task/screens/home.dart';
import 'package:task/screens/profile.dart';
import 'package:task/screens/video.dart';

import '../config.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  PageController pageController;
  //Bottom Navigation bar(onTap)
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();

    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void onPageChanged(int currentIndex) {
    setState(() {
      this.currentIndex = currentIndex;
    });
  }

  List drawerItems = [
    {
      "name": "Home",
    },
    {
      "name": "Videos",
    },
    {
      "name": "Profile",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    SizeConfig().init(context);
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: null,
              decoration: BoxDecoration(
                color: Color.fromRGBO(26, 50, 43, 1),
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: drawerItems.length,
              itemBuilder: (BuildContext context, int index) {
                Map item = drawerItems[index];
                return Column(
                  children: [
                    ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.only(left: 30),
                      title: Text(
                        item['name'],
                        style: TextStyle(
                            fontSize: isPortrait
                                ? SizeConfig.safeBlockHorizontal * 4.5
                                : SizeConfig.safeBlockVertical * 4.5,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        pageController.jumpToPage(index);
                        Navigator.pop(context);
                      },
                    ),
                    Divider(
                      color: Colors.black54,
                    )
                  ],
                );
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(26, 50, 43, 1),
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        children: [
          Home(),
          Video(),
          Profile(),
        ],
      ),
    );
  }
}
