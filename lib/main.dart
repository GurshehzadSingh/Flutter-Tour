import 'package:flutter/material.dart';
import 'package:flutter_revision/pages/login_page.dart';
import 'package:flutter_revision/utils/routes.dart';
import 'package:flutter_revision/widgets/themes.dart';
import 'pages/home_page.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //  -- datatypes in dart -- 
    //bool, double, num(can take both int and double)
    //var(any,compiler decides), const
    //final(like const but can be added into it)
   return MaterialApp(
     themeMode: ThemeMode.light,
     theme:MyTheme.lightTheme(context),
     darkTheme: MyTheme.darkTheme(context),
       debugShowCheckedModeBanner: false,
       initialRoute: MyRoutes.homeRoute,
     routes: {
       "/" : (context)=>LoginPage(),
       MyRoutes.homeRoute: (context)=>HomePage(),
       MyRoutes.loginRoute : (context)=>LoginPage()
     },
   );
  }
}