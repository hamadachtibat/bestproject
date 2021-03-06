import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_alfadl2/pages/1annecollege.dart';
import 'package:flutter_alfadl2/pages/2emeannecollege.dart';
import 'package:flutter_alfadl2/pages/3annecollege.dart';

class collegelist extends StatefulWidget {
  @override
  _collegelistState createState() => _collegelistState();
}

class _collegelistState extends State<collegelist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.purple,
        title: Text("choisisiez votre classe",
          style: TextStyle(
            fontSize: 23
        ),),
          centerTitle: true,
      ),
          body: Stack(
        children: <Widget>[
            SingleChildScrollView(

              child: Column(
              children: <Widget>[
                SizedBox(height: 15,),
                OpenContainer(
                  openBuilder: (context,_){
                    return firstannecollege();
                  },
                  closedBuilder: (context,VoidCallback openContainer){
                    return GestureDetector(
                      onTap:  openContainer,
                      child: Container(
                        margin: EdgeInsets.all(8),
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            gradient: LinearGradient(
                              colors: [Colors.white,Colors.tealAccent],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.tealAccent,
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
                                Text("1.A.C.",
                                  style: TextStyle(
                                    fontSize: 23,
                                  ),),
                                SizedBox(height: 10,),
                                Image.asset("assets/images/college-icon-png-6.jpg",

                                  width:60,),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  transitionType: ContainerTransitionType.fadeThrough,
                  transitionDuration: Duration(milliseconds: 1000),
                  closedColor: Colors.purple,
                ),
                SizedBox(height: 20,),
                OpenContainer(
                  openBuilder: (context,_){
                    return secondannecollege();
                  },
                  closedBuilder: (context,VoidCallback openContainer){
                    return GestureDetector(
                      onTap:  openContainer,
                      child: Container(
                        margin: EdgeInsets.all(8),
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            gradient: LinearGradient(
                              colors: [Colors.white,Colors.tealAccent],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.tealAccent,
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
                                Text("2.A.C.",
                                  style: TextStyle(
                                    fontSize: 23,
                                  ),),
                                SizedBox(height: 10,),
                                Image.asset("assets/images/college-icon-png-6.jpg",

                                  width:60,),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  transitionType: ContainerTransitionType.fadeThrough,
                  transitionDuration: Duration(milliseconds: 1000),
                  closedColor: Colors.purple,
                ),
                SizedBox(height: 20,),
                OpenContainer(
                  openBuilder: (context,_){
                    return thirdannecollege();
                  },
                  transitionType: ContainerTransitionType.fadeThrough,
                  transitionDuration: Duration(milliseconds: 1000),
                  closedColor: Colors.purple,
                  closedBuilder: (context,VoidCallback openContainer){
                    return GestureDetector(
                      onTap:  openContainer,

                      child: Container(
                        margin: EdgeInsets.all(8),
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            gradient: LinearGradient(
                              colors: [Colors.white,Colors.tealAccent],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.tealAccent,
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
                                Text("3.A.C",
                                  style: TextStyle(
                                    fontSize: 23,
                                  ),),
                                SizedBox(height: 10,),
                                Image.asset("assets/images/college-icon-png-6.jpg",

                                  width:60,),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
          ),
            )
        ],
      ),

    );
  }
}
