import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class thirdannecollege extends StatefulWidget {
  @override
  _thirdannecollegeState createState() => _thirdannecollegeState();
}

class _thirdannecollegeState extends State<thirdannecollege> {
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

          ],
        ),

      ),

    );
  }
}
