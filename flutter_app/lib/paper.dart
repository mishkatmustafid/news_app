import 'package:http/http.dart';
import 'dart:convert';

class Paper{
  String url;
  String logo;
  String title;
  Map data;

  Paper({this.url, this.logo, this.title});

  Future<void> showTitle() async{
    try{
      Response instance = await get('$url');
      var encode = jsonEncode(instance.body);
      data = jsonDecode(encode);
      print(data);
      //print(instance);
    }
    catch(e){
      print('Caught error : $e');
    }
  }

}