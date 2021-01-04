import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefModel {
  static SharedPrefModel _sharedPrefModel ;
  SharedPreferences _sharedPreferences ;

  static SharedPrefModel getInstance(){
    if(_sharedPrefModel == null){
      return _sharedPrefModel = new SharedPrefModel() ;
    }
    return _sharedPrefModel ;
  }

  saveFontSize(double font) async{
    _sharedPreferences = await SharedPreferences.getInstance();
    _sharedPreferences.setDouble("fontSize", font) ;
  }

  Future<double> getFontSize() async{
    _sharedPreferences = await SharedPreferences.getInstance();
    return _sharedPreferences.getDouble("fontSize") ;
  }
}