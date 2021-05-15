import 'package:flutter/material.dart';
import 'package:task/widgets/listDetails.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(26, 50, 43, 1),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.grey[200],
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Color.fromRGBO(237, 98, 6, 1), width: 2),
                  ),
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage("assets/profile.png"),
                    backgroundColor: Color.fromRGBO(130, 139, 196, 1),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Text(
                    "Dinesh Yaduvanshi",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(237, 98, 6, 1),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 2,
                        // changes position of shadow
                      ),
                    ],
                  ),
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromRGBO(237, 98, 6, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(30),
            alignment: Alignment.centerLeft,
            color: Colors.white,
            child: Column(
              children: [
                DetailsList(
                  title: "Location",
                  subtitle:
                      "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
                ),
                DetailsList(
                  title: "Pincode",
                  subtitle: "xxxxx",
                ),
                DetailsList(
                  title: "Date of Birth",
                  subtitle: "dd-mm-yy",
                ),
                DetailsList(
                  title: "Gender",
                  subtitle: "Male",
                ),
                DetailsList(
                  title: "Whatsapp",
                  subtitle: "+91-xxxxxxxxxx",
                ),
                DetailsList(
                  title: "Email",
                  subtitle: "xxxxxxxxxxxx@gmail.com",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
