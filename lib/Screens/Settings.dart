import 'package:flutter/material.dart';
import 'package:flutter_sharedpreferences_task1/DataBases/SharedPrefModel.dart';

class Settings extends StatefulWidget {
  static const String ID = "/settings" ;

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: RadioListModel() ,
    );
  }
}

class RadioListModel extends StatefulWidget {
  @override
  _RadioListModelState createState() => _RadioListModelState();
}

class _RadioListModelState extends State<RadioListModel> {
  double fontSize = 20.0 ;
  getFont() async{
    var result  = await SharedPrefModel.getInstance().getFontSize();
    setState(() {
      fontSize = result ?? 20.0 ;
    });
  }
  @override
  Widget build(BuildContext context) {
    getFont() ;
    
    return Center(
      child: Column(
        children: [
          RadioListTile(
            title: Text("font size 30"),
            value: 30.0 ,
            groupValue: fontSize,
            onChanged: (newValue){
              setState(() {
                fontSize = newValue ;
              });
              SharedPrefModel.getInstance().saveFontSize(fontSize) ;
            },
          ) ,
          RadioListTile(
            title: Text("font size 50"),
            value: 50.0 ,
            groupValue: fontSize,
            onChanged: (newValue){
              setState(() {
                fontSize = newValue ;
              });
              SharedPrefModel.getInstance().saveFontSize(fontSize) ;
            },
          ) ,

          RadioListTile(
            title: Text("font size 70"),
            value: 70.0 ,
            groupValue: fontSize,
            onChanged: (newValue){
              setState(() {
                fontSize = newValue ;
              });
              SharedPrefModel.getInstance().saveFontSize(fontSize) ;
            },
          ) ,
        ],
      ),
    );
  }
}