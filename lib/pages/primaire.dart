
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_alfadl2/pages/primaire2classe.dart';
import 'package:flutter_alfadl2/pages/primaire3classe.dart';
import 'package:flutter_alfadl2/primairelesson/primaire1classe.dart';
class primairelist extends StatefulWidget {
  @override
  _primairelistState createState() => _primairelistState();
}

class _primairelistState extends State<primairelist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 0,
        title: Text("choisisiez votre classe",
          ),
        centerTitle: true ,
      ),

      body: Stack(
        children: <Widget>[
          SizedBox(height: 10),
          SingleChildScrollView(
            child: Column(

                    mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                    Expanded(
                      child: Row(
                            children: <Widget>[
                              GestureDetector(
                                onTap:  (){
                                  Navigator.push(context, new MaterialPageRoute(
                                    builder: (context) => pri1c(),
                                  ));
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 30,left: 20,right: 20),
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    color: Colors.lightGreenAccent,
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Image.asset("assets/images/alfadl.png",
                                        width:50 ,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text("1 PRIMAIRE "),
                                          SizedBox(height: 10,),
                                          Image.asset("assets/images/kids.png",
                                            width:70 ,),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),

                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, new MaterialPageRoute(
                                    builder: (context) => pri2c(),
                                  ));
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 30,left: 20,right: 20),
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    color: Colors.pinkAccent,
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Image.asset("assets/images/alfadl.png",
                                        width:50 ,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text("2 PRIMAIRE "),
                                          SizedBox(height: 10,),
                                          Image.asset("assets/images/kids.png",
                                            width:70 ,),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              ],
                              ),
                    ),
                     SizedBox(height: 10,),
                     Expanded(
                       child: Row(
                         children: <Widget>[

                           GestureDetector(
                             onTap: (){
                               Navigator.push(context, new MaterialPageRoute(
                                 builder: (context) => pri3c(),
                               ));
                             },
                             child: Container(

                               margin: EdgeInsets.only(top: 20,left: 20,right: 20),
                               height: 150,
                               width: 150,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(24),
                                 color: Colors.cyan,
                               ),
                               child: Row(
                                 children: <Widget>[
                                   Image.asset("assets/images/alfadl.png",
                                     width:50 ,),
                                   Column(
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: <Widget>[
                                          Text("3 PRIMAIRE "),
                                            SizedBox(height: 10,),
                                        Image.asset("assets/images/kids.png",
                                       width:70 ,),
                                   ],
                                   )
                                 ],
                               ),
                             ),
                           ),
                           Container(
                             margin: EdgeInsets.only(top: 20,left: 20,right: 20),
                             height: 150,
                             width: 150,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(24),
                               color: Colors.orangeAccent,
                             ),
                             child: Row(
                               children: <Widget>[
                                 Image.asset("assets/images/alfadl.png",
                                   width:50 ,),
                                 Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: <Widget>[
                                     Text("4 PRIMAIRE "),
                                     SizedBox(height: 10,),
                                     Image.asset("assets/images/kids.png",
                                       width:70 ,),
                                   ],
                                 )
                               ],
                             ),
                           ),
                         ],
                       ),
                     ),
                     SizedBox(height: 10,),
                     Row(
                       children: <Widget>[
                         Container(
                           margin: EdgeInsets.only(top: 20,left: 20,right: 20),
                           height: 150,
                           width: 150,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(24),
                             color: Colors.red,
                           ),
                           child: Row(
                             children: <Widget>[
                               Image.asset("assets/images/alfadl.png",
                                 width:50 ,),
                               Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: <Widget>[
                                   Text("5 PRIMAIRE "),
                                   SizedBox(height: 10,),
                                   Image.asset("assets/images/kids.png",
                                     width:70 ,),
                                 ],
                               )
                             ],
                           ),
                         ),
                         Container(
                           margin: EdgeInsets.only(top: 20,left: 20,right: 20),
                           height: 150,
                           width: 150,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(24),
                             color: Colors.purpleAccent,
                           ),
                           child: Row(
                             children: <Widget>[
                               Image.asset("assets/images/alfadl.png",
                                 width:50 ,),
                               Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: <Widget>[
                                   Text("6 PRIMAIRE "),
                                   SizedBox(height: 10,),
                                   Image.asset("assets/images/kids.png",
                                     width:70 ,),
                                 ],
                               ),
                             ],
                           ),
                         ),
                       ],
                     ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.purple,
          items: <Widget>[
            Icon(Icons.location_on,),
            Icon(Icons.home),
            Icon(Icons.camera_alt),
          ]
      ),
    );
  }
}



