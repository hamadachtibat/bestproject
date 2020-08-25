
import 'package:flutter_alfadl2/lessonupload/lesson1arabe.dart';
import 'package:flutter_alfadl2/lessonupload/lessonuploada1.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_alfadl2/exercices/exercices1college.dart';
import 'package:flutter_alfadl2/lessonupload/uploadlesson.dart';
import 'package:flutter_alfadl2/services/auth.dart';
import 'package:provider/provider.dart';

import 'lessonviewer.dart';

class pri1c extends StatefulWidget {
  @override
  _pri1cState createState() => _pri1cState();
}

class _pri1cState extends State<pri1c> {
  Future getlesson()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("lessons").getDocuments();
    return qn.documents;
  }
  Future getlesson1fr()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("lessons1fr").getDocuments();
    return qn.documents;
  }

  Future getlesson1a()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("lessons1activite").getDocuments();
    return qn.documents;
  }
  Future getlesson1aarabe()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("lessons1arabe").getDocuments();
    return qn.documents;
  }
  Future getlesson1eduis()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("lessons1eduis").getDocuments();
    return qn.documents;
  }
  Future getlesson1eduar()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("lessons1eduar").getDocuments();
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
        length: 6,
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
                              indicatorColor: Colors.white,
                           tabs: <Widget>[
                           Text("Math",
                          style: TextStyle(
                             fontSize: 25
    ),
    ),
                             Text("Activié scientifique",
                         style: TextStyle(
                         fontSize: 25
                            ),),
                            Text("Arabe",style: TextStyle(
                            fontSize: 25
                             ),),
                               Text("Education islamique",
                                  style: TextStyle(
                               fontSize: 25
                               ),
                                  ),
                             Text("Education Artistique",
                               style: TextStyle(
                                   fontSize: 25
                               ),
                             ),
                             Text("Francais",
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
                                                     builder: (context) => exo1college(),
                                               ));
                                },

                                          child: Container(
                                               margin: EdgeInsets.only(left: 20,right:5,top: 10 ),
                                                 height: 200,
                                               width: 170,
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
                                      future: getlesson(),
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
                               builder: (context) => uploadlesson(),
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
                                           builder: (context) => exo1college(),
                                         ));
                                       },

                                       child: Container(
                                         margin: EdgeInsets.only(left: 20,top: 10 ),
                                         height: 200,
                                         width: 170,
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
                                       width: 170,
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
                                           Text("Videos",
                                             style: TextStyle(
                                                 fontSize: 24
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
                                         future: getlesson1a(),
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
                                           builder: (context) => uploadlesson1a(),
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
                                           builder: (context) => exo1college(),
                                         ));
                                       },

                                       child: Container(
                                         margin: EdgeInsets.only(left: 20,right:5,top: 10 ),
                                         height: 200,
                                         width: 170,
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
                                       width: 170,
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
                                           future: getlesson1aarabe(),
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
                                           builder: (context) => lesson1arabe(),
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
                                           builder: (context) => exo1college(),
                                         ));
                                       },

                                       child: Container(
                                         margin: EdgeInsets.only(left: 20,right:5,top: 10 ),
                                         height: 200,
                                         width: 170,
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
                                       width: 170,
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
                                           future: getlesson1eduis(),
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
                                           builder: (context) => lesson1eduis(),
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
                                           builder: (context) => exo1college(),
                                         ));
                                       },

                                       child: Container(
                                         margin: EdgeInsets.only(left: 20,right:5,top: 10 ),
                                         height: 200,
                                         width: 170,
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
                                       width: 170,
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
                                           future: getlesson1eduar(),
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
                                           builder: (context) => lesson1eduar(),
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
                                           builder: (context) => exo1college(),
                                         ));
                                       },

                                       child: Container(
                                         margin: EdgeInsets.only(left: 20,right:5,top: 10 ),
                                         height: 200,
                                         width: 170,
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
                                       width: 170,
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
                                           future: getlesson1fr(),
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
                                           builder: (context) => lesson1fr(),
                                         ));
                                       }
                                   ),
                                 ),
                               ],
                             ),

                           ),

                        ]
                         ),
        ),
                         );
  }
}


