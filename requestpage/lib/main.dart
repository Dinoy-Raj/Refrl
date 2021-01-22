import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final List<String> names = <String>['Dinoy Raj K', 'Amal Nath', 'Ajith Kumar Pm','Emil Joji','Jijo Johnson','Lekshmi priya','Sangeeth k','Amina'];
  final List<int> referl = <int>[600, 500, 100,20,29,47,58,37,37];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body:ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: names.length,

          itemBuilder:(BuildContext context,int index){
            final item = names[index];
            return Dismissible(

                 key: Key(item),

              onDismissed: (Direction){

                   setState(() {
                     names.removeAt(index);
                   });
                   Scaffold.of(context)
                       .showSnackBar(SnackBar(content: Text("$item dismissed")));



            },

      //background: Container(color: Colors.red,),

              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 80,
                  width: 200,

                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      gradient: LinearGradient(
                        colors: [
                          Colors.white,
                          Colors.white70,
                          Colors.white,
                          //Colors.red
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,

                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow:[ BoxShadow(
                        color: Colors.black.withOpacity(.1),
                        spreadRadius: 1,
                        blurRadius: 15,
                        offset: Offset(0,5),
                      )
                      ]
                  ),

                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:14),
                        child: Container(
                          height: 30,
                          width: 30,

                          decoration: BoxDecoration(

                            shape:BoxShape.circle,
                            border: Border.all(
                              //color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/pro.jpg"),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 14,),
                      Container(
                        height: 60,
                        width: 260,

                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,

                          border: Border.all(
                            color: Colors.redAccent.withOpacity(.8),
                          ),
                          borderRadius: BorderRadius.circular(20),

                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 10,),
                            
                            Container(
                              width: 130,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:EdgeInsets.only(left:10),
                                    child: Text("${names[index]}",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.redAccent,
                                          fontSize: 15,
                                          letterSpacing: 1
                                      ),
                                    ),
                                  ),

                                  /* Padding(
                                    padding:EdgeInsets.only(top: 0,bottom: 10),
                                    child: Text("Number Of Referl:${referl[index]} ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 13,
                                          letterSpacing: 0
                                      ),
                                    ),
                                  ),*/
                                ],
                              ),
                            ),
                            
                            SizedBox(width: 10,),
                            
                            IconButton(
                             onPressed:(){
                               setState(() {
                                 names.removeAt(index);
                                 Scaffold.of(context)
                                     .showSnackBar(SnackBar(
                                   backgroundColor: Colors.redAccent,

                                     content: Text("$item Added To Influ",
                                 style: TextStyle(
                                   fontWeight: FontWeight.bold,
                                   color: Colors.white,
                                 ),
                                     )
                                 )
                                 );
                               });
                             },
                              icon:Icon(
                                Icons.done_all_outlined
                              ),
                              //highlightColor: Colors.redAccent,
                              color: Colors.green.withOpacity(.8),

                                ),
                            SizedBox(width: 0,),
                            IconButton(
                                icon:Icon(Icons.cancel_outlined) ,
                                color: Colors.black.withOpacity(.7),
                                onPressed:(){
                                  showDialog(
                                      context: context,
                                      builder: (_) =>AlertDialog(

                                        content: Padding(
                                          padding: const EdgeInsets.only(left:8.0),
                                          child: Text("Are You Sure ? Decline Request Of ${names[index]}!",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        elevation: 24,
                                        actions: [
                                          FlatButton(
                                              onPressed: (){
                                                setState(() {
                                                  names.removeAt(index);
                                                  Navigator.pop(context);
                                                  Scaffold.of(context)
                                                      .showSnackBar(SnackBar(content: Text("Request Of $item dismissed",
                                                    style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.redAccent,
                                                  ),)));

                                                });
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
                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}


