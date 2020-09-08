import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_alfadl2/services/crud.dart';
import 'package:random_string/random_string.dart';
class exo9pm extends StatefulWidget {
  @override
  _exo9pmState createState() => _exo9pmState();
}

class _exo9pmState extends State<exo9pm> {

  Crudmethods crudmethods=new Crudmethods();


  bool isloading=false;
  File filepdf;
  Future getPDF()async{
    filepdf =await FilePicker.getFile(type: FileType.any);
  }
  uploadpdf()async{
    if (filepdf!=null) {
      setState(() {
        isloading=true;
      });
      StorageReference storageReference =  FirebaseStorage.instance.ref().child("lessons").child("${randomAlphaNumeric(9)}.pdf");
      final StorageUploadTask Task= storageReference.putFile(filepdf);
      var downloadurl = await(await Task.onComplete).ref.getDownloadURL();
      print('this is your $downloadurl');

      Map<String,String> lessondata = {
        "pdfurl": downloadurl,
        "titre": _titrecontroller.text,

      };
      Crudmethods().Addexo9pm(lessondata).then((result){
        Navigator.pop(context);
      });
    }  else{print('error');}
  }
  TextEditingController _titrecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          title: Text('Upload Les leçons',
            style: TextStyle(fontSize: 25), ),
          centerTitle: true,
          backgroundColor: Colors.purple,
          elevation: 0,
        ),
        body: isloading ? Container(
          alignment:Alignment.center,
          child: CircularProgressIndicator(),
        ):
        SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    getPDF();
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: Row(

                      children: <Widget>[
                        SizedBox(width: 20,),
                        Icon(Icons.file_upload,
                          size: 30,),
                        SizedBox(width: 20,),
                        Text("Upload Le Document",
                          style: TextStyle(fontSize: 25),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          controller: _titrecontroller,
                          decoration: InputDecoration(
                              hintText: 'Entrez le titre du document',
                              hintStyle: TextStyle(fontSize: 20),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric( horizontal: 20,)
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),

                    ],
                  ),
                ),
                SizedBox(height: 70,),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  height: 70,
                  width: MediaQuery.of(context).size.width,

                  child: RaisedButton(
                    onPressed:(){
                      uploadpdf();
                    } ,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.save_alt,
                          size: 30,
                          color: Colors.black,),
                        SizedBox(width: 10,),
                        Text('Sauvgarder le Doc',
                          style: TextStyle(fontSize: 25,
                              color: Colors.black),

                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
  }
}
class uexo9pac extends StatefulWidget {
  @override
  _uexo9pacState createState() => _uexo9pacState();
}

class _uexo9pacState extends State<uexo9pac> {

  Crudmethods crudmethods=new Crudmethods();


  bool isloading=false;
  File filepdf;
  Future getPDF()async{
    filepdf =await FilePicker.getFile(type: FileType.any);
  }
  uploadpdf()async{
    if (filepdf!=null) {
      setState(() {
        isloading=true;
      });
      StorageReference storageReference =  FirebaseStorage.instance.ref().child("lessons").child("${randomAlphaNumeric(9)}.pdf");
      final StorageUploadTask Task= storageReference.putFile(filepdf);
      var downloadurl = await(await Task.onComplete).ref.getDownloadURL();
      print('this is your $downloadurl');

      Map<String,String> lessondata = {
        "pdfurl": downloadurl,
        "titre": _titrecontroller.text,

      };
      Crudmethods().Addexo9pac(lessondata).then((result){
        Navigator.pop(context);
      });
    }  else{print('error');}
  }
  TextEditingController _titrecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          title: Text('Upload Les leçons',
            style: TextStyle(fontSize: 25), ),
          centerTitle: true,
          backgroundColor: Colors.purple,
          elevation: 0,
        ),
        body: isloading ? Container(
          alignment:Alignment.center,
          child: CircularProgressIndicator(),
        ):
        SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    getPDF();
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: Row(

                      children: <Widget>[
                        SizedBox(width: 20,),
                        Icon(Icons.file_upload,
                          size: 30,),
                        SizedBox(width: 20,),
                        Text("Upload Le Document",
                          style: TextStyle(fontSize: 25),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          controller: _titrecontroller,
                          decoration: InputDecoration(
                              hintText: 'Entrez le titre du document',
                              hintStyle: TextStyle(fontSize: 20),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric( horizontal: 20,)
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),

                    ],
                  ),
                ),
                SizedBox(height: 70,),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  height: 70,
                  width: MediaQuery.of(context).size.width,

                  child: RaisedButton(
                    onPressed:(){
                      uploadpdf();
                    } ,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.save_alt,
                          size: 30,
                          color: Colors.black,),
                        SizedBox(width: 10,),
                        Text('Sauvgarder le Doc',
                          style: TextStyle(fontSize: 25,
                              color: Colors.black),

                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
  }
}
class uexo9par extends StatefulWidget {
  @override
  _uexo9parState createState() => _uexo9parState();
}

class _uexo9parState extends State<uexo9par> {

  Crudmethods crudmethods=new Crudmethods();


  bool isloading=false;
  File filepdf;
  Future getPDF()async{
    filepdf =await FilePicker.getFile(type: FileType.any);
  }
  uploadpdf()async{
    if (filepdf!=null) {
      setState(() {
        isloading=true;
      });
      StorageReference storageReference =  FirebaseStorage.instance.ref().child("lessons").child("${randomAlphaNumeric(9)}.pdf");
      final StorageUploadTask Task= storageReference.putFile(filepdf);
      var downloadurl = await(await Task.onComplete).ref.getDownloadURL();
      print('this is your $downloadurl');

      Map<String,String> lessondata = {
        "pdfurl": downloadurl,
        "titre": _titrecontroller.text,

      };
      Crudmethods().Addexo9par(lessondata).then((result){
        Navigator.pop(context);
      });
    }  else{print('error');}
  }
  TextEditingController _titrecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          title: Text('Upload Les leçons',
            style: TextStyle(fontSize: 25), ),
          centerTitle: true,
          backgroundColor: Colors.purple,
          elevation: 0,
        ),
        body: isloading ? Container(
          alignment:Alignment.center,
          child: CircularProgressIndicator(),
        ):
        SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    getPDF();
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: Row(

                      children: <Widget>[
                        SizedBox(width: 20,),
                        Icon(Icons.file_upload,
                          size: 30,),
                        SizedBox(width: 20,),
                        Text("Upload Le Document",
                          style: TextStyle(fontSize: 25),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          controller: _titrecontroller,
                          decoration: InputDecoration(
                              hintText: 'Entrez le titre du document',
                              hintStyle: TextStyle(fontSize: 20),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric( horizontal: 20,)
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),

                    ],
                  ),
                ),
                SizedBox(height: 70,),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  height: 70,
                  width: MediaQuery.of(context).size.width,

                  child: RaisedButton(
                    onPressed:(){
                      uploadpdf();
                    } ,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.save_alt,
                          size: 30,
                          color: Colors.black,),
                        SizedBox(width: 10,),
                        Text('Sauvgarder le Doc',
                          style: TextStyle(fontSize: 25,
                              color: Colors.black),

                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
  }
}
class uexo9pei extends StatefulWidget {
  @override
  _uexo9peiState createState() => _uexo9peiState();
}

class _uexo9peiState extends State<uexo9pei> {

  Crudmethods crudmethods=new Crudmethods();


  bool isloading=false;
  File filepdf;
  Future getPDF()async{
    filepdf =await FilePicker.getFile(type: FileType.any);
  }
  uploadpdf()async{
    if (filepdf!=null) {
      setState(() {
        isloading=true;
      });
      StorageReference storageReference =  FirebaseStorage.instance.ref().child("lessons").child("${randomAlphaNumeric(9)}.pdf");
      final StorageUploadTask Task= storageReference.putFile(filepdf);
      var downloadurl = await(await Task.onComplete).ref.getDownloadURL();
      print('this is your $downloadurl');

      Map<String,String> lessondata = {
        "pdfurl": downloadurl,
        "titre": _titrecontroller.text,

      };
      Crudmethods().Addexo9pei(lessondata).then((result){
        Navigator.pop(context);
      });
    }  else{print('error');}
  }
  TextEditingController _titrecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          title: Text('Upload Les leçons',
            style: TextStyle(fontSize: 25), ),
          centerTitle: true,
          backgroundColor: Colors.purple,
          elevation: 0,
        ),
        body: isloading ? Container(
          alignment:Alignment.center,
          child: CircularProgressIndicator(),
        ):
        SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    getPDF();
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: Row(

                      children: <Widget>[
                        SizedBox(width: 20,),
                        Icon(Icons.file_upload,
                          size: 30,),
                        SizedBox(width: 20,),
                        Text("Upload Le Document",
                          style: TextStyle(fontSize: 25),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          controller: _titrecontroller,
                          decoration: InputDecoration(
                              hintText: 'Entrez le titre du document',
                              hintStyle: TextStyle(fontSize: 20),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric( horizontal: 20,)
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),

                    ],
                  ),
                ),
                SizedBox(height: 70,),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  height: 70,
                  width: MediaQuery.of(context).size.width,

                  child: RaisedButton(
                    onPressed:(){
                      uploadpdf();
                    } ,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.save_alt,
                          size: 30,
                          color: Colors.black,),
                        SizedBox(width: 10,),
                        Text('Sauvgarder le Doc',
                          style: TextStyle(fontSize: 25,
                              color: Colors.black),

                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
  }
}
class uexo9pea extends StatefulWidget {
  @override
  _uexo9peaState createState() => _uexo9peaState();
}

class _uexo9peaState extends State<uexo9pea> {

  Crudmethods crudmethods=new Crudmethods();


  bool isloading=false;
  File filepdf;
  Future getPDF()async{
    filepdf =await FilePicker.getFile(type: FileType.any);
  }
  uploadpdf()async{
    if (filepdf!=null) {
      setState(() {
        isloading=true;
      });
      StorageReference storageReference =  FirebaseStorage.instance.ref().child("lessons").child("${randomAlphaNumeric(9)}.pdf");
      final StorageUploadTask Task= storageReference.putFile(filepdf);
      var downloadurl = await(await Task.onComplete).ref.getDownloadURL();
      print('this is your $downloadurl');

      Map<String,String> lessondata = {
        "pdfurl": downloadurl,
        "titre": _titrecontroller.text,

      };
      Crudmethods().Addexo9pea(lessondata).then((result){
        Navigator.pop(context);
      });
    }  else{print('error');}
  }
  TextEditingController _titrecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          title: Text('Upload Les leçons',
            style: TextStyle(fontSize: 25), ),
          centerTitle: true,
          backgroundColor: Colors.purple,
          elevation: 0,
        ),
        body: isloading ? Container(
          alignment:Alignment.center,
          child: CircularProgressIndicator(),
        ):
        SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    getPDF();
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: Row(

                      children: <Widget>[
                        SizedBox(width: 20,),
                        Icon(Icons.file_upload,
                          size: 30,),
                        SizedBox(width: 20,),
                        Text("Upload Le Document",
                          style: TextStyle(fontSize: 25),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          controller: _titrecontroller,
                          decoration: InputDecoration(
                              hintText: 'Entrez le titre du document',
                              hintStyle: TextStyle(fontSize: 20),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric( horizontal: 20,)
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),

                    ],
                  ),
                ),
                SizedBox(height: 70,),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  height: 70,
                  width: MediaQuery.of(context).size.width,

                  child: RaisedButton(
                    onPressed:(){
                      uploadpdf();
                    } ,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.save_alt,
                          size: 30,
                          color: Colors.black,),
                        SizedBox(width: 10,),
                        Text('Sauvgarder le Doc',
                          style: TextStyle(fontSize: 25,
                              color: Colors.black),

                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
  }
}
class uexo9pfr extends StatefulWidget {
  @override
  _uexo9pfrState createState() => _uexo9pfrState();
}

class _uexo9pfrState extends State<uexo9pfr> {

  Crudmethods crudmethods=new Crudmethods();


  bool isloading=false;
  File filepdf;
  Future getPDF()async{
    filepdf =await FilePicker.getFile(type: FileType.any);
  }
  uploadpdf()async{
    if (filepdf!=null) {
      setState(() {
        isloading=true;
      });
      StorageReference storageReference =  FirebaseStorage.instance.ref().child("lessons").child("${randomAlphaNumeric(9)}.pdf");
      final StorageUploadTask Task= storageReference.putFile(filepdf);
      var downloadurl = await(await Task.onComplete).ref.getDownloadURL();
      print('this is your $downloadurl');

      Map<String,String> lessondata = {
        "pdfurl": downloadurl,
        "titre": _titrecontroller.text,

      };
      Crudmethods().Addexo9pfr(lessondata).then((result){
        Navigator.pop(context);
      });
    }  else{print('error');}
  }
  TextEditingController _titrecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          title: Text('Upload Les leçons',
            style: TextStyle(fontSize: 25), ),
          centerTitle: true,
          backgroundColor: Colors.purple,
          elevation: 0,
        ),
        body: isloading ? Container(
          alignment:Alignment.center,
          child: CircularProgressIndicator(),
        ):
        SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    getPDF();
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: Row(

                      children: <Widget>[
                        SizedBox(width: 20,),
                        Icon(Icons.file_upload,
                          size: 30,),
                        SizedBox(width: 20,),
                        Text("Upload Le Document",
                          style: TextStyle(fontSize: 25),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          controller: _titrecontroller,
                          decoration: InputDecoration(
                              hintText: 'Entrez le titre du document',
                              hintStyle: TextStyle(fontSize: 20),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric( horizontal: 20,)
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),

                    ],
                  ),
                ),
                SizedBox(height: 70,),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  height: 70,
                  width: MediaQuery.of(context).size.width,

                  child: RaisedButton(
                    onPressed:(){
                      uploadpdf();
                    } ,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.save_alt,
                          size: 30,
                          color: Colors.black,),
                        SizedBox(width: 10,),
                        Text('Sauvgarder le Doc',
                          style: TextStyle(fontSize: 25,
                              color: Colors.black),

                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
  }
}
class uexo9phg extends StatefulWidget {
  @override
  _uexo9phgState createState() => _uexo9phgState();
}

class _uexo9phgState extends State<uexo9phg> {

  Crudmethods crudmethods=new Crudmethods();


  bool isloading=false;
  File filepdf;
  Future getPDF()async{
    filepdf =await FilePicker.getFile(type: FileType.any);
  }
  uploadpdf()async{
    if (filepdf!=null) {
      setState(() {
        isloading=true;
      });
      StorageReference storageReference =  FirebaseStorage.instance.ref().child("lessons").child("${randomAlphaNumeric(9)}.pdf");
      final StorageUploadTask Task= storageReference.putFile(filepdf);
      var downloadurl = await(await Task.onComplete).ref.getDownloadURL();
      print('this is your $downloadurl');

      Map<String,String> lessondata = {
        "pdfurl": downloadurl,
        "titre": _titrecontroller.text,

      };
      Crudmethods().Addexo9phg(lessondata).then((result){
        Navigator.pop(context);
      });
    }  else{print('error');}
  }
  TextEditingController _titrecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          title: Text('Upload Les leçons',
            style: TextStyle(fontSize: 25), ),
          centerTitle: true,
          backgroundColor: Colors.purple,
          elevation: 0,
        ),
        body: isloading ? Container(
          alignment:Alignment.center,
          child: CircularProgressIndicator(),
        ):
        SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    getPDF();
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: Row(

                      children: <Widget>[
                        SizedBox(width: 20,),
                        Icon(Icons.file_upload,
                          size: 30,),
                        SizedBox(width: 20,),
                        Text("Upload Le Document",
                          style: TextStyle(fontSize: 25),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          controller: _titrecontroller,
                          decoration: InputDecoration(
                              hintText: 'Entrez le titre du document',
                              hintStyle: TextStyle(fontSize: 20),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric( horizontal: 20,)
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),

                    ],
                  ),
                ),
                SizedBox(height: 70,),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  height: 70,
                  width: MediaQuery.of(context).size.width,

                  child: RaisedButton(
                    onPressed:(){
                      uploadpdf();
                    } ,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.save_alt,
                          size: 30,
                          color: Colors.black,),
                        SizedBox(width: 10,),
                        Text('Sauvgarder le Doc',
                          style: TextStyle(fontSize: 25,
                              color: Colors.black),

                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
  }
}
class uexo9pen extends StatefulWidget {
  @override
  _uexo9penState createState() => _uexo9penState();
}

class _uexo9penState extends State<uexo9pen> {

  Crudmethods crudmethods=new Crudmethods();


  bool isloading=false;
  File filepdf;
  Future getPDF()async{
    filepdf =await FilePicker.getFile(type: FileType.any);
  }
  uploadpdf()async{
    if (filepdf!=null) {
      setState(() {
        isloading=true;
      });
      StorageReference storageReference =  FirebaseStorage.instance.ref().child("lessons").child("${randomAlphaNumeric(9)}.pdf");
      final StorageUploadTask Task= storageReference.putFile(filepdf);
      var downloadurl = await(await Task.onComplete).ref.getDownloadURL();
      print('this is your $downloadurl');

      Map<String,String> lessondata = {
        "pdfurl": downloadurl,
        "titre": _titrecontroller.text,

      };
      Crudmethods().Addexo9pen(lessondata).then((result){
        Navigator.pop(context);
      });
    }  else{print('error');}
  }
  TextEditingController _titrecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          title: Text('Upload Les leçons',
            style: TextStyle(fontSize: 25), ),
          centerTitle: true,
          backgroundColor: Colors.purple,
          elevation: 0,
        ),
        body: isloading ? Container(
          alignment:Alignment.center,
          child: CircularProgressIndicator(),
        ):
        SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    getPDF();
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: Row(

                      children: <Widget>[
                        SizedBox(width: 20,),
                        Icon(Icons.file_upload,
                          size: 30,),
                        SizedBox(width: 20,),
                        Text("Upload Le Document",
                          style: TextStyle(fontSize: 25),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          controller: _titrecontroller,
                          decoration: InputDecoration(
                              hintText: 'Entrez le titre du document',
                              hintStyle: TextStyle(fontSize: 20),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric( horizontal: 20,)
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),

                    ],
                  ),
                ),
                SizedBox(height: 70,),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  height: 70,
                  width: MediaQuery.of(context).size.width,

                  child: RaisedButton(
                    onPressed:(){
                      uploadpdf();
                    } ,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.save_alt,
                          size: 30,
                          color: Colors.black,),
                        SizedBox(width: 10,),
                        Text('Sauvgarder le Doc',
                          style: TextStyle(fontSize: 25,
                              color: Colors.black),

                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
  }
}