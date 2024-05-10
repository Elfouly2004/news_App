import 'package:flutter/material.dart';
import 'package:news/allnews.dart';


class page3 extends StatefulWidget{
  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  @override
  Widget build( BuildContext context){
   return Scaffold(
     body: Column(
       children: [

         SizedBox(height: 90,),
         Center(child: Column(children: [
           Image(image:AssetImage("assets/images/Frame.png"),
             height: 300,
             width: 300,),
         ],)),

         Text("Congratulations!",style: TextStyle(fontSize: 32,
             fontWeight:FontWeight.w700,
             color: Color(0xff4E4B66) ),),

         SizedBox(height: 5,),

         Text("Your account is ready to use",style: TextStyle(fontSize: 16,
             fontWeight:FontWeight.w400,
             color: Color(0xff4E4B66) ),),

             SizedBox(height: 150,),
         
         InkWell(
           onTap:(){
             Navigator.push(
                 context,
                 MaterialPageRoute(builder:(context) {
                   return page4();
                 },
                 )
             );
           },

           child: Center(
             child: Container(
               height:50 ,
               width:380 ,
               decoration: BoxDecoration(color: Color(0xffff3A44),
                   borderRadius:BorderRadius.circular(10)
               ),
               
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                 Text("Go to Homepage",style:  TextStyle(color: Color(0xffffffff),
                     fontSize: 16,
                     fontWeight: FontWeight.w600),
                     textAlign: TextAlign.center,)
               ]),
               
               
             ),
           ),
         )


       ],
     ),

   );
  }
}