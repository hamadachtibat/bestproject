import 'package:flutter/material.dart';
import 'package:flutter_alfadl2/services/auth.dart';
import 'package:provider/provider.dart';
class Annonce extends StatefulWidget {
  @override
  _AnnonceState createState() => _AnnonceState();
}

class _AnnonceState extends State<Annonce> {
  bool isteacher=false;
  @override
  Widget build(BuildContext context) {
    currentuser _currentuser = Provider.of<currentuser>(context ,listen:false );
    if (_currentuser.getcurrentuser.isteacher=='true') {
      setState(() {
        isteacher=true;
      });

    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Les Annonces ',
        style: TextStyle(
          fontSize: 23,
        ),),
        centerTitle: true,
      ),
      body:
      SafeArea(
        child:
        SingleChildScrollView(
          child: Column(
            children: [

              Visibility(
                visible: isteacher,
                  child: FloatingActionButton(
                    backgroundColor: Colors.white,
                      focusColor: Colors.purple,
                      onPressed: null)),
            ],
          ),
        ),
      ),
    );
  }
}
