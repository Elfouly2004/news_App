import 'package:news/done.dart';

import 'main.dart';
import 'package:flutter/material.dart';

class page2 extends StatefulWidget{
  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  bool check = false;
  bool scure = true;
 GlobalKey<FormState> formkey1= GlobalKey<FormState>();
  GlobalKey<FormState> formkey2= GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
     body: SingleChildScrollView(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
           children: [

         SizedBox(height:50,),

         Text("Hello",
             style: TextStyle(
                 color: Colors.black,
                 fontSize:48,
                 fontWeight: FontWeight.w700)
         ),


         SizedBox(height: 10,),


         Text("Again!",style: TextStyle(color:Color(0xffFF3A44),fontSize:60,fontWeight: FontWeight.w900)),
         SizedBox(height: 5,),

         Container(
             child: Text("Welcome back you’vebeen missed",style: TextStyle(fontSize: 20,),),
              width: 250,
         ),

         SizedBox(height: 30,),

             Padding(
               padding: const EdgeInsets.all(18.0),

               child: Form(
                 key: formkey1,
                 child: TextFormField(

                     style: TextStyle(
                         fontSize: 23
                     ),
                     keyboardType: TextInputType.emailAddress,
                     decoration: InputDecoration(
                       labelText: "User name*",
                       hintText: "Enter Your Username",
                       border: OutlineInputBorder(),

                     ),


                     validator: (value) {
                       if(value!.isEmpty==true||value==null){
                         return"You Should write your User name";}
                       else{return null;}
                     }


                 ),
               ),
             ),


             Padding(
               padding: const EdgeInsets.all(18.0),
               child: Form(
                key: formkey2,
                 child: TextFormField(
                     obscureText: scure,

                   style: TextStyle(
                       fontSize: 23
                   ),
                   keyboardType: TextInputType.number,
                   decoration: InputDecoration(
                     labelText: "Password*",
                     hintText: "Enter Your password",
                     border: OutlineInputBorder(),
                     prefixIcon: Icon(Icons.password),

                     suffixIcon: IconButton(
                       onPressed: (){
                         setState(() {
                           scure = !scure;
                         });
                       },
                       icon: Icon(Icons.remove_red_eye_rounded),
                     ),

                   ),

                   validator: (value) {
                       if(value!.isEmpty==true||value==null){
                         return"You Should write your password";}
                       else{return null;}
                     }

                 ),
               ),
             ),


             Row(
               children: [
               Checkbox(
               checkColor: Colors.white,
                   activeColor: Colors.red,
                   value: check,
                   onChanged: (v){
                     check = v!;
                     setState( () {}  );
                  },
               ),

                 Padding(
                   padding: const EdgeInsets.only(left: 0),
                   child: Text("Remember me",style: TextStyle(fontSize:20,
                       fontWeight: FontWeight.w600),),
                 ),




                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text("Forgot the password?",style: TextStyle(fontSize: 15,
                       fontWeight: FontWeight.bold,
                       color:Colors.blueAccent),),
                 )
             ],
             ),


             SizedBox(height: 30,),



             InkWell(
               onTap:(){
                 if(formkey1.currentState!.validate() ==true&&formkey2.currentState!.validate()==true) {
                   Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) {
                         return page3();
                       },
                       )
                   );
                }
                 },



               child: Center(
                 child: Container(
                     height:50,
                 width: 350,


                   child: Text("Login",style: TextStyle( color: Colors.white,
                       fontSize: 40),
                     textAlign: TextAlign.center,),
                   decoration: const BoxDecoration(
                     color:Colors.red,
                     borderRadius: BorderRadius.all(Radius.circular(10))
                   ),
                 ),
               ),
             ),

             SizedBox(height: 15),

             
             
             Center(child: Text("or continue with", style: TextStyle(fontSize:14,
                 fontWeight: FontWeight.w400 ),)),
             
             
             
             
             SizedBox(height: 10,),
             
             
             
             Row(
             mainAxisAlignment: MainAxisAlignment.center,
               children: [

               InkWell(
                 child: Container(
                   height:48 ,
                   width: 174,


                   decoration:  BoxDecoration(
                       color: Color(0xffEEF1F4),
                       borderRadius: BorderRadius.all(Radius.circular(10))
                   ),


                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Row(children: [

                          Image(image:AssetImage("assets/images/Icon.png"),
                              height: 45,
                              ),

                        //  SizedBox(width: 20,),

                          Text("Facebook",style: TextStyle(fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff667080)),),



                        ]),



                  ]),
                 ),
               ),
                  SizedBox(width: 10,),





                  InkWell(

                   child: Container(

                     height:48 ,
                     width: 174,

                     decoration:  BoxDecoration(
                         color: Color(0xffEEF1F4),
                         borderRadius: BorderRadius.all(Radius.circular(10))
                     ),

                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [

                         Row(children: [

                           Image(image:AssetImage("assets/images/Icon (1).png"),
                             height: 45,
                           ),

                           //  SizedBox(width: 20,),

                           Text("Google",style: TextStyle(fontSize: 16,
                               fontWeight: FontWeight.w600,
                               color: Color(0xff667080)),),



                         ]
                         ),


                       ],
                     ),

                   ),
                 ),




             ],
             ),
                SizedBox(height: 15,),


                Center(
                  child: Row(
                   children: [
                     SizedBox(width:80),
                    Text("don’t have an account ?", style: TextStyle(fontSize:14, fontWeight: FontWeight.w400 ),),
                   Text(" Sign Up", style: TextStyle(fontSize:14, fontWeight: FontWeight.w400 ,color: Color(0xff1877f2)),)
                   ],
               ),
                ),





           ]
       ),
     ),
    );
  }}
