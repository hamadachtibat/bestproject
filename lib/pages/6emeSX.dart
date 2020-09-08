import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_alfadl2/exercices/exo6sx.dart';
import 'package:flutter_alfadl2/lessonupload/uploadlesson6x.dart';
import 'package:flutter_alfadl2/primairelesson/lessonviewer.dart';
import 'package:flutter_alfadl2/services/auth.dart';
import 'package:provider/provider.dart';

class prsx extends StatefulWidget {
  @override
  _prsxState createState() => _prsxState();
}

class _prsxState extends State<prsx> {
  Future getlesson5cma()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("lessons5cma").getDocuments();
    return qn.documents;
  }
  Future getlesson5cphy()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("lessons5cphy").getDocuments();
    return qn.documents;
  }

  Future getlesson5csvt()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("lessons5csvt").getDocuments();
    return qn.documents;
  }
  Future getlesson5cfr()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("lessons5cfr").getDocuments();
    return qn.documents;
  }
  Future getlesson5carab()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("lessons5carab").getDocuments();
    return qn.documents;
  }
  Future getlesson5cei()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("lessons5cei").getDocuments();
    return qn.documents;
  }
  Future getlesson5chg()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("lessons5chg").getDocuments();
    return qn.documents;
  }
  Future getlesson5ceng()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("lessons5ceng").getDocuments();
    return qn.documents;
  }
  Future getlesson5cphilo()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("lessons5cphilo").getDocuments();
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
      length: 9,
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
              color: Colors.amber,
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
              Text("Philosophie",
                style: TextStyle(
                    fontSize: 25
                ),),
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
                            builder: (context) => exo11pmath(),
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
                            future: getlesson5cma(),
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
                            builder: (context) => lesson5cm(),
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
                            builder: (context) => exo11pac(),
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
                            future: getlesson5cphy(),
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
                            builder: (context) => lesson5cphy(),
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
                            builder: (context) => exo11par(),
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
                            future: getlesson5csvt(),
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
                            builder: (context) => lesson5csvt(),
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
                            builder: (context) => exo11pei(),
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
                            future: getlesson5cfr(),
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
                            builder: (context) => lesson5cfr(),
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
                            builder: (context) => exo11pea(),
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
                            future: getlesson5carab(),
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
                            builder: (context) => lesson5carb(),
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
                            builder: (context) => exo11pfr(),
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
                            future: getlesson5cei(),
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
                            builder: (context) => lesson5cei(),
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
                            builder: (context) => exo11phg(),
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
                            future: getlesson5chg(),
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
                            builder: (context) => lesson5chg(),
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
                            builder: (context) => exo11pen(),
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
                            future: getlesson5ceng(),
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
                            builder: (context) => lesson5ceng(),
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
                            builder: (context) => exo11philo(),
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
                            future: getlesson5cphilo(),
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
                            builder: (context) => lesson5cphilo(),
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