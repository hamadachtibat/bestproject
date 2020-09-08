import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_alfadl2/lessonupload/uploadexo6x.dart';
import 'package:flutter_alfadl2/primairelesson/lessonviewer.dart';
import 'package:flutter_alfadl2/services/auth.dart';
import 'package:provider/provider.dart';

class exo11pmath extends StatefulWidget {
  @override
  _exo11pmathState createState() => _exo11pmathState();
}

class _exo11pmathState extends State<exo11pmath> {

  Future getexercice11p()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("exercices11pm").getDocuments();
    return qn.documents;
  }
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
      backgroundColor: Colors.purple,
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
              child: Column(
                children: <Widget>[
                  FutureBuilder(
                      future: getexercice11p(),
                      builder: (context,snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return Center(child: Text('loading'),);
                        } else {
                          return ListView.builder(
                              shrinkWrap: true,
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: (){
                                    String passdata=snapshot.data[index].data['pdfurl'];
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context)=> Viewpdf(),
                                        settings: RouteSettings(
                                          arguments: passdata,
                                        )
                                    ));
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(horizontal: 7,vertical: 10),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35),
                                      gradient: LinearGradient(
                                        colors: [Colors.lightGreen,Colors.green],
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(snapshot.data[index].data['titre'],
                                        style: TextStyle(
                                            fontSize: 23
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              });

                        }
                      }),

                ],
              ),
            ),
            SizedBox(height: 30,),


            Visibility(
              visible: isteacher,
              child: FloatingActionButton(child: Icon(Icons.add,
                color: Colors.purple,
                size: 30,),
                  backgroundColor: Colors.white,
                  onPressed: (){
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (context) => exo11pm(),
                    ));
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class exo11pac extends StatefulWidget {
  @override
  _exo11pacState createState() => _exo11pacState();
}

class _exo11pacState extends State<exo11pac> {

  Future getexercice11pac()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("exercices11pac").getDocuments();
    return qn.documents;
  }
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
      backgroundColor: Colors.purple,
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
              child: Column(
                children: <Widget>[
                  FutureBuilder(
                      future: getexercice11pac(),
                      builder: (context,snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return Center(child: Text('loading'),);
                        } else {
                          return ListView.builder(
                              shrinkWrap: true,
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: (){
                                    String passdata=snapshot.data[index].data['pdfurl'];
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context)=> Viewpdf(),
                                        settings: RouteSettings(
                                          arguments: passdata,
                                        )
                                    ));
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(horizontal: 7,vertical: 10),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35),
                                      gradient: LinearGradient(
                                        colors: [Colors.lightGreen,Colors.green],
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(snapshot.data[index].data['titre'],
                                        style: TextStyle(
                                            fontSize: 23
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              });

                        }
                      }),

                ],
              ),
            ),
            SizedBox(height: 30,),


            Visibility(
              visible: isteacher,
              child: FloatingActionButton(child: Icon(Icons.add,
                color: Colors.purple,
                size: 30,),
                  backgroundColor: Colors.white,
                  onPressed: (){
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (context) => uexo11pac(),
                    ));
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class exo11par extends StatefulWidget {
  @override
  _exo11parState createState() => _exo11parState();
}

class _exo11parState extends State<exo11par> {

  Future getexercice11par()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("exercices11par").getDocuments();
    return qn.documents;
  }
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
      backgroundColor: Colors.purple,
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
              child: Column(
                children: <Widget>[
                  FutureBuilder(
                      future: getexercice11par(),
                      builder: (context,snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return Center(child: Text('loading'),);
                        } else {
                          return ListView.builder(
                              shrinkWrap: true,
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: (){
                                    String passdata=snapshot.data[index].data['pdfurl'];
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context)=> Viewpdf(),
                                        settings: RouteSettings(
                                          arguments: passdata,
                                        )
                                    ));
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(horizontal: 7,vertical: 10),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35),
                                      gradient: LinearGradient(
                                        colors: [Colors.lightGreen,Colors.green],
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(snapshot.data[index].data['titre'],
                                        style: TextStyle(
                                            fontSize: 23
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              });

                        }
                      }),

                ],
              ),
            ),
            SizedBox(height: 30,),


            Visibility(
              visible: isteacher,
              child: FloatingActionButton(child: Icon(Icons.add,
                color: Colors.purple,
                size: 30,),
                  backgroundColor: Colors.white,
                  onPressed: (){
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (context) => uexo11par(),
                    ));
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class exo11pei extends StatefulWidget {
  @override
  _exo11peiState createState() => _exo11peiState();
}

class _exo11peiState extends State<exo11pei> {

  Future getexercice11pei()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("exercices11pei").getDocuments();
    return qn.documents;
  }
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
      backgroundColor: Colors.purple,
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
              child: Column(
                children: <Widget>[
                  FutureBuilder(
                      future: getexercice11pei(),
                      builder: (context,snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return Center(child: Text('loading'),);
                        } else {
                          return ListView.builder(
                              shrinkWrap: true,
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: (){
                                    String passdata=snapshot.data[index].data['pdfurl'];
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context)=> Viewpdf(),
                                        settings: RouteSettings(
                                          arguments: passdata,
                                        )
                                    ));
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(horizontal: 7,vertical: 10),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35),
                                      gradient: LinearGradient(
                                        colors: [Colors.lightGreen,Colors.green],
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(snapshot.data[index].data['titre'],
                                        style: TextStyle(
                                            fontSize: 23
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              });

                        }
                      }),

                ],
              ),
            ),
            SizedBox(height: 30,),


            Visibility(
              visible: isteacher,
              child: FloatingActionButton(child: Icon(Icons.add,
                color: Colors.purple,
                size: 30,),
                  backgroundColor: Colors.white,
                  onPressed: (){
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (context) => uexo11pei(),
                    ));
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class exo11pea extends StatefulWidget {
  @override
  _exo11peaState createState() => _exo11peaState();
}

class _exo11peaState extends State<exo11pea> {

  Future getexercice11pea()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("exercices11pea").getDocuments();
    return qn.documents;
  }
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
      backgroundColor: Colors.purple,
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
              child: Column(
                children: <Widget>[
                  FutureBuilder(
                      future: getexercice11pea(),
                      builder: (context,snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return Center(child: Text('loading'),);
                        } else {
                          return ListView.builder(
                              shrinkWrap: true,
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: (){
                                    String passdata=snapshot.data[index].data['pdfurl'];
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context)=> Viewpdf(),
                                        settings: RouteSettings(
                                          arguments: passdata,
                                        )
                                    ));
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(horizontal: 7,vertical: 10),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35),
                                      gradient: LinearGradient(
                                        colors: [Colors.lightGreen,Colors.green],
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(snapshot.data[index].data['titre'],
                                        style: TextStyle(
                                            fontSize: 23
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              });

                        }
                      }),

                ],
              ),
            ),
            SizedBox(height: 30,),


            Visibility(
              visible: isteacher,
              child: FloatingActionButton(child: Icon(Icons.add,
                color: Colors.purple,
                size: 30,),
                  backgroundColor: Colors.white,
                  onPressed: (){
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (context) => uexo11pea(),
                    ));
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class exo11pfr extends StatefulWidget {
  @override
  _exo11pfrState createState() => _exo11pfrState();
}

class _exo11pfrState extends State<exo11pfr> {

  Future getexercice11pfr()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("exercices11pfr").getDocuments();
    return qn.documents;
  }
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
      backgroundColor: Colors.purple,
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
              child: Column(
                children: <Widget>[
                  FutureBuilder(
                      future: getexercice11pfr(),
                      builder: (context,snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return Center(child: Text('loading'),);
                        } else {
                          return ListView.builder(
                              shrinkWrap: true,
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: (){
                                    String passdata=snapshot.data[index].data['pdfurl'];
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context)=> Viewpdf(),
                                        settings: RouteSettings(
                                          arguments: passdata,
                                        )
                                    ));
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(horizontal: 7,vertical: 10),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35),
                                      gradient: LinearGradient(
                                        colors: [Colors.lightGreen,Colors.green],
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(snapshot.data[index].data['titre'],
                                        style: TextStyle(
                                            fontSize: 23
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              });

                        }
                      }),

                ],
              ),
            ),
            SizedBox(height: 30,),


            Visibility(
              visible: isteacher,
              child: FloatingActionButton(child: Icon(Icons.add,
                color: Colors.purple,
                size: 30,),
                  backgroundColor: Colors.white,
                  onPressed: (){
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (context) => uexo11pfr(),
                    ));
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class exo11phg extends StatefulWidget {
  @override
  _exo11phgState createState() => _exo11phgState();
}

class _exo11phgState extends State<exo11phg> {

  Future getexercice11phg()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("exercices11phg").getDocuments();
    return qn.documents;
  }
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
      backgroundColor: Colors.purple,
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
              child: Column(
                children: <Widget>[
                  FutureBuilder(
                      future: getexercice11phg(),
                      builder: (context,snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return Center(child: Text('loading'),);
                        } else {
                          return ListView.builder(
                              shrinkWrap: true,
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: (){
                                    String passdata=snapshot.data[index].data['pdfurl'];
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context)=> Viewpdf(),
                                        settings: RouteSettings(
                                          arguments: passdata,
                                        )
                                    ));
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(horizontal: 7,vertical: 10),
                                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35),
                                      gradient: LinearGradient(
                                        colors: [Colors.lightGreen,Colors.green],
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(snapshot.data[index].data['titre'],
                                        style: TextStyle(
                                            fontSize: 23
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              });

                        }
                      }),

                ],
              ),
            ),
            SizedBox(height: 30,),


            Visibility(
              visible: isteacher,
              child: FloatingActionButton(child: Icon(Icons.add,
                color: Colors.purple,
                size: 30,),
                  backgroundColor: Colors.white,
                  onPressed: (){
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (context) => uexo11phg(),
                    ));
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class exo11pen extends StatefulWidget {
  @override
  _exo11penState createState() => _exo11penState();
}

class _exo11penState extends State<exo11pen> {

  Future getexercice11pen() async {
    var firestore = Firestore.instance;
    QuerySnapshot qn = await firestore.collection("exercices11pen")
        .getDocuments();
    return qn.documents;
  }

  bool isteacher = false;

  @override
  Widget build(BuildContext context) {
    currentuser _currentuser = Provider.of<currentuser>(context, listen: false);
    if (_currentuser.getcurrentuser.isteacher == 'true') {
      setState(() {
        isteacher = true;
      });
    }
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Center(
                child: IconButton(
                  alignment: Alignment.center,
                  icon: Icon(Icons.close, color: Colors.white, size: 40,),
                  onPressed: () {
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
                  colors: [Colors.white, Colors.tealAccent],
                ),
              ),
              child: Center(
                child: Text(
                  " <<La vie, c'est comme une bicyclette, il faut avancer pour ne pas perdre l'équilibre.>> Albert.Einstein",
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
              child: Column(
                children: <Widget>[
                  FutureBuilder(
                      future: getexercice11pen(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(child: Text('loading'),);
                        } else {
                          return ListView.builder(
                              shrinkWrap: true,
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    String passdata = snapshot.data[index]
                                        .data['pdfurl'];
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context) => Viewpdf(),
                                        settings: RouteSettings(
                                          arguments: passdata,
                                        )
                                    ));
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 7, vertical: 10),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35),
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.lightGreen,
                                          Colors.green
                                        ],
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        snapshot.data[index].data['titre'],
                                        style: TextStyle(
                                            fontSize: 23
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              });
                        }
                      }),

                ],
              ),
            ),
            SizedBox(height: 30,),


            Visibility(
              visible: isteacher,
              child: FloatingActionButton(child: Icon(Icons.add,
                color: Colors.purple,
                size: 30,),
                  backgroundColor: Colors.white,
                  onPressed: () {
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (context) => uexo11pen(),
                    ));
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class exo11philo extends StatefulWidget {
  @override
  _exo11philoState createState() => _exo11philoState();
}

class _exo11philoState extends State<exo11philo> {

  Future getexercice11philo() async {
    var firestore = Firestore.instance;
    QuerySnapshot qn = await firestore.collection("exercices11philo")
        .getDocuments();
    return qn.documents;
  }

  bool isteacher = false;

  @override
  Widget build(BuildContext context) {
    currentuser _currentuser = Provider.of<currentuser>(context, listen: false);
    if (_currentuser.getcurrentuser.isteacher == 'true') {
      setState(() {
        isteacher = true;
      });
    }
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Center(
                child: IconButton(
                  alignment: Alignment.center,
                  icon: Icon(Icons.close, color: Colors.white, size: 40,),
                  onPressed: () {
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
                  colors: [Colors.white, Colors.tealAccent],
                ),
              ),
              child: Center(
                child: Text(
                  " <<La vie, c'est comme une bicyclette, il faut avancer pour ne pas perdre l'équilibre.>> Albert.Einstein",
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
              child: Column(
                children: <Widget>[
                  FutureBuilder(
                      future: getexercice11philo(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(child: Text('loading'),);
                        } else {
                          return ListView.builder(
                              shrinkWrap: true,
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    String passdata = snapshot.data[index]
                                        .data['pdfurl'];
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context) => Viewpdf(),
                                        settings: RouteSettings(
                                          arguments: passdata,
                                        )
                                    ));
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 7, vertical: 10),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35),
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.lightGreen,
                                          Colors.green
                                        ],
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        snapshot.data[index].data['titre'],
                                        style: TextStyle(
                                            fontSize: 23
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              });
                        }
                      }),

                ],
              ),
            ),
            SizedBox(height: 30,),


            Visibility(
              visible: isteacher,
              child: FloatingActionButton(child: Icon(Icons.add,
                color: Colors.purple,
                size: 30,),
                  backgroundColor: Colors.white,
                  onPressed: () {
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (context) => uexo11philo(),
                    ));
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}