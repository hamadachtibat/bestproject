import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_alfadl2/controles/controlphy1.dart';
import 'package:flutter_alfadl2/exercices/exercices1college.dart';
import 'package:flutter_alfadl2/exercices/physiquexo1.dart';


import '../lescontroles.dart';

class firstannecollege extends StatefulWidget {
  @override
  _firstannecollegeState createState() => _firstannecollegeState();
}

class _firstannecollegeState extends State<firstannecollege> {
  @override
  Widget build(BuildContext context) {
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
              Text("Français",
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
      ),

    );
  }
}
