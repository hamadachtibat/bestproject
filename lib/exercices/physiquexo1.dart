import 'package:flutter/material.dart';

import 'execicespdf1college.dart';

class exophy1c extends StatefulWidget {
  @override
  _exophy1cState createState() => _exophy1cState();
}

class _exophy1cState extends State<exophy1c> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[600],
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                  colors: [Colors.white,Colors.tealAccent],
                ),
              ),
              child: Center(
                child: Text(" <<La vie, c'est comme une bicyclette, il faut avancer pour ne pas perdre l'équilibre.>> Albert.Einstein",
                  style: TextStyle(
                      fontSize: 25
                  ),),
              ),
            ),
            SizedBox(height: 20,),
            Text("Exercices",
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
                  builder: (context) => fexoc1(),
                ));
              },

              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 7),
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  gradient: LinearGradient(
                    colors: [Colors.white,Colors.tealAccent],
                  ),
                ),
                child: Center(
                  child: Text("1- Enchaînements d'opérations",
                    style: TextStyle(
                        fontSize: 23
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap:  (){
                Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => fexoc2(),
                ));
              },

              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 7),
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  gradient: LinearGradient(
                    colors: [Colors.white,Colors.tealAccent],
                  ),
                ),
                child: Center(
                  child: Text("2-Écritures fractionnaires",
                    style: TextStyle(
                        fontSize: 23
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap:  (){
                Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => fexoc3(),
                ));
              },

              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 7),
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  gradient: LinearGradient(
                    colors: [Colors.white,Colors.tealAccent],
                  ),
                ),
                child: Center(
                  child: Text("3-Les angles",
                    style: TextStyle(
                        fontSize: 23
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap:  (){
                Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => fexoc4(),
                ));
              },

              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 7),
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  gradient: LinearGradient(
                    colors: [Colors.white,Colors.tealAccent],
                  ),
                ),
                child: Center(
                  child: Text("4-Le triangle ",
                    style: TextStyle(
                        fontSize: 23
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap:  (){
                Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => fexoc5(),
                ));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 7),
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  gradient: LinearGradient(
                    colors: [Colors.white,Colors.tealAccent],
                  ),
                ),
                child: Center(
                  child: Text("5-Médiatrice d’un segment et inégalité triangulaire",
                    style: TextStyle(
                        fontSize: 23
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap:  (){
                Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => fexoc6(),
                ));
              },

              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 7),
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  gradient: LinearGradient(
                    colors: [Colors.white,Colors.tealAccent],
                  ),
                ),
                child: Center(
                  child: Text("6-Droites remarquables d’un triangle",
                    style: TextStyle(
                        fontSize: 23
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
