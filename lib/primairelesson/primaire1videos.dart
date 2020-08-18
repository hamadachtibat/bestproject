import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class primairevideos extends StatefulWidget {
  @override
  _primairevideosState createState() => _primairevideosState();
}

class _primairevideosState extends State<primairevideos> {
  String videoUrl= " https://www.youtube.com/watch?v=U1yyuPEj6FA&feature=emb_title";
  YoutubePlayerController _controller1;
  @override
  void initState() {
    _controller1= YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(videoUrl),
      flags: YoutubePlayerFlags(
        autoPlay: false,

      ),
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.purple,
        title: Text(" lessons videos",
        style: TextStyle(
            fontSize: 25
        ),),
      ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Container(
                child: YoutubePlayer(
                  progressIndicatorColor: Colors.purple,
                  controller: _controller1,
                ),
              )
            ],
          ),

    ),
    );
  }
}
