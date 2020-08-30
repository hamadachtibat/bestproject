import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_alfadl2/main.dart';
import 'package:flutter_alfadl2/pages/college.dart';
import 'package:flutter_alfadl2/pages/lycee.dart';
import 'package:flutter_alfadl2/pages/primaire.dart';
import 'package:flutter_alfadl2/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:animations/animations.dart';

import 'alfadlphotos.dart';
import 'contactus.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.purple ,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 0,
        title: Text("choissisez votre niveau"

        ),
        centerTitle: true,
      ),
      body:
      SingleChildScrollView(

        child: Column(
          children: <Widget>[
            SizedBox(height:30),
             Center(
              child: Stack(
                  children: <Widget>[
                 OpenContainer(

                   openBuilder: (context,_){
                     return primairelist();
                   },
                   closedBuilder: (context, VoidCallback openContainer){
                     return GestureDetector(
                       onTap:  openContainer,
                       child: Container(
                         margin: EdgeInsets.all(8),
                         height: 100,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(24),
                             gradient: LinearGradient(
                               colors: [Colors.white,Colors.red],
                               begin: Alignment.topLeft,
                               end: Alignment.bottomRight,
                             ),
                             boxShadow: [
                               BoxShadow(
                                 color: Colors.redAccent,
                                 blurRadius: 12,
                                 offset: Offset(0,6),
                               )
                             ]
                         ),
                         child: Row(
                           children: <Widget>[
                             Image.asset("assets/images/alfadl.png"),
                             SizedBox(width: 30,),
                             Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: <Widget>[
                                 Text("LES ANNONCES ",
                                   style: TextStyle(
                                       color: Colors.black,
                                       fontFamily: "Nunito",
                                       fontSize: 20
                                   ),
                                 ),
                                 SizedBox(height:16),
                                 Row(
                                   children: <Widget>[
                                     Icon(Icons.location_on,color: Colors.white,size: 20,),
                                     Text(" ALFADL II ",
                                       style: TextStyle(
                                         color: Colors.black,
                                       ),
                                     ),
                                   ],
                                 )
                               ],
                             ),
                           ],
                         ),
                       ),
                     );
                   },
                   closedColor: Colors.purple,
                   transitionType: ContainerTransitionType.fadeThrough,
                   transitionDuration: Duration(milliseconds: 1000),
                 ),
            ],
            ),
            ),
            SizedBox(height:10 ),
            OpenContainer(
              openBuilder: (context,_){
                return primairelist();

              },
              closedBuilder: (context,VoidCallback opencontainer){
                return GestureDetector(
                  onTap:  opencontainer ,
                  child: Container(
                    margin: EdgeInsets.all(8),
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        gradient: LinearGradient(
                          colors: [Colors.white,Colors.lightGreenAccent],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.teal ,
                            blurRadius: 12,
                            offset: Offset(0,6),
                          )
                        ]
                    ),
                    child: Row(
                      children: <Widget>[
                        Image.asset("assets/images/alfadl.png"),
                        SizedBox(width: 30,),
                        Column(
                          mainAxisAlignment:MainAxisAlignment.center ,
                          children: <Widget>[
                            Text("PRAIMAIRE",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Nunito",
                                  fontSize: 20
                              ),
                            ),
                            SizedBox(height:16),
                            Row(
                              children: <Widget>[
                                Icon(Icons.location_on,color: Colors.white,size: 20,),
                                Text(" ALFADL  ",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
              transitionType: ContainerTransitionType.fadeThrough,
              transitionDuration: Duration(milliseconds: 1000),
            ),
            SizedBox(height:10 ),
            OpenContainer(
              openBuilder: (context,_){
                return collegelist();
              },
              closedBuilder: (context, VoidCallback opencontainer){
                return GestureDetector(
                  onTap:  opencontainer,
                  child: Container(
                    margin: EdgeInsets.all(8),
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        gradient: LinearGradient(
                          colors: [Colors.white,Colors.tealAccent],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.teal,
                            blurRadius: 12,
                            offset: Offset(0,6),
                          )
                        ]
                    ),
                    child: Row(
                      children: <Widget>[
                        Image.asset("assets/images/alfadl.png"),
                        SizedBox(width: 30,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("COLLEGE ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Nunito",
                                  fontSize: 20
                              ),
                            ),
                            SizedBox(height:16),
                            Row(
                              children: <Widget>[
                                Icon(Icons.location_on,color: Colors.white,size: 20,),
                                Text("ALFADL III ",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),

                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
              closedColor: Colors.purple,
              transitionType: ContainerTransitionType.fadeThrough,
              transitionDuration: Duration(milliseconds: 1000),
            ),
            SizedBox(height: 10,),
            OpenContainer(
              openBuilder: (context,_){
                return lyceelist();
              },
              closedBuilder: (context,VoidCallback opencontainer){
                return GestureDetector(
                  onTap:  opencontainer,
                  child: Container(
                    margin: EdgeInsets.all(8),
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        gradient: LinearGradient(
                          colors: [Colors.white,Colors.amberAccent],
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
                        Image.asset("assets/images/alfadl.png"),
                        SizedBox(width: 30,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("LYCEE",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Nunito",
                                  fontSize: 20
                              ),
                            ),
                            SizedBox(height:16),
                            Row(
                              children: <Widget>[
                                Icon(Icons.location_on,color: Colors.white,size: 20,),
                                Text(" ALFADL II ",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
              closedColor: Colors.purple,
              transitionType: ContainerTransitionType.fadeThrough,
              transitionDuration: Duration(milliseconds: 1000),
            ),
  ],
    ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.purple,
          items: <Widget>[
            IconButton(
              icon: Icon(
                  Icons.home),
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => homepage(),
                ));
              },
            ),
          IconButton(
              icon: Icon(Icons.camera_alt),
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => fadlphoto(),
                ));
              },
            ),
            IconButton(
            icon: Icon(Icons.alternate_email),
            onPressed: (){
              Navigator.push(context, new MaterialPageRoute(
                builder: (context) => ContactPage(),
              ));
            },
          ),
           IconButton(
             icon: Icon( Icons.close),
             onPressed: () async {
               currentuser _currentuser=Provider.of<currentuser>(context,listen: false);
               if(await _currentuser.signout()== true){
                 Navigator.push(context, new MaterialPageRoute(
                     builder: (context) => ourroot(),
                 ));
               }
             },
           ),
        ]
      ),
    );
  }
}




