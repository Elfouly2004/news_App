
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:news/Api.dart';
import 'package:news/search.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class page4 extends StatefulWidget{
  @override
  State<page4> createState() => _page4State();
}


class _page4State extends State<page4> {

 // late Map data={};

 late Map scienceData ;

 late Map businessData ;

 late  Map sportData ;




  @override


  void initState(){

    Provider.of<Api>(context,listen: false).getsport("https://newsapi.org/v2/top-headlines?country=eg&category=sport&apiKey=bcab4ccbe2314cb48eef06d945ee8a31");
    Provider.of<Api>(context,listen: false).getscience("https://newsapi.org/v2/top-headlines?country=eg&category=science&apiKey=bcab4ccbe2314cb48eef06d945ee8a31");
    Provider.of<Api>(context,listen: false).getbusiness("https://newsapi.org/v2/top-headlines?country=eg&category=business&apiKey=bcab4ccbe2314cb48eef06d945ee8a31");

  }



  bool click =true;
  bool click1 =true;
  bool click2=true;
  bool click3 =true;

  @override

  Widget build(BuildContext context){
    sportData=Provider.of<Api>(context).sportdata;
    scienceData=Provider.of<Api>(context).sciencedata;
    businessData=Provider.of<Api>(context).businessdata;


    return DefaultTabController(
      length: 4,

      child: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(

              child: TextFormField(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context) {
                    return  Search ();
                  }));
                },
                style: TextStyle(fontSize: 12,
                    fontWeight:  FontWeight.w600,
                    color: Color(0xff818181)),
                decoration: InputDecoration(
                  focusColor: Colors.red,
                  hintText: "Search....",
                  labelText: "Dogecoin to the Moon...",
                  border: OutlineInputBorder(borderRadius:BorderRadius.circular(25) ),
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ),


          actions: [

            Padding(
              padding: const EdgeInsets.all(10),
              child: FloatingActionButton(
                  onPressed: (){
                    ();
                    setState(() {});

                  },
                  backgroundColor: Color(0xffFF3A44),

                  child:Stack(
                    children: [
                      Icon(Icons.notifications_none,size: 27),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(color: Colors.amber,borderRadius:BorderRadius.circular(25)),
                      )
                    ],
                    alignment: Alignment.topRight,
                  )
              ),
            ),

          ],


          bottom: TabBar(
            unselectedLabelColor: Colors.black,
            unselectedLabelStyle: TextStyle(fontSize: 14),
            indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Colors.redAccent
            ),         tabs: [
            Tab(
              child: Container(
                width: 150,
                height: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    border: Border.all(color: Colors.black54)
                ),
                child: Text("All"),
              ),
            ),


            Tab(
              child: Container(
                width: 150,
                height: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    border: Border.all(color: Colors.black54)
                ),
                child: Text("Science"),
              ),
            ),


            Tab(
              child: Container(
                width: 150,
                height: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    border: Border.all(color: Colors.black54)
                ),
                child: Text("Business"),
              ),
            ),


            Tab(
              child: Container(
                width: 150,
                height: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    border: Border.all(color: Colors.black54)
                ),
                child: Text("Sports"),
              ),
            ),


          ],
          ),
        ),

        body: TabBarView(
            children: [


              (Provider.of<Api>(context).loadingscience == true)?
              Center(
                  child: CircularProgressIndicator()
              ) :
              ListView.builder(
                itemBuilder: (context,index) {
                  return Stack(
                    children: [


                      Container(
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(10),
                        child: Image(image: AssetImage("assets/images/landscape.jpg")),
                      ),


                      Container(
                        padding:EdgeInsets.only(left: 30),
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50))
                        ),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(15),

                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text(
                              "${scienceData["articles"][index]["title"]}",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Poppins",
                                  color: Colors.white
                              ),
                              maxLines: 2,
                            ),
                            SizedBox(height: 90,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: Text(
                                    "${scienceData["articles"][index]["author"]}",
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Poppins",
                                        color: Colors.white
                                    ),
                                  ),
                                ),

                                // SizedBox(width: 50,),
                                Expanded(
                                  child: Text(
                                    scienceData["articles"][index]["publishedAt"].toString().replaceRange(scienceData["articles"][index]["publishedAt"].length-4, scienceData["articles"][index]["publishedAt"].length, ""),
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Poppins",
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                    ],
                  );
                },
                itemCount: scienceData["articles"].length,
              ),

              (Provider.of<Api>(context).loadingscience == true)?
              Center(
                  child: CircularProgressIndicator()
              ) :
              ListView.builder(
                itemBuilder: (context,index) {
                  return Stack(
                    children: [


                      Container(

                        height: 180,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50)
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,

                        child: Image(
                          image: NetworkImage(
                              scienceData["articles"][index]["urlToImage"]==null?
                              "https://media.istockphoto.com/id/1194173085/vector/news-11.jpg?s=612x612&w=0&k=20&c=KMYRAgrCfDnr3x0oP1j5czEaXDCTVrx60bIpxxwy9yc="
                                  :scienceData["articles"][index]["urlToImage"]
                          ),
                          fit: BoxFit.fill ,
                        ),
                      ),

                      SizedBox(height: 70,),


                      Container(
                        height: 180,
                        margin: EdgeInsets.all(10),

                        child: Column(
                          children: [
                            Text(
                              "${scienceData["articles"][index]["title"]}",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Poppins",
                                  color: Colors.white
                              ),
                              maxLines: 2,
                            ),


                            SizedBox(height: 70,),

                            Row(

                              children: [
                                Expanded(
                                  child: Text(
                                    "${scienceData["articles"][index]["author"]}",
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Poppins",
                                        color: Colors.white
                                    ),
                                  ),
                                ),

                                SizedBox(width: 50,),

                                Expanded(
                                  child: Text(
                                    scienceData["articles"][index]["publishedAt"].toString().replaceRange(scienceData["articles"][index]["publishedAt"].length-4, scienceData["articles"][index]["publishedAt"].length, ""),
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Poppins",
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                    ],
                  );
                },
                itemCount:scienceData["articles"].length,
              ),


              (Provider.of<Api>(context).loadingbusiness == true)?
              Center(child: CircularProgressIndicator()) :
              ListView.builder(
                itemBuilder: (context,index) {
                  return Stack(
                    children: [


                      Container(

                        height: 180,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50)
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,

                        child: Image(
                          image: NetworkImage(
                              businessData["articles"][index]["urlToImage"]==null?
                              "https://media.istockphoto.com/id/1194173085/vector/news-11.jpg?s=612x612&w=0&k=20&c=KMYRAgrCfDnr3x0oP1j5czEaXDCTVrx60bIpxxwy9yc="
                                  :businessData["articles"][index]["urlToImage"]
                          ),
                          fit: BoxFit.fill ,
                        ),
                      ),

                      SizedBox(height: 70,),


                      Container(
                        height: 180,
                        margin: EdgeInsets.all(10),

                        child: Column(
                          children: [
                            Text(
                              "${businessData["articles"][index]["title"]}",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Poppins",
                                  color: Colors.white
                              ),
                              maxLines: 2,
                            ),


                            SizedBox(height: 70,),

                            Row(

                              children: [
                                Expanded(
                                  child: Text(
                                    "${businessData["articles"][index]["author"]}",
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Poppins",
                                        color: Colors.white
                                    ),
                                  ),
                                ),

                                SizedBox(width: 50,),

                                Expanded(
                                  child: Text(
                                    businessData["articles"][index]["publishedAt"].toString().replaceRange(businessData["articles"][index]["publishedAt"].length-4, businessData["articles"][index]["publishedAt"].length, ""),
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Poppins",
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                    ],
                  );
                },
                itemCount:businessData["articles"].length,
              ),


              (Provider.of<Api>(context).loadingsport == true)?
              Center(child: CircularProgressIndicator())
                  :
              ListView.builder(
                itemBuilder: (context,index) {
                  return Stack(
                    children: [


                      Container(

                        height: 180,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50)
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,

                        child: Image(
                          image: NetworkImage(
                              sportData["articles"][index]["urlToImage"]==null?
                              "https://media.istockphoto.com/id/1194173085/vector/news-11.jpg?s=612x612&w=0&k=20&c=KMYRAgrCfDnr3x0oP1j5czEaXDCTVrx60bIpxxwy9yc="
                                  :sportData["articles"][index]["urlToImage"]
                          ),
                          fit: BoxFit.fill ,
                        ),
                      ),

                      SizedBox(height: 70,),


                      Container(
                        height: 180,
                        margin: EdgeInsets.all(10),

                        child: Column(
                          children: [
                            Text(
                              "${sportData["articles"][index]["title"]}",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Poppins",
                                  color: Colors.white
                              ),
                              maxLines: 2,
                            ),


                            SizedBox(height: 70,),

                            Row(

                              children: [
                                Expanded(
                                  child: Text(
                                    "${sportData["articles"][index]["author"]}",
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Poppins",
                                        color: Colors.white
                                    ),
                                  ),
                                ),

                                SizedBox(width: 50,),

                                Expanded(
                                  child: Text(
                                    sportData["articles"][index]["publishedAt"].toString().replaceRange(sportData["articles"][index]["publishedAt"].length-4, sportData["articles"][index]["publishedAt"].length, ""),                                   style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Poppins",
                                      color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                    ],
                  );
                },
                itemCount:sportData["articles"].length,
              ),


            ]
        ),




      ),

    );
  }
}