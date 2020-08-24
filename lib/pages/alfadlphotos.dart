import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class fadlphoto extends StatefulWidget {
  @override
  _fadlphotoState createState() => _fadlphotoState();
}

class _fadlphotoState extends State<fadlphoto> {
  @override
  Widget build(BuildContext context) {
    Widget image_slider_view = Container(
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 100),
      height: 400,

     child: Carousel(
       boxFit: BoxFit.fill,
       autoplay: true,
       borderRadius: true,

       animationDuration: Duration(seconds: 3),
       autoplayDuration: Duration(seconds: 5),
       images: [
         AssetImage('assets/images/alfadl11.jpg'),
         AssetImage('assets/images/alfadl12.jpg'),
         AssetImage('assets/images/alfadl13.jpg'),
         AssetImage('assets/images/alfadl14.jpg'),
         AssetImage('assets/images/alfadl15.jpg'),
         AssetImage('assets/images/alfadl16.jpg'),
         AssetImage('assets/images/alfadl17.jpg'),
         AssetImage('assets/images/alfadl18.jpg'),
         AssetImage('assets/images/alfadl19.jpg'),
         AssetImage('assets/images/alfadl20.jpg'),
         AssetImage('assets/images/alfadl22.jpg'),
       ],
     ),
    );
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 0,
        centerTitle: true,
        title: Text("G.S.ALFADL",
            style:TextStyle(
              fontSize: 25
            ) ,),
      ),

      body:
             Center(
               child: ListView(
                children: <Widget>[
                  image_slider_view,
                ],
        ),
             ),
    );
  }
}
