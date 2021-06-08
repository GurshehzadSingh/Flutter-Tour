import "package:flutter/material.dart";
import 'package:flutter_revision/widgets/drawer.dart';

class HomePage extends StatelessWidget {
   final int days=30;
   final String name="Gurshehzad Singh";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
  appBar: AppBar(
    title: Text("Flutter Tour App")
  ),
    body: Center(
     child: Container(
      child: Text("Welcome to $days days of Flutter Tour by - $name"),
    ),
     ),
     drawer: MyDrawer(),
     );
  }
}