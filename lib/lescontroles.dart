import 'package:flutter/material.dart';


class control1math extends StatefulWidget {
  @override
  _control1mathState createState() => _control1mathState();
}

class _control1mathState extends State<control1math> {
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
              
  ]
    ),
    ),
    );
  }
}
