import 'package:flutter/material.dart';
import 'package:flutter_sharedpreferences_task1/DataBases/SharedPrefModel.dart';
import 'package:flutter_sharedpreferences_task1/Screens/Settings.dart';

class Home extends StatefulWidget {
  static const String ID = "/home" ;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double font = 20.0;
  getFont() async{
    var result  = await SharedPrefModel.getInstance().getFontSize();
    setState(() {
      font = result ?? 20.0 ;
    });
  }
  @override
  Widget build(BuildContext context) {
    getFont() ;

    return Scaffold(
      appBar: AppBar(
        title: Text("Task1"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "My name is ahmed talal and i am android and flutter developer" ,
                style: TextStyle(
                  fontWeight: FontWeight.bold ,
                  fontSize: font ,
                ),
              ) 
            ) ,
            RaisedButton(
              child: Text("Settings"),
              onPressed: (){
                setState(() {
                  Navigator.of(context).pushNamed(Settings.ID) ;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}