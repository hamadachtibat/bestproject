import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/material.dart';
class videoviewer extends StatefulWidget {
  @override
  _videoviewerState createState() => _videoviewerState();
}

class _videoviewerState extends State<videoviewer> {

  String Videourl ;
  YoutubePlayerController _controller;


  @override
  Widget build(BuildContext context) {

   String vida = ModalRoute.of(context).settings.arguments;




    return Scaffold(
      appBar: AppBar(
        title: Text('les video'
        ),
        centerTitle: true,

      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              YoutubePlayer(
                controller: _controller,
              )
            ],
          ),
        ),
      ),
    );
  }
}
