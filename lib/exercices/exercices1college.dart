import 'package:flutter/material.dart';
class exo1college extends StatefulWidget {
  @override
  _exo1collegeState createState() => _exo1collegeState();
}

class _exo1collegeState extends State<exo1college> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[600],
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
                  Container(
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
           ],
        ),
      ),
    );
  }
}
