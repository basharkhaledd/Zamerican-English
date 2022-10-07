import 'package:flutter/material.dart';

import '../screens/homepage.dart';
import '../screens/loginpage.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 61, 105, 147),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CircleAvatar(
            radius: 50,
            foregroundImage: NetworkImage(
                "https://static.vecteezy.com/system/resources/thumbnails/005/545/335/small/user-sign-icon-person-symbol-human-avatar-isolated-on-white-backogrund-vector.jpg"),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              "Bashar-qawasmi",
              style: TextStyle(fontSize: 20, color: Colors.white60),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          GestureDetector(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Icon(
                    Icons.rate_review,
                    color: Colors.white60,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "rate the app",
                    style: TextStyle(color: Colors.white60, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Icon(
                    Icons.email,
                    color: Colors.white60,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "email",
                    style: TextStyle(color: Colors.white60, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Icon(
                    Icons.settings,
                    color: Colors.white60,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "Setting",
                    style: TextStyle(color: Colors.white60, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white60,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "Favorite",
                    style: TextStyle(color: Colors.white60, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Icon(
                    Icons.mobile_screen_share,
                    color: Colors.white60,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "Call us",
                    style: TextStyle(color: Colors.white60, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.of(context).pop(MaterialPageRoute(builder: (context) {
                  return HomePage();
                }));
              });
              setState(() {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }));
              });
            },
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Icon(
                    Icons.logout,
                    color: Colors.white60,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "Logout",
                    style: TextStyle(color: Colors.white60, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
