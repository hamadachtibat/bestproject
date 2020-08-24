import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_alfadl2/pages/6emeSEco.dart';
import 'package:flutter_alfadl2/pages/6emeSX.dart';
import 'package:flutter_alfadl2/pages/bacphysique.dart';
import 'package:flutter_alfadl2/pages/tronc.dart';

import 'bacsvt.dart';

class lyceelist extends StatefulWidget {
  @override
  _lyceelistState createState() => _lyceelistState();
}

class _lyceelistState extends State<lyceelist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        elevation: 0,
          backgroundColor: Colors.purple,
          title: Text("choisisiez votre classe",
            style: TextStyle(
                fontSize: 20
            ),)
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(height: 15,),
                GestureDetector(
                  onTap:  (){
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (context) => tronc(),
                    ));
                  },
                  child: Container(
                    margin: EdgeInsets.all(8),
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        gradient: LinearGradient(
                          colors: [Colors.white,Colors.amber],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.amber,
                            blurRadius: 12,
                            offset: Offset(0,6),
                          )
                        ]
                    ),
                    child: Row(
                      children: <Widget>[
                        Image.asset("assets/images/alfadl.png",
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("T . C ",
                              style: TextStyle(
                                fontSize: 23,
                              ),),
                            SizedBox(height: 10,),
                            Image.asset("assets/images/diplome.png",

                              width:80,),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                GestureDetector(
                  onTap:  (){
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (context) => prsx(),
                    ));
                  },
                  child: Container(
                    margin: EdgeInsets.all(8),
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        gradient: LinearGradient(
                          colors: [Colors.white,Colors.amber],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.amber,
                            blurRadius: 12,
                            offset: Offset(0,6),
                          )
                        ]
                    ),
                    child: Row(
                      children: <Widget>[
                        Image.asset("assets/images/alfadl.png",
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("1.A.B.S.E",
                              style: TextStyle(
                                fontSize: 21,
                              ),),
                            SizedBox(height: 10,),
                            Image.asset("assets/images/diplome.png",

                              width:80,),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                GestureDetector(
                  onTap:  (){
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (context) => pseco(),
                    ));
                  },
                  child: Container(
                    margin: EdgeInsets.all(8),
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        gradient: LinearGradient(
                          colors: [Colors.white,Colors.amber],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.amber,
                            blurRadius: 12,
                            offset: Offset(0,6),
                          )
                        ]
                    ),
                    child: Row(
                      children: <Widget>[
                        Image.asset("assets/images/alfadl.png",
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("1.A.B.S.ECO",
                              style: TextStyle(
                                fontSize: 21,
                              ),),
                            SizedBox(height: 10,),
                            Image.asset("assets/images/diplome.png",

                              width:80,),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                GestureDetector(
                  onTap:  (){
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (context) => bacphy(),
                    ));
                  },
                  child: Container(
                    margin: EdgeInsets.all(8),
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        gradient: LinearGradient(
                          colors: [Colors.white,Colors.amber],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.amber,
                            blurRadius: 12,
                            offset: Offset(0,6),
                          )
                        ]
                    ),
                    child: Row(
                      children: <Widget>[
                        Image.asset("assets/images/alfadl.png",
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("2.A.B.S.PH",
                              style: TextStyle(
                                fontSize: 21,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Image.asset("assets/images/diplome.png",
                              width:80,),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                GestureDetector(
                  onTap:  (){
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (context) => bacsvt(),
                    ));
                  },
                  child: Container(
                    margin: EdgeInsets.all(8),
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        gradient: LinearGradient(
                          colors: [Colors.white,Colors.amber],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.amber,
                            blurRadius: 12,
                            offset: Offset(0,6),
                          )
                        ]
                    ),
                    child: Row(
                      children: <Widget>[
                        Image.asset("assets/images/alfadl.png",
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("2.A.B.S.V.T          ",
                              style: TextStyle(
                                fontSize: 23,
                              ),),
                            SizedBox(height: 10,),
                            Image.asset("assets/images/diplome.png",

                              width:80,),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,)
              ],
            )
          ],
        ),
      ),

    );
  }
}