import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_alfadl2/controles/controlphy1.dart';
import 'package:flutter_alfadl2/exercices/exercices1college.dart';
import 'package:flutter_alfadl2/exercices/physiquexo1.dart';
import 'package:flutter_alfadl2/lessons1college/lessonphy1c.dart';
import 'package:flutter_alfadl2/lessons1college/lessons1ercollege.dart';

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
                            colors: [Colors.teal,Colors.tealAccent],
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
                          GestureDetector(
                            onTap:  (){
                              Navigator.push(context, new MaterialPageRoute(
                                builder: (context) => control1math(),
                              ));
                            },
                            child: Container(

                                  margin: EdgeInsets.only(left:20,top: 10),
                                      height: 200,
                                    width: 170,
                                  decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              gradient: LinearGradient(
                                colors: [Colors.teal,Colors.tealAccent],
                              ),
                        ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text("Les controles",
                                    style: TextStyle(
                                        fontSize: 25
                                    ),),
                                  Image.asset("assets/images/exam.png",
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
                      color: Colors.tealAccent,
                    ),
                    child: Text(" Les leçons ",
                      style: TextStyle(
                          fontSize: 40
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  GestureDetector(
                    onTap:  (){
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => flc1(),
                      ));
                    },
                    child: GestureDetector(

                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.tealAccent,
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child:
                          Text("1--Enchaînements d'opérations",
                            style: TextStyle(
                                fontSize: 25
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap:  (){
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => flc2(),
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.tealAccent,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child:
                        Text("2-Nombres en écriture fractionnaire",
                          style: TextStyle(
                              fontSize: 25
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap:  (){
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => flc3(),
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.tealAccent,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("3--Les angles",
                          style: TextStyle(
                              fontSize: 25
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap:  (){
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => flc4(),
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.tealAccent,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child:
                        Text("4-- Le triangle",
                          style: TextStyle(
                              fontSize: 25
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap:  (){
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => flc5(),
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.tealAccent,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child:
                        Text("5-Médiatrice d’un segment et inégalité triangulaire",
                          style: TextStyle(
                              fontSize: 25
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap:  (){
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => flc6(),
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.tealAccent,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child:
                        Text("6-Droites remarquables d’un triangle",
                          style: TextStyle(
                              fontSize: 25
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap:  (){
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => flc7(),
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.tealAccent,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child:
                        Text("7-Les nombres relatifs",
                          style: TextStyle(
                              fontSize: 25
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap:  (){
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => flc8(),
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.tealAccent,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child:
                        Text("8-Les puissances",
                          style: TextStyle(
                              fontSize: 25
                          ),
                        ),
                      ),
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
                            builder: (context) => exophy1c(),
                          ));
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 20,right:5,top: 10 ),
                          height: 200,
                          width: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            gradient: LinearGradient(
                              colors: [Colors.teal,Colors.tealAccent],
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
                      GestureDetector(
                        onTap:  (){
                          Navigator.push(context, new MaterialPageRoute(
                            builder: (context) => controlphy1(),
                          ));
                        },
                        child: Container(

                          margin: EdgeInsets.only(left:20,top: 10),
                          height: 200,
                          width: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            gradient: LinearGradient(
                              colors: [Colors.teal,Colors.tealAccent],
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("Les controles",
                                style: TextStyle(
                                    fontSize: 25
                                ),),
                              Image.asset("assets/images/exam.png",
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
                      color: Colors.tealAccent,
                    ),
                    child: Text(" Les leçons ",
                      style: TextStyle(
                          fontSize: 40
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  GestureDetector(
                    onTap:  (){
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => flphyc1(),
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 7),
                      padding: EdgeInsets.symmetric(horizontal: 7),
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.tealAccent,
                      ),
                      child: Center(
                        child: Text("1-L'eau dans notre environnement",
                          style: TextStyle(
                              fontSize: 25
                          ),
                        ),
                      ),
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
                      Container(
                        margin: EdgeInsets.only(left: 20,right:5,top: 10 ),
                        height: 200,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                            colors: [Colors.teal,Colors.tealAccent],
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
                      Container(

                        margin: EdgeInsets.only(left:20,top: 10),
                        height: 200,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                            colors: [Colors.teal,Colors.tealAccent],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("Les controles",
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
                      color: Colors.tealAccent,
                    ),
                    child: Text(" Les leçons ",
                      style: TextStyle(
                          fontSize: 40
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  GestureDetector(
                    onTap:  (){
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => flc1(),
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.tealAccent,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child:
                        Text("1--Enchaînements d'opérations",
                          style: TextStyle(
                              fontSize: 25
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.tealAccent,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child:
                      Text("1--Enchaînements d'opérations",
                        style: TextStyle(
                            fontSize: 25
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.tealAccent,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child:
                      Text("1--Enchaînements d'opérations",
                        style: TextStyle(
                            fontSize: 25
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.tealAccent,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child:
                      Text("1--Enchaînements d'opérations",
                        style: TextStyle(
                            fontSize: 25
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.tealAccent,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child:
                      Text("1--Enchaînements d'opérations",
                        style: TextStyle(
                            fontSize: 25
                        ),
                      ),
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
                      Container(
                        margin: EdgeInsets.only(left: 20,right:5,top: 10 ),
                        height: 200,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                            colors: [Colors.teal,Colors.tealAccent],
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
                      Container(

                        margin: EdgeInsets.only(left:20,top: 10),
                        height: 200,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                            colors: [Colors.teal,Colors.tealAccent],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("Les controles",
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
                      color: Colors.tealAccent,
                    ),
                    child: Text(" Les leçons ",
                      style: TextStyle(
                          fontSize: 40
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  GestureDetector(
                    onTap:  (){
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => flc1(),
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.tealAccent,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child:
                        Text("1--Enchaînements d'opérations",
                          style: TextStyle(
                              fontSize: 25
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.tealAccent,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child:
                      Text("1--Enchaînements d'opérations",
                        style: TextStyle(
                            fontSize: 25
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.tealAccent,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child:
                      Text("1--Enchaînements d'opérations",
                        style: TextStyle(
                            fontSize: 25
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.tealAccent,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child:
                      Text("1--Enchaînements d'opérations",
                        style: TextStyle(
                            fontSize: 25
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.tealAccent,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child:
                      Text("1--Enchaînements d'opérations",
                        style: TextStyle(
                            fontSize: 25
                        ),
                      ),
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
                      Container(
                        margin: EdgeInsets.only(left: 20,right:5,top: 10 ),
                        height: 200,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                            colors: [Colors.teal,Colors.tealAccent],
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
                      Container(

                        margin: EdgeInsets.only(left:20,top: 10),
                        height: 200,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                            colors: [Colors.teal,Colors.tealAccent],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("Les controles",
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
                      color: Colors.tealAccent,
                    ),
                    child: Text(" Les leçons ",
                      style: TextStyle(
                          fontSize: 40
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  GestureDetector(
                    onTap:  (){
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => flc1(),
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.tealAccent,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child:
                        Text("1--Enchaînements d'opérations",
                          style: TextStyle(
                              fontSize: 25
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.tealAccent,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child:
                      Text("1--Enchaînements d'opérations",
                        style: TextStyle(
                            fontSize: 25
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.tealAccent,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child:
                      Text("1--Enchaînements d'opérations",
                        style: TextStyle(
                            fontSize: 25
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.tealAccent,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child:
                      Text("1--Enchaînements d'opérations",
                        style: TextStyle(
                            fontSize: 25
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.tealAccent,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child:
                      Text("1--Enchaînements d'opérations",
                        style: TextStyle(
                            fontSize: 25
                        ),
                      ),
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
                      Container(
                        margin: EdgeInsets.only(left: 20,right:5,top: 10 ),
                        height: 200,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                            colors: [Colors.teal,Colors.tealAccent],
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
                      Container(

                        margin: EdgeInsets.only(left:20,top: 10),
                        height: 200,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                            colors: [Colors.teal,Colors.tealAccent],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("Les controles",
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
                      color: Colors.tealAccent,
                    ),
                    child: Text(" Les leçons ",
                      style: TextStyle(
                          fontSize: 40
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  GestureDetector(
                    onTap:  (){
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => flc1(),
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.tealAccent,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child:
                        Text("1--Enchaînements d'opérations",
                          style: TextStyle(
                              fontSize: 25
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.tealAccent,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child:
                      Text("1--Enchaînements d'opérations",
                        style: TextStyle(
                            fontSize: 25
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.tealAccent,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child:
                      Text("1--Enchaînements d'opérations",
                        style: TextStyle(
                            fontSize: 25
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.tealAccent,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child:
                      Text("1--Enchaînements d'opérations",
                        style: TextStyle(
                            fontSize: 25
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.tealAccent,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child:
                      Text("1--Enchaînements d'opérations",
                        style: TextStyle(
                            fontSize: 25
                        ),
                      ),
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
                      Container(
                        margin: EdgeInsets.only(left: 20,right:5,top: 10 ),
                        height: 200,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                            colors: [Colors.teal,Colors.tealAccent],
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
                      Container(

                        margin: EdgeInsets.only(left:20,top: 10),
                        height: 200,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                            colors: [Colors.teal,Colors.tealAccent],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("Les controles",
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
                      color: Colors.tealAccent,
                    ),
                    child: Text(" Les leçons ",
                      style: TextStyle(
                          fontSize: 40
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  GestureDetector(
                    onTap:  (){
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => flc1(),
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.tealAccent,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child:
                        Text("1--Enchaînements d'opérations",
                          style: TextStyle(
                              fontSize: 25
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.tealAccent,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child:
                      Text("1--Enchaînements d'opérations",
                        style: TextStyle(
                            fontSize: 25
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.tealAccent,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child:
                      Text("1--Enchaînements d'opérations",
                        style: TextStyle(
                            fontSize: 25
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.tealAccent,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child:
                      Text("1--Enchaînements d'opérations",
                        style: TextStyle(
                            fontSize: 25
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.tealAccent,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child:
                      Text("1--Enchaînements d'opérations",
                        style: TextStyle(
                            fontSize: 25
                        ),
                      ),
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
                      Container(
                        margin: EdgeInsets.only(left: 20,right:5,top: 10 ),
                        height: 200,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                            colors: [Colors.teal,Colors.tealAccent],
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
                      Container(

                        margin: EdgeInsets.only(left:20,top: 10),
                        height: 200,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                            colors: [Colors.teal,Colors.tealAccent],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("Les controles",
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
                      color: Colors.tealAccent,
                    ),
                    child: Text(" Les leçons ",
                      style: TextStyle(
                          fontSize: 40
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  GestureDetector(
                    onTap:  (){
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => flc1(),
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.tealAccent,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child:
                        Text("1--Enchaînements d'opérations",
                          style: TextStyle(
                              fontSize: 25
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.tealAccent,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child:
                      Text("1--Enchaînements d'opérations",
                        style: TextStyle(
                            fontSize: 25
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.tealAccent,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child:
                      Text("1--Enchaînements d'opérations",
                        style: TextStyle(
                            fontSize: 25
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.tealAccent,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child:
                      Text("1--Enchaînements d'opérations",
                        style: TextStyle(
                            fontSize: 25
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.tealAccent,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child:
                      Text("1--Enchaînements d'opérations",
                        style: TextStyle(
                            fontSize: 25
                        ),
                      ),
                    ),
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
      ),

    );
  }
}
