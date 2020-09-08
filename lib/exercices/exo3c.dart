import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_alfadl2/lessonupload/uplexo3c.dart';
import 'package:flutter_alfadl2/primairelesson/lessonviewer.dart';
import 'package:flutter_alfadl2/services/auth.dart';
import 'package:provider/provider.dart';

class exo9pmath extends StatefulWidget {
  @override
  _exo9pmathState createState() => _exo9pmathState();
}

class _exo9pmathState extends State<exo9pmath> {

  Future getexercice9p()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("exercices9pm").getDocuments();
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
                      future: getexercice9p(),
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
                      builder: (context) => exo9pm(),
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
class exo9pac extends StatefulWidget {
  @override
  _exo9pacState createState() => _exo9pacState();
}

class _exo9pacState extends State<exo9pac> {

  Future getexercice9pac()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("exercices9pac").getDocuments();
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
                      future: getexercice9pac(),
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
                      builder: (context) => uexo9pac(),
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
class exo9par extends StatefulWidget {
  @override
  _exo9parState createState() => _exo9parState();
}

class _exo9parState extends State<exo9par> {

  Future getexercice9par()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("exercices9par").getDocuments();
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
                      future: getexercice9par(),
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
                      builder: (context) => uexo9par(),
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
class exo9pei extends StatefulWidget {
  @override
  _exo9peiState createState() => _exo9peiState();
}

class _exo9peiState extends State<exo9pei> {

  Future getexercice9pei()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("exercices9pei").getDocuments();
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
                      future: getexercice9pei(),
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
                      builder: (context) => uexo9pei(),
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
class exo9pea extends StatefulWidget {
  @override
  _exo9peaState createState() => _exo9peaState();
}

class _exo9peaState extends State<exo9pea> {

  Future getexercice9pea()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("exercices9pea").getDocuments();
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
                      future: getexercice9pea(),
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
                      builder: (context) => uexo9pea(),
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
class exo9pfr extends StatefulWidget {
  @override
  _exo9pfrState createState() => _exo9pfrState();
}

class _exo9pfrState extends State<exo9pfr> {

  Future getexercice9pfr()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("exercices9pfr").getDocuments();
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
                      future: getexercice9pfr(),
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
                      builder: (context) => uexo9pfr(),
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
class exo9phg extends StatefulWidget {
  @override
  _exo9phgState createState() => _exo9phgState();
}

class _exo9phgState extends State<exo9phg> {

  Future getexercice9phg()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("exercices9phg").getDocuments();
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
                      future: getexercice9phg(),
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
                      builder: (context) => uexo9phg(),
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
class exo9pen extends StatefulWidget {
  @override
  _exo9penState createState() => _exo9penState();
}

class _exo9penState extends State<exo9pen> {

  Future getexercice9pen() async {
    var firestore = Firestore.instance;
    QuerySnapshot qn = await firestore.collection("exercices9pen")
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
                      future: getexercice9pen(),
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
                      builder: (context) => uexo9pen(),
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