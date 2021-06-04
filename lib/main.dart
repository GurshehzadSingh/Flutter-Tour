import 'package:flutter/material.dart';

import 'home_page.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  -- datatypes in dart -- 
    //bool, double, num(can take both int and double)
    //var(any,compiler decides), const
    //final(like const but can be added into it)
   return MaterialApp(
     home: HomePage(),
   );
  }
}