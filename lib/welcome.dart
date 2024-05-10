import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:news/login.dart';
//import 'main.dart';


class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
   return Scaffold(
     body:AnimatedSplashScreen(
       splash: Column(

         mainAxisAlignment: MainAxisAlignment.center,

         children: [

           Image(image:AssetImage("assets/images/Frame.png"),
             height: 300,
             width: 300,),
         ],

       ),
       splashIconSize: double.infinity,
       nextScreen: page2(),
       duration: 2000,
     ),
   );

  }
}