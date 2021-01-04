import 'package:flutter/material.dart';
import 'package:flutter_sharedpreferences_task1/Screens/Home.dart';
import 'package:flutter_sharedpreferences_task1/Screens/Settings.dart';

var route = <String , WidgetBuilder>{
  Home.ID : (context) => Home() ,
  Settings.ID : (context) => Settings() ,
} ;