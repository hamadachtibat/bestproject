import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_alfadl2/exercices/exo3c.dart';
import 'package:flutter_alfadl2/lessonupload/uploadlesson3c.dart';
import 'package:flutter_alfadl2/primairelesson/lessonviewer.dart';
import 'package:flutter_alfadl2/services/auth.dart';
import 'package:provider/provider.dart';

class thirdannecollege extends StatefulWidget {
  @override
  _thirdannecollegeState createState() => _thirdannecollegeState();
}

class _thirdannecollegeState extends State<thirdannecollege> {

  Future getlesson3cma()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("lessons3cma").getDocuments();
    return qn.documents;
  }
  Future getlesson3cphy()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("lessons3cphy").getDocuments();
    return qn.documents;
  }

  Future getlesson3csvt()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("lessons3csvt").getDocuments();
    return qn.documents;
  }
  Future getlesson3cfr()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("lessons3cfr").getDocuments();
    return qn.documents;
  }
  Future getlesson3carab()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("lessons3carab").getDocuments();
    return qn.documents;
  }
  Future getlesson3cei()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("lessons3cei").getDocuments();
    return qn.documents;
  }
  Future getlesson3chg()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("lessons3chg").getDocuments();
    return qn.documents;
  }
  Future getlesson3ceng()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("lessons3ceng").getDocuments();
    return qn.documents;
  }
  bool isteacher=false;

  @override
  Widget build(BuildContext context) {
    currentuser _currentuser = Provider.of<currentuser>(context ,listen:false );
    if (_currentuser.getcurrentuser.isteacher=='true') {
      setState(() {
        isteacher=true;
      });

    }
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.purple,
          title: Text("Matiers",
            style: TextStyle(
                fontSize: 25
            ),),
          centerTitle: true,
          bottom: TabBar(
            isScrollable: true,
            indicator: BoxDecoration(
              borderRadius:BorderRadius.circular(50),
              color: Colors.tealAccent,
            ),
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Text("Math",
                style: TextStyle(
                    fontSize: 25
                ),
              ),
              Text("physique",
                style: TextStyle(
                    fontSize: 25
                ),),
              Text("SVT",style: TextStyle(
                  fontSize: 25
              ),),
              Text("Francaise",
                style: TextStyle(
                    fontSize: 25
                ),),
              Text("Arabic",
                style: TextStyle(
                    fontSize: 25
                ),),
              Text("E.islamic",style: TextStyle(
                  fontSize: 25
              ),),
              Text("H.G",style: TextStyle(
                  fontSize: 25
              ),
              ),
              Text("Englais",
                style: TextStyle(
                    fontSize: 25
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20,),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap:  (){
                          Navigator.push(context, new MaterialPageRoute(
                            builder: (context) => exo9pmath(),
                          ));
                        },

                        child: Container(
                          margin: EdgeInsets.only(left: 20,right:5,top: 10 ),
                          height: 200,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            gradient: LinearGradient(
                              colors: [Colors.lightGreen,Colors.green],
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("Exercices",
                                style: TextStyle(
                                    fontSize: 25
                                ),),
                              Image.asset("assets/images/mathema.png",
                                width: 100, ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left:20,top: 10),
                        height: 200,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                            colors: [Colors.lightGreen,Colors.green],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("Les Videos",
                              style: TextStyle(
                                  fontSize: 25
                              ),),
                            Image.asset("assets/images/exam.png",
                              width: 100, ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.green,
                    ),
                    child: Text(" Les leçons ",
                      style: TextStyle(
                          fontSize: 40
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),

                  Container(
                    child: Column(
                      children: <Widget>[
                        FutureBuilder(
                            future: getlesson3cma(),
                            builder: (context,snapshot) {
                              if (snapshot.connectionState == ConnectionState.waiting) {
                                return Center(child: Text('loading'),);
                              } else {
                                return ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: snapshot.data.length,
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: (){
                                          String passdata=snapshot.data[index].data['pdfurl'];
                                          Navigator.push(context, MaterialPageRoute(
                                              builder: (context)=> Viewpdf(),
                                              settings: RouteSettings(
                                                arguments: passdata,
                                              )
                                          ));
                                        },
                                        child: Container(
                                          margin: EdgeInsets.symmetric(horizontal: 7,vertical: 10),
                                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                          height: 100,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(35),
                                            gradient: LinearGradient(
                                              colors: [Colors.lightGreen,Colors.green],
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(snapshot.data[index].data['titre'],
                                              style: TextStyle(
                                                  fontSize: 23
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    });

                              }
                            }),

                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Visibility(
                    visible: isteacher,
                    child: FloatingActionButton(child: Icon(Icons.add,
                      color: Colors.purple,
                      size: 30,),
                        backgroundColor: Colors.white,
                        onPressed: (){
                          Navigator.push(context, new MaterialPageRoute(
                            builder: (context) => lesson3cm(),
                          ));
                        }
                    ),
                  ),
                ],
              ),

            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20,),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap:  (){
                          Navigator.push(context, new MaterialPageRoute(
                            builder: (context) => exo9pac(),
                          ));
                        },

                        child: Container(
                          margin: EdgeInsets.only(left: 20,right:5,top: 10 ),
                          height: 200,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            gradient: LinearGradient(
                              colors: [Colors.lightGreen,Colors.green],
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("Exercices",
                                style: TextStyle(
                                    fontSize: 25
                                ),),
                              Image.asset("assets/images/physics.png",
                                width: 100, ),
                            ],
                          ),
                        ),
                      ),
                      Container(

                        margin: EdgeInsets.only(left:20,top: 10),
                        height: 200,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                            colors: [Colors.lightGreen,Colors.green],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("Les Videos",
                              style: TextStyle(
                                  fontSize: 25
                              ),),
                            Image.asset("assets/images/exam.png",
                              width: 100, ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.green,
                    ),
                    child: Text(" Les leçons ",
                      style: TextStyle(
                          fontSize: 40
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),

                  Container(
                    child: Column(
                      children: <Widget>[
                        FutureBuilder(
                            future: getlesson3cphy(),
                            builder: (context,snapshot) {
                              if (snapshot.connectionState == ConnectionState.waiting) {
                                return Center(child: Text('loading'),);
                              } else {
                                return ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: snapshot.data.length,
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: (){
                                          String passdata=snapshot.data[index].data['pdfurl'];
                                          Navigator.push(context, MaterialPageRoute(
                                              builder: (context)=> Viewpdf(),
                                              settings: RouteSettings(
                                                arguments: passdata,
                                              )
                                          ));
                                        },
                                        child: Container(
                                          margin: EdgeInsets.symmetric(horizontal: 7,vertical: 10),
                                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                          height: 100,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(35),
                                            gradient: LinearGradient(
                                              colors: [Colors.lightGreen,Colors.green],
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(snapshot.data[index].data['titre'],
                                              style: TextStyle(
                                                  fontSize: 23
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    });

                              }
                            }),

                      ],
                    ),
                  ),
                  SizedBox(height: 30,),


                  Visibility(
                    visible: isteacher,
                    child: FloatingActionButton(child: Icon(Icons.add,
                      color: Colors.purple,
                      size: 30,),
                        backgroundColor: Colors.white,
                        onPressed: (){
                          Navigator.push(context, new MaterialPageRoute(
                            builder: (context) => lesson3cphy(),
                          ));
                        }
                    ),
                  ),
                ],
              ),

            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20,),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap:  (){
                          Navigator.push(context, new MaterialPageRoute(
                            builder: (context) => exo9par(),
                          ));
                        },

                        child: Container(
                          margin: EdgeInsets.only(left: 20,right:5,top: 10 ),
                          height: 200,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            gradient: LinearGradient(
                              colors: [Colors.lightGreen,Colors.green],
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("Exercices",
                                style: TextStyle(
                                    fontSize: 25
                                ),),
                              Image.asset("assets/images/rna.png",
                                width: 100, ),
                            ],
                          ),
                        ),
                      ),
                      Container(

                        margin: EdgeInsets.only(left:20,top: 10),
                        height: 200,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                            colors: [Colors.lightGreen,Colors.green],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("Les Videos",
                              style: TextStyle(
                                  fontSize: 25
                              ),),
                            Image.asset("assets/images/exam.png",
                              width: 100, ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.green,
                    ),
                    child: Text(" Les leçons ",
                      style: TextStyle(
                          fontSize: 40
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),

                  Container(
                    child: Column(
                      children: <Widget>[
                        FutureBuilder(
                            future: getlesson3csvt(),
                            builder: (context,snapshot) {
                              if (snapshot.connectionState == ConnectionState.waiting) {
                                return Center(child: Text('loading'),);
                              } else {
                                return ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: snapshot.data.length,
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: (){
                                          String passdata=snapshot.data[index].data['pdfurl'];
                                          Navigator.push(context, MaterialPageRoute(
                                              builder: (context)=> Viewpdf(),
                                              settings: RouteSettings(
                                                arguments: passdata,
                                              )
                                          ));
                                        },
                                        child: Container(
                                          margin: EdgeInsets.symmetric(horizontal: 7,vertical: 10),
                                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                          height: 100,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(35),
                                            gradient: LinearGradient(
                                              colors: [Colors.lightGreen,Colors.green],
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(snapshot.data[index].data['titre'],
                                              style: TextStyle(
                                                  fontSize: 23
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    });

                              }
                            }),

                      ],
                    ),
                  ),
                  SizedBox(height: 30,),


                  Visibility(
                    visible: isteacher,
                    child: FloatingActionButton(child: Icon(Icons.add,
                      color: Colors.purple,
                      size: 30,),
                        backgroundColor: Colors.white,
                        onPressed: (){
                          Navigator.push(context, new MaterialPageRoute(
                            builder: (context) => lesson3csvt(),
                          ));
                        }
                    ),
                  ),
                ],
              ),

            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20,),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap:  (){
                          Navigator.push(context, new MaterialPageRoute(
                            builder: (context) => exo9pei(),
                          ));
                        },

                        child: Container(
                          margin: EdgeInsets.only(left: 20,right:5,top: 10 ),
                          height: 200,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            gradient: LinearGradient(
                              colors: [Colors.lightGreen,Colors.green],
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("Exercices",
                                style: TextStyle(
                                    fontSize: 25
                                ),),
                              Image.asset("assets/images/france.png",
                                width: 100, ),
                            ],
                          ),
                        ),
                      ),
                      Container(

                        margin: EdgeInsets.only(left:20,top: 10),
                        height: 200,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                            colors: [Colors.lightGreen,Colors.green],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("Les Videos",
                              style: TextStyle(
                                  fontSize: 25
                              ),),
                            Image.asset("assets/images/exam.png",
                              width: 100, ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.green,
                    ),
                    child: Text(" Les leçons ",
                      style: TextStyle(
                          fontSize: 40
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),

                  Container(
                    child: Column(
                      children: <Widget>[
                        FutureBuilder(
                            future: getlesson3cfr(),
                            builder: (context,snapshot) {
                              if (snapshot.connectionState == ConnectionState.waiting) {
                                return Center(child: Text('loading.....'),);
                              } else {
                                return ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: snapshot.data.length,
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: (){
                                          String passdata=snapshot.data[index].data['pdfurl'];
                                          Navigator.push(context, MaterialPageRoute(
                                              builder: (context)=> Viewpdf(),
                                              settings: RouteSettings(
                                                arguments: passdata,
                                              )
                                          ));
                                        },
                                        child: Container(
                                          margin: EdgeInsets.symmetric(horizontal: 7,vertical: 10),
                                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                          height: 100,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(35),
                                            gradient: LinearGradient(
                                              colors: [Colors.lightGreen,Colors.green],
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(snapshot.data[index].data['titre'],
                                              style: TextStyle(
                                                  fontSize: 23
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    });

                              }
                            }),

                      ],
                    ),
                  ),
                  SizedBox(height: 30,),


                  Visibility(
                    visible: isteacher,
                    child: FloatingActionButton(child: Icon(Icons.add,
                      color: Colors.purple,
                      size: 30,),
                        backgroundColor: Colors.white,
                        onPressed: (){
                          Navigator.push(context, new MaterialPageRoute(
                            builder: (context) => lesson3cfr(),
                          ));
                        }
                    ),
                  ),
                ],
              ),

            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20,),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap:  (){
                          Navigator.push(context, new MaterialPageRoute(
                            builder: (context) => exo9pea(),
                          ));
                        },

                        child: Container(
                          margin: EdgeInsets.only(left: 20,right:5,top: 10 ),
                          height: 200,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            gradient: LinearGradient(
                              colors: [Colors.lightGreen,Colors.green],
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("Exercices",
                                style: TextStyle(
                                    fontSize: 25
                                ),),
                              Image.asset("assets/images/arabic.png",
                                width: 100, ),
                            ],
                          ),
                        ),
                      ),
                      Container(

                        margin: EdgeInsets.only(left:20,top: 10),
                        height: 200,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                            colors: [Colors.lightGreen,Colors.green],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("Les Videos",
                              style: TextStyle(
                                  fontSize: 25
                              ),),
                            Image.asset("assets/images/exam.png",
                              width: 100, ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.green,
                    ),
                    child: Text(" Les leçons ",
                      style: TextStyle(
                          fontSize: 40
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),

                  Container(
                    child: Column(
                      children: <Widget>[
                        FutureBuilder(
                            future: getlesson3carab(),
                            builder: (context,snapshot) {
                              if (snapshot.connectionState == ConnectionState.waiting) {
                                return Center(child: Text('loading'),);
                              } else {
                                return ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: snapshot.data.length,
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: (){
                                          String passdata=snapshot.data[index].data['pdfurl'];
                                          Navigator.push(context, MaterialPageRoute(
                                              builder: (context)=> Viewpdf(),
                                              settings: RouteSettings(
                                                arguments: passdata,
                                              )
                                          ));
                                        },
                                        child: Container(
                                          margin: EdgeInsets.symmetric(horizontal: 7,vertical: 10),
                                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                          height: 100,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(35),
                                            gradient: LinearGradient(
                                              colors: [Colors.lightGreen,Colors.green],
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(snapshot.data[index].data['titre'],
                                              style: TextStyle(
                                                  fontSize: 23
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    });

                              }
                            }),

                      ],
                    ),
                  ),
                  SizedBox(height: 30,),


                  Visibility(
                    visible: isteacher,
                    child: FloatingActionButton(child: Icon(Icons.add,
                      color: Colors.purple,
                      size: 30,),
                        backgroundColor: Colors.white,
                        onPressed: (){
                          Navigator.push(context, new MaterialPageRoute(
                            builder: (context) => lesson3carb(),
                          ));
                        }
                    ),
                  ),
                ],
              ),

            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20,),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap:  (){
                          Navigator.push(context, new MaterialPageRoute(
                            builder: (context) => exo9pfr(),
                          ));
                        },

                        child: Container(
                          margin: EdgeInsets.only(left: 20,right:5,top: 10 ),
                          height: 200,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            gradient: LinearGradient(
                              colors: [Colors.lightGreen,Colors.green],
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("Exercices",
                                style: TextStyle(
                                    fontSize: 25
                                ),),
                              Image.asset("assets/images/quran.png",
                                width: 100, ),
                            ],
                          ),
                        ),
                      ),
                      Container(

                        margin: EdgeInsets.only(left:20,top: 10),
                        height: 200,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                            colors: [Colors.lightGreen,Colors.green],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("Les Videos",
                              style: TextStyle(
                                  fontSize: 25
                              ),),
                            Image.asset("assets/images/exam.png",
                              width: 100, ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.green,
                    ),
                    child: Text(" Les leçons ",
                      style: TextStyle(
                          fontSize: 40
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),

                  Container(
                    child: Column(
                      children: <Widget>[
                        FutureBuilder(
                            future: getlesson3cei(),
                            builder: (context,snapshot) {
                              if (snapshot.connectionState == ConnectionState.waiting) {
                                return Center(child: Text('loading'),);
                              } else {
                                return ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: snapshot.data.length,
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: (){
                                          String passdata=snapshot.data[index].data['pdfurl'];
                                          Navigator.push(context, MaterialPageRoute(
                                              builder: (context)=> Viewpdf(),
                                              settings: RouteSettings(
                                                arguments: passdata,
                                              )
                                          ));
                                        },
                                        child: Container(
                                          margin: EdgeInsets.symmetric(horizontal: 7,vertical: 10),
                                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                          height: 100,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(35),
                                            gradient: LinearGradient(
                                              colors: [Colors.lightGreen,Colors.green],
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(snapshot.data[index].data['titre'],
                                              style: TextStyle(
                                                  fontSize: 23
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    });

                              }
                            }),

                      ],
                    ),
                  ),
                  SizedBox(height: 30,),


                  Visibility(
                    visible: isteacher,
                    child: FloatingActionButton(child: Icon(Icons.add,
                      color: Colors.purple,
                      size: 30,),
                        backgroundColor: Colors.white,
                        onPressed: (){
                          Navigator.push(context, new MaterialPageRoute(
                            builder: (context) => lesson3cei(),
                          ));
                        }
                    ),
                  ),
                ],
              ),

            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20,),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap:  (){
                          Navigator.push(context, new MaterialPageRoute(
                            builder: (context) => exo9phg(),
                          ));
                        },

                        child: Container(
                          margin: EdgeInsets.only(left: 20,right:5,top: 10 ),
                          height: 200,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            gradient: LinearGradient(
                              colors: [Colors.lightGreen,Colors.green],
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("Exercices",
                                style: TextStyle(
                                    fontSize: 25
                                ),),
                              Image.asset("assets/images/geo.png",
                                width: 100, ),
                            ],
                          ),
                        ),
                      ),
                      Container(

                        margin: EdgeInsets.only(left:20,top: 10),
                        height: 200,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                            colors: [Colors.lightGreen,Colors.green],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("Les Videos",
                              style: TextStyle(
                                  fontSize: 25
                              ),),
                            Image.asset("assets/images/exam.png",
                              width: 100, ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.green,
                    ),
                    child: Text(" Les leçons ",
                      style: TextStyle(
                          fontSize: 40
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),

                  Container(
                    child: Column(
                      children: <Widget>[
                        FutureBuilder(
                            future: getlesson3chg(),
                            builder: (context,snapshot) {
                              if (snapshot.connectionState == ConnectionState.waiting) {
                                return Center(child: Text('loading'),);
                              } else {
                                return ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: snapshot.data.length,
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: (){
                                          String passdata=snapshot.data[index].data['pdfurl'];
                                          Navigator.push(context, MaterialPageRoute(
                                              builder: (context)=> Viewpdf(),
                                              settings: RouteSettings(
                                                arguments: passdata,
                                              )
                                          ));
                                        },
                                        child: Container(
                                          margin: EdgeInsets.symmetric(horizontal: 7,vertical: 10),
                                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                          height: 100,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(35),
                                            gradient: LinearGradient(
                                              colors: [Colors.lightGreen,Colors.green],
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(snapshot.data[index].data['titre'],
                                              style: TextStyle(
                                                  fontSize: 23
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    });

                              }
                            }),

                      ],
                    ),
                  ),
                  SizedBox(height: 30,),


                  Visibility(
                    visible: isteacher,
                    child: FloatingActionButton(child: Icon(Icons.add,
                      color: Colors.purple,
                      size: 30,),
                        backgroundColor: Colors.white,
                        onPressed: (){
                          Navigator.push(context, new MaterialPageRoute(
                            builder: (context) => lesson3chg(),
                          ));
                        }
                    ),
                  ),
                ],
              ),

            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20,),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap:  (){
                          Navigator.push(context, new MaterialPageRoute(
                            builder: (context) => exo9pen(),
                          ));
                        },

                        child: Container(
                          margin: EdgeInsets.only(left: 20,right:5,top: 10 ),
                          height: 200,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            gradient: LinearGradient(
                              colors: [Colors.lightGreen,Colors.green],
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("Exercices",
                                style: TextStyle(
                                    fontSize: 25
                                ),),
                              Image.asset("assets/images/english-book.png",
                                width: 100, ),
                            ],
                          ),
                        ),
                      ),
                      Container(

                        margin: EdgeInsets.only(left:20,top: 10),
                        height: 200,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                            colors: [Colors.lightGreen,Colors.green],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("Les Videos",
                              style: TextStyle(
                                  fontSize: 25
                              ),),
                            Image.asset("assets/images/exam.png",
                              width: 100, ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.green,
                    ),
                    child: Text(" Les leçons ",
                      style: TextStyle(
                          fontSize: 40
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),

                  Container(
                    child: Column(
                      children: <Widget>[
                        FutureBuilder(
                            future: getlesson3ceng(),
                            builder: (context,snapshot) {
                              if (snapshot.connectionState == ConnectionState.waiting) {
                                return Center(child: Text('loading'),);
                              } else {
                                return ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: snapshot.data.length,
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: (){
                                          String passdata=snapshot.data[index].data['pdfurl'];
                                          Navigator.push(context, MaterialPageRoute(
                                              builder: (context)=> Viewpdf(),
                                              settings: RouteSettings(
                                                arguments: passdata,
                                              )
                                          ));
                                        },
                                        child: Container(
                                          margin: EdgeInsets.symmetric(horizontal: 7,vertical: 10),
                                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                          height: 100,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(35),
                                            gradient: LinearGradient(
                                              colors: [Colors.lightGreen,Colors.green],
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(snapshot.data[index].data['titre'],
                                              style: TextStyle(
                                                  fontSize: 23
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    });

                              }
                            }),

                      ],
                    ),
                  ),
                  SizedBox(height: 30,),


                  Visibility(
                    visible: isteacher,
                    child: FloatingActionButton(child: Icon(Icons.add,
                      color: Colors.purple,
                      size: 30,),
                        backgroundColor: Colors.white,
                        onPressed: (){
                          Navigator.push(context, new MaterialPageRoute(
                            builder: (context) => lesson3ceng(),
                          ));
                        }
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
}
