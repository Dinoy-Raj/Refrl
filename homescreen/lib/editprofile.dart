


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homescreen/main.dart';



class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {


  final shopnamecontroler = TextEditingController();
  final shopcatogorycontroler = TextEditingController();
  final locationcontroler = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.redAccent,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),

      body:Container(
        padding: EdgeInsets.only(left: 16 , top: 25 , right: 16),
        child: GestureDetector(
          onTap:() {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            //padding: EdgeInsets.only(top: 10),
            children: [
              Center(
                child: Text("Edit Profile",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.redAccent,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            width: 4,
                          ),
                          boxShadow:[
                            BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(.1),
                              offset: Offset(0,10),
                            ),
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/pro.jpg"),
                          )
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child:Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.redAccent,
                          border: Border.all(
                            width: 4,
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                        ),

                        child: IconButton(
                          onPressed: (){},
                          icon: Icon(
                            Icons.edit_rounded,
                          ),
                          color: Colors.white,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: 70,
              ),


              Padding(
                padding: EdgeInsets.only(bottom: 40),
                child: TextField(
                  controller: shopnamecontroler,
                  cursorColor: Colors.redAccent,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 3.0),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: "Shop Name",
                      suffixIcon: Icon(
                        Icons.shopping_cart_outlined,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      hintText: "Calisto",
                      hintStyle: TextStyle(
                        fontSize: 16,
                        //fontWeight: FontWeight.bold,
                        color:Colors.black.withOpacity(.3),
                      )
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(bottom: 40),
                child: TextField(
                  controller: shopcatogorycontroler,
                  cursorColor: Colors.redAccent,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 3.0),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: "Shop Category",
                      suffixIcon: Icon(
                        Icons.list_alt_sharp,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      hintText: "Hotel",
                      hintStyle: TextStyle(
                        fontSize: 16,
                        //fontWeight: FontWeight.bold,
                        color:Colors.black.withOpacity(.3),
                      )
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(bottom: 40),
                child: TextField(
                  controller: locationcontroler,
                  cursorColor: Colors.redAccent,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 3.0),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: "Location",
                      suffixIcon: Icon(
                        Icons.location_on_rounded,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      hintText: "Kollam",
                      hintStyle: TextStyle(
                        fontSize: 16,
                        //fontWeight: FontWeight.bold,
                        color:Colors.black.withOpacity(.3),
                      )
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),

              Center(
                child: Row(
                  children: [
                    OutlineButton(
                      padding:EdgeInsets.symmetric(horizontal: 45),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      onPressed: (){
                        showDialog(
                            context: context,
                          builder: (_) =>AlertDialog(

                            content: Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Text("Are You Sure ? Exit Without Saving !",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            elevation: 24,
                            actions: [
                              FlatButton(
                                  onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder:(context)=>MyHomePage()),
                                    );
                                  },
                                  child: Text("Yes",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.redAccent,
                                    ),
                                  )
                              ),

                              FlatButton(
                                  onPressed: (){
                                     Navigator.pop(context);
                                  },
                                  child: Text("No",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.redAccent,
                                    ),
                                  )
                              )
                            ],
                          )

                        );
                      },
                      child: Text("CANCEL",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                          color:Colors.black,
                        ),
                      ),
                    ),
                    Container(width: 40,),
                    RaisedButton(
                      color: Colors.redAccent,
                      padding:EdgeInsets.symmetric(horizontal: 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      onPressed: (){
                        showDialog(
                          context: context,
                          builder: (context) {
                            Future.delayed(Duration(seconds: 1),(){
                             /* Navigator.push(context,
                              MaterialPageRoute(builder:(context){
                               return MyHomePage();
                              }),
                              );*/

                              Navigator.pop(context);
                              Navigator.pop(context);
                            });
                           return CupertinoAlertDialog(
                              title: Text("Saving...",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  letterSpacing: 2,
                                  color: Colors.redAccent,
                                ),
                              ),

                            );
                          }


                        );
                      },
                      child: Text("SAVE",
                        //tooltip:"Save The Data You Entered",
                        style: TextStyle(
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.bold,
                          color:Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}






