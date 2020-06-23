import 'package:http/http.dart';
import 'dart:convert';

class Paper{
  String url;
  String logo;
  String title;
  Map<String, dynamic> data;
  String body;

  Paper({this.url, this.logo, this.title});

  Future<void> showTitle() async{
    try{
      Response response = await get(url);
      //data = json.decode(response.body);
      body = response.body;
      print('${body.length} habijabi \n');
      print(body);
      //print(data);
    }
    catch(e){
      print('Caught error : $e');
    }
  }

}