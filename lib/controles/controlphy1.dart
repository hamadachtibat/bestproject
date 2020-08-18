import 'package:flutter/material.dart';

import 'cont1colmath.dart';


class controlphy1 extends StatefulWidget {
  @override
  _controlphy1State createState() => _controlphy1State();
}

class _controlphy1State extends State<controlphy1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[600],
      body: SingleChildScrollView(
        child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                child: Center(
                  child:IconButton(
                    alignment: Alignment.center,
                    icon: Icon(Icons.close,color: Colors.white,size: 40,),
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  gradient: LinearGradient(
                    colors: [Colors.white,Colors.grey],
                  ),
                ),
                child: Center(
                  child: Text(" “Une vie sans examen ne vaut         pas la peine d’être vécue.” ->Socrate",
                    style: TextStyle(
                        fontSize: 25
                    ),),
                ),
              ),
              SizedBox(height: 20,),
              Text("Les controles",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      decoration: TextDecoration.underline
                  )
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap:  (){
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (context) => con1math1(),
                  ));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    gradient: LinearGradient(
                      colors: [Colors.white,Colors.grey],
                    ),
                  ),
                  child: Center(
                    child: Text(" Controle 1 ",
                      style: TextStyle(
                          fontSize: 25
                      ),),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap:  (){
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (context) => con1math2(),
                  ));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    gradient: LinearGradient(
                      colors: [Colors.white,Colors.grey],
                    ),
                  ),
                  child: Center(
                    child: Text(" Controle 2 ",
                      style: TextStyle(
                          fontSize: 25
                      ),),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap:  (){
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (context) => con1math3(),
                  ));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    gradient: LinearGradient(
                      colors: [Colors.white,Colors.grey],
                    ),
                  ),
                  child: Center(
                    child: Text(" Controle 3 ",
                      style: TextStyle(
                          fontSize: 25
                      ),),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap:  (){
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (context) => con1math3(),
                  ));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    gradient: LinearGradient(
                      colors: [Colors.white,Colors.grey],
                    ),
                  ),
                  child: Center(
                    child: Text(" Controle 4 ",
                      style: TextStyle(
                          fontSize: 25
                      ),),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap:  (){
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (context) => con1math3(),
                  ));
                },
                child: GestureDetector(
                  onTap:  (){
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (context) => con1math3(),
                    ));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      gradient: LinearGradient(
                        colors: [Colors.white,Colors.grey],
                      ),
                    ),
                    child: Center(
                      child: Text(" Controle 5 ",
                        style: TextStyle(
                            fontSize: 25
                        ),),
                    ),
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}