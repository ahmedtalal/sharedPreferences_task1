import 'package:flutter/material.dart';
import 'package:flutter_sharedpreferences_task1/Routing.dart';
import 'package:flutter_sharedpreferences_task1/Screens/Home.dart';

 main(List<String> args) {
   runApp(Task1()) ;
 }

 class Task1 extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       initialRoute: Home.ID ,
       routes: route ,
     );
   }
 }