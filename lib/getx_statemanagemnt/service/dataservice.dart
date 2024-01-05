import 'dart:convert';

import 'package:statemanagement_using_provider/getx_statemanagemnt/model/datamodel.dart';
import 'package:http/http.dart' as http;

class DataService{
// // get url
var url ="https://fakestoreapi.com/products/1";

//create get function
Future<DataModel?>getService()async{
  var response = await http.get(Uri.parse(url));
  //check condition
  if(response.statusCode ==200){
   var data= await json.decode(response.body);
   return DataModel.fromJson(data);
  }else{
   return null;
  }
}
}