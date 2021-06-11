import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:flutter_revision/models/catalog.dart';
import 'package:flutter_revision/widgets/drawer.dart';
import 'package:flutter_revision/widgets/item_widget.dart';
import "dart:convert";

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   final int days=30;

   final String name="Gurshehzad Singh";

   @override
  void initState() {
    super.initState();
    loadData();
  }
loadData()async{
  await Future.delayed(Duration(seconds: 2));
 final catalogJson = await rootBundle.loadString("assets/files/catalog.json");
 final decodedData= jsonDecode(catalogJson);
 var productsData=decodedData["products"];
 CatalogModel.items=List.from(productsData).map<Item>((item) => Item.fromMap(item)).toList();
 setState(() {});
}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
  appBar: AppBar(
    title: Text("Flutter Tour")
  ),
    body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: (CatalogModel.items!= null && CatalogModel.items.isNotEmpty)
        ? GridView.builder( 
         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 2,
           mainAxisSpacing: 16,
           crossAxisSpacing: 16,
           ),
         itemBuilder: (context,index){
           final item= CatalogModel.items[index];
           return Card(
             clipBehavior: Clip.antiAlias,
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
             child: GridTile(
               header: Container(
                 child: Text(item.name, style: TextStyle(color:Colors.white)),
                 padding: const EdgeInsets.all(12),
                 decoration: BoxDecoration(
                   color: Colors.deepPurple,
                 ),
               ),
               child:Image.network(item.image),
               footer: Container(
                 child: Text(item.price.toString(), style: TextStyle(color:Colors.white)),
                 padding: const EdgeInsets.all(12),
                 decoration: BoxDecoration(
                   color: Colors.black,
                 ),
               ),
               )
             );
         },
         itemCount: CatalogModel.items.length,)
      :Center (
        child: CircularProgressIndicator(),
      ),
    ),
     drawer: MyDrawer(),
     );
  }
}