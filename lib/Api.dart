
import 'package:flutter/material.dart.';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Api extends ChangeNotifier{

  Map Data={};
  Map sportdata = {};
  Map sciencedata = {};
  Map businessdata = {};
  bool loadingsport = true;
  bool loadingscience = true;
  bool loadingbusiness = true;


  getsport (String url) async {
    loadingsport=true;

    http.Response response = await http.get(Uri.parse(url));

    if(response.statusCode == 200){
     sportdata  =  json.decode(response.body);
    }
    loadingsport = false;
    notifyListeners();

  }



getscience (String url) async {
  loadingscience=true;
  http.Response response = await http.get(Uri.parse(url));
  if(response.statusCode == 200){
    sciencedata =  json.decode(response.body);
  }
  loadingscience = false;
  notifyListeners();
}


  getbusiness (String url) async {
    loadingbusiness=true;
    http.Response response = await http.get(Uri.parse(url));
    if(response.statusCode == 200){
      businessdata =  json.decode(response.body);
    }
    loadingbusiness = false;
    notifyListeners();
  }






}