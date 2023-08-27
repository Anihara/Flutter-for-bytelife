import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import '../../models/user_model.dart';
// class Profile extends StatefulWidget {

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageurl =
        "https://pbs.twimg.com/profile_images/1260313818711777280/lSsDWrL-_400x400.jpg";
    return Drawer(
      child: Container(
        color: Color.fromARGB(255, 200, 165, 138),
        child: ListView(
          // padding: EdgeInsets.symmetric(vertical: 5.0),
          children: [
            DrawerHeader(
              // decoration: BoxDecoration(
              //   color: Color.fromARGB(255, 91, 172, 234)
              // ),
              padding: EdgeInsets.zero,
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: UserAccountsDrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 220, 105, 34)),
                accountName: Text("Hehehe"),
                accountEmail: Text("heheh9211@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageurl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white),
              // onTap: () {
              //   Navigator.pushNamedAndRemoveUntil(context,'/', (route)=>false);
              // },
              title: Text(
                "Home",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading:
                  Icon(CupertinoIcons.profile_circled, color: Colors.white),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
              title: Text(
                "My Profile",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.app_badge, color: Colors.white),
              title: Text(
                "My Apps",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.location, color: Colors.white),
              title: Text(
                "Location",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.lock, color: Colors.white),
              onTap: () {
               Navigator.pushNamedAndRemoveUntil(context,'/', (route)=>false); 
              },
              title: Text(
                "Log Out",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading:
                  Icon(CupertinoIcons.airplane, color: Colors.white),
                  onTap: () {
                    Navigator.pushReplacementNamed(context,'/');
                  },
              title: Text(
                "Aeroplane Mode",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
