import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:homescreen/editprofile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {


    String ownername ="Dinoy Raj K";
    String owneremail ="dinoykraj@gmail.com";

    String shopname = "CALISTO";
    String location="Kollam";
    String type = "Hotel";

    return Scaffold(

      appBar: AppBar(

        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,

        leading:IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
            ),
            color: Colors.redAccent,
            onPressed:(){}
            ),
      ),

      body: Column(
        children: [
          Center(
            child: Container(
              height: 120,
              width: 120,

              decoration: BoxDecoration(

                shape:BoxShape.circle,
                border: Border.all(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  width: 4,
                ),

                boxShadow:[BoxShadow(
                  color: Colors.black.withOpacity(.1),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0,10),
                ),
                ],
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/pro.jpg"),
                ),
              ),
            ),
          ),

          SizedBox(height: 40,),
         Container(
           height: 400,
           width: 300,

           //color: Colors.white,

           decoration: BoxDecoration(
             shape: BoxShape.rectangle,
             borderRadius: BorderRadius.circular(20),
             color: Colors.white,
             border: Border.all(
               width: 4,
               color: Theme.of(context).scaffoldBackgroundColor,
             ),
             boxShadow: [
               BoxShadow(
                 blurRadius: 10,
                 spreadRadius: 2,
                 color: Colors.black.withOpacity(.1),
                 offset: Offset(0,10),
               )
             ]
           ),
           child: Column(
             children: [

               Padding(
                 padding: const EdgeInsets.only(top: 20),
                 child: Container(
                   height: 140,
                   width: 260,

                   decoration: BoxDecoration(
                     color: Colors.redAccent,
                     shape: BoxShape.rectangle,
                     gradient: LinearGradient(
                             colors: [
                               Colors.redAccent,
                               Colors.red,
                               Colors.redAccent,
                              //Colors.red
                             ],
                       begin: Alignment.topLeft,
                       end: Alignment.bottomRight,

                     ),
                     borderRadius: BorderRadius.circular(20),
                       boxShadow:[ BoxShadow(
                         color: Colors.redAccent,
                         spreadRadius: 1,
                         blurRadius: 15,
                         offset: Offset(0,5),
                       )
                       ]
                   ),

                   child:Column(

                     children: [

                       Row(
                         children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Container(
                                  height: 40,
                                  width: 40,

                                  decoration: BoxDecoration(

                                    shape:BoxShape.circle,
                                    border: Border.all(
                                      color: Theme.of(context).scaffoldBackgroundColor,
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage("assets/shop-icon-7.jpg"),
                                    ),
                                  ),
                                ),
                              ),
                           Padding(
                             padding: const EdgeInsets.all(20.0),
                             child: Text("$shopname",
                             style: TextStyle(
                             fontWeight: FontWeight.bold,
                             color: Colors.white,
                               fontSize: 20,
                               letterSpacing: 2
                             ),
                             ),
                           )
                         ],
                       ),

                       SizedBox(height: 2,),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(left: 20),
                               child: Icon(
                                 Icons.local_activity,
                                 color: Colors.white,
                               ),
                             ),

                             Padding(
                               padding: const EdgeInsets.only(left: 20),
                               child: Text("$type",
                               style: TextStyle(
                                 color: Colors.white,
                                 fontWeight: FontWeight.bold,
                               ),),
                             ),

                             SizedBox(
                               width: 15,
                             ),


                             Padding(
                               padding: const EdgeInsets.only(left: 20),
                               child: Icon(
                                 Icons.location_on_rounded,
                                 color: Colors.white,
                               ),
                             ),

                             Padding(
                               padding: const EdgeInsets.only(left: 20),
                               child: Text("$location",
                                 style: TextStyle(
                                   color: Colors.white,
                                   fontWeight: FontWeight.bold,
                                 ),),
                             ),

                           ],
                         ),
                       ),

                     ],

                   ),

                 ),
               ),

               SizedBox(height: 40,),
               Text("OWNER INFO",
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 18,
                 letterSpacing: 1.5,
               ),
               ),




               SizedBox(height: 20,),
               Padding(
                 padding: EdgeInsets.only(left: 55,top:10),
                 child: Row(
                   children: [
                     Icon(
                       Icons.person_pin,
                       color: Colors.redAccent,
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left:30 ),
                       child: Text("$ownername",
                         style: TextStyle(
                             fontWeight: FontWeight.bold
                         ),
                       ),
                     ),
                   ],
                 ),
               ),

               SizedBox(height: 10,),
               Padding(
                 padding: EdgeInsets.only(left: 55,top: 10),
                 child: Row(
                   children: [
                     Icon(
                         Icons.email_outlined,
                       color: Colors.redAccent,
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left:30 ),
                       child: Text("$owneremail",
                       style: TextStyle(
                         fontWeight: FontWeight.bold
                       ),
                       ),
                     ),
                   ],
                 ),
               ),






             ],
           ),
         ),


          SizedBox(height: 40,),
          RaisedButton(
            padding: EdgeInsets.symmetric(horizontal: 110),
            splashColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              onPressed: (){


                Navigator.push(
                    context,
                    MaterialPageRoute(builder:(context)=>EditProfilePage()),
                );
              },
            child:Text("Edit Profile",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 2
            ),
            ),
            color: Colors.redAccent,
          ),


        ],
      ),
    );
  }
}
