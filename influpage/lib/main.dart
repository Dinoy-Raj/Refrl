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

  final List<String> names = <String>['Dinoy', 'Amal', 'Ajith','emil','jijo','lp','sangi','ami'];
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
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 90,
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
                      color: Colors.black26,
                      spreadRadius: 1,
                      blurRadius: 15,
                      offset: Offset(0,5),
                    )
                    ]
                ),

                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:20),
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
                            image: AssetImage("assets/pro2.png"),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      height: 80,
                      width: 250,

                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,


                          borderRadius: BorderRadius.circular(20),

                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding:EdgeInsets.only(top: 15,bottom: 10),
                            child: Text("${names[index]}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  fontSize: 17,
                                  letterSpacing: 1
                              ),
                            ),
                          ),

                          Padding(
                            padding:EdgeInsets.only(top: 0,bottom: 10),
                            child: Text("Number Of Referl:${referl[index]} ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 14,
                                  letterSpacing: 1
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}


