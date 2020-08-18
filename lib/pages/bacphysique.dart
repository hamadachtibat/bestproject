import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_alfadl2/lessons1college/lessons1ercollege.dart';

class bacphy extends StatefulWidget {
  @override
  _bacphyState createState() => _bacphyState();
}

class _bacphyState extends State<bacphy> {
  @override
  Widget build(BuildContext context) {
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
                      Container(
                        margin: EdgeInsets.only(left: 20,right:5,top: 10 ),
                        height: 200,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                            colors: [Colors.amberAccent,Colors.amber],
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
                      Container(

                        margin: EdgeInsets.only(left:20,top: 10),
                        height: 200,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                            colors: [Colors.amberAccent,Colors.amber],
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
                      color: Colors.amber,
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
                        color: Colors.amber,
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
                      color: Colors.amber,
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
                      color: Colors.amber,
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
                      color: Colors.amber,
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
                      color: Colors.amber,
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
                            colors: [Colors.amberAccent,Colors.amber],
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
                      Container(

                        margin: EdgeInsets.only(left:20,top: 10),
                        height: 200,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                            colors: [Colors.amber,Colors.amberAccent],
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
                      color: Colors.amber,
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
                        color: Colors.amber,
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
                      color: Colors.amber,
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
                      color: Colors.amber,
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
                      color: Colors.amber,
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
                      color: Colors.amber,
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
                            colors: [Colors.amber,Colors.amberAccent],
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
                            colors: [Colors.amberAccent,Colors.amber],
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
                      color: Colors.amber,
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
                        color: Colors.amber,
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
                      color: Colors.amber,
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
                      color: Colors.amber,
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
                      color: Colors.amber,
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
                      color: Colors.amber,
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
                            colors: [Colors.amber,Colors.amberAccent],
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
                            colors: [Colors.amber,Colors.amberAccent],
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
                      color: Colors.amberAccent,
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
                        color: Colors.amberAccent,
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
                      color: Colors.amberAccent,
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
                      color: Colors.amberAccent,
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
                      color: Colors.amberAccent,
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
                      color: Colors.amberAccent,
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
                            colors: [Colors.amber,Colors.amberAccent],
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
                            colors: [Colors.amber,Colors.amberAccent],
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
                      color: Colors.amberAccent,
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
                        color: Colors.amberAccent,
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
                      color: Colors.amberAccent,
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
                      color: Colors.amberAccent,
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
                      color: Colors.amberAccent,
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
                      color: Colors.amberAccent,
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
                            colors: [Colors.amber,Colors.amberAccent],
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
                            colors: [Colors.amber,Colors.amberAccent],
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
                      color: Colors.amberAccent,
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
                        color: Colors.amberAccent,
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
                      color: Colors.amberAccent,
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
                      color: Colors.amberAccent,
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
                      color: Colors.amberAccent,
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
                      color: Colors.amberAccent,
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
                            colors: [Colors.amber,Colors.amberAccent],
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
                            colors: [Colors.amber,Colors.amberAccent],
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
                      color: Colors.amberAccent,
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
                        color: Colors.amberAccent,
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
                      color: Colors.amberAccent,
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
                      color: Colors.amberAccent,
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
                      color: Colors.amberAccent,
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
                      color: Colors.amberAccent,
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
                            colors: [Colors.amber,Colors.amberAccent],
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
                            colors: [Colors.amber,Colors.amberAccent],
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
                      color: Colors.amberAccent,
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
                        color: Colors.amberAccent,
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
                      color: Colors.amberAccent,
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
                      color: Colors.amberAccent,
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
                      color: Colors.amberAccent,
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
                      color: Colors.amberAccent,
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
                            colors: [Colors.amber,Colors.amberAccent],
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
                            Image.asset("assets/images/phylo.png",
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
                            colors: [Colors.amber,Colors.amberAccent],
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
                      color: Colors.amberAccent,
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
                        color: Colors.amberAccent,
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
                      color: Colors.amberAccent,
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
                      color: Colors.amberAccent,
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
                      color: Colors.amberAccent,
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
                      color: Colors.amberAccent,
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