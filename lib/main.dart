

import 'package:flutter/material.dart';
import 'package:news/Api.dart';
import 'package:news/a7a.dart';
import 'package:news/done.dart';
import 'package:news/search.dart';
import 'package:news/welcome.dart';
import 'package:news/login.dart';
import 'package:news/allnews.dart';
import 'package:provider/provider.dart';

main(){
  runApp(
      ChangeNotifierProvider(
        create: (context){
          return Api();
        },
        child: MyApp(),
      )
  );
}

class MyApp extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: WelcomeScreen(),
   //  home:page2()
      //home: page2(),
    );
  }
}