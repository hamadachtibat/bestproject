import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_alfadl2/lessonupload/uploexobacsvt.dart';
import 'package:flutter_alfadl2/primairelesson/lessonviewer.dart';
import 'package:flutter_alfadl2/services/auth.dart';
import 'package:provider/provider.dart';

class exo13pmath extends StatefulWidget {
  @override
  _exo13pmathState createState() => _exo13pmathState();
}

class _exo13pmathState extends State<exo13pmath> {

  Future getexercice13p()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("exercices13pm").getDocuments();
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
                      future: getexercice13p(),
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
                      builder: (context) => exo13pm(),
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
class exo13pac extends StatefulWidget {
  @override
  _exo13pacState createState() => _exo13pacState();
}

class _exo13pacState extends State<exo13pac> {

  Future getexercice13pac()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("exercices13pac").getDocuments();
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
                      future: getexercice13pac(),
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
                      builder: (context) => uexo13pac(),
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
class exo13par extends StatefulWidget {
  @override
  _exo13parState createState() => _exo13parState();
}

class _exo13parState extends State<exo13par> {

  Future getexercice13par()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("exercices13par").getDocuments();
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
                      future: getexercice13par(),
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
                      builder: (context) => uexo13par(),
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
class exo13pei extends StatefulWidget {
  @override
  _exo13peiState createState() => _exo13peiState();
}

class _exo13peiState extends State<exo13pei> {

  Future getexercice13pei()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("exercices13pei").getDocuments();
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
                      future: getexercice13pei(),
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
                      builder: (context) => uexo13pei(),
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
class exo13pea extends StatefulWidget {
  @override
  _exo13peaState createState() => _exo13peaState();
}

class _exo13peaState extends State<exo13pea> {

  Future getexercice13pea()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("exercices13pea").getDocuments();
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
                      future: getexercice13pea(),
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
                      builder: (context) => uexo13pea(),
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
class exo13pfr extends StatefulWidget {
  @override
  _exo13pfrState createState() => _exo13pfrState();
}

class _exo13pfrState extends State<exo13pfr> {

  Future getexercice13pfr()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("exercices13pfr").getDocuments();
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
                      future: getexercice13pfr(),
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
                      builder: (context) => uexo13pfr(),
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
class exo13phg extends StatefulWidget {
  @override
  _exo13phgState createState() => _exo13phgState();
}

class _exo13phgState extends State<exo13phg> {

  Future getexercice13phg()async{
    var firestore =Firestore.instance;
    QuerySnapshot qn= await firestore.collection("exercices13phg").getDocuments();
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
                      future: getexercice13phg(),
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
                      builder: (context) => uexo13phg(),
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
class exo13pen extends StatefulWidget {
  @override
  _exo13penState createState() => _exo13penState();
}

class _exo13penState extends State<exo13pen> {

  Future getexercice13pen() async {
    var firestore = Firestore.instance;
    QuerySnapshot qn = await firestore.collection("exercices13pen")
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
                      future: getexercice13pen(),
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
                      builder: (context) => uexo13pen(),
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
class exo13philo extends StatefulWidget {
  @override
  _exo13philoState createState() => _exo13philoState();
}

class _exo13philoState extends State<exo13philo> {

  Future getexercice13philo() async {
    var firestore = Firestore.instance;
    QuerySnapshot qn = await firestore.collection("exercices13philo")
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
                      future: getexercice13philo(),
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
                      builder: (context) => uexo13philo(),
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