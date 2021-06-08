import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl="https://res.cloudinary.com/practicaldev/image/fetch/s--B_s_Ten4--/c_fill,f_auto,fl_progressive,h_320,q_auto,w_320/https://dev-to-uploads.s3.amazonaws.com/uploads/user/profile_image/491350/6684cf25-3b7c-450e-9c27-f434a5c34daf.jpg";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
              child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Gurshehzad Singh"),
                accountEmail: Text("singhgurshehzad@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage:NetworkImage(imageUrl),
                  ),
               ) ,
              ),
              ListTile(
                leading:Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                  ),
                  title: Text(
                    "Home",
                    textScaleFactor: 1.2,
                  style: TextStyle (
                    color: Colors.white
                    )
                  )
              ),
              ListTile(
                leading:Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                  ),
                  title: Text(
                    "Profile",
                    textScaleFactor: 1.2,
                  style: TextStyle (
                    color: Colors.white
                    )
                  )
              ),
              ListTile(
                leading:Icon(
                  CupertinoIcons.mail,
                  color: Colors.white,
                  ),
                  title: Text(
                    "Email",
                    textScaleFactor: 1.2,
                  style: TextStyle (
                    color: Colors.white
                    )
                  )
              )
          ],
        ),
      ),
    );
  }
}