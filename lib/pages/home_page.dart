import "package:flutter/material.dart";
import 'package:flutter_revision/models/catalog.dart';
import 'package:flutter_revision/widgets/drawer.dart';
import 'package:flutter_revision/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
   final int days=30;
   final String name="Gurshehzad Singh";

  @override
  Widget build(BuildContext context) {
    final dummyList=List.generate(20, (index) => CatalogModel.items[0]);
    return  Scaffold(
  appBar: AppBar(
    title: Text("Flutter Tour")
  ),
    body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context,index){
          return ItemWidget(item: dummyList[index]);
        },
      ),
    ),
     drawer: MyDrawer(),
     );
  }
}