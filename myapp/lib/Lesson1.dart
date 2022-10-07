import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Lesson1 extends StatefulWidget {
  const Lesson1({super.key});

  @override
  State<Lesson1> createState() => _Lesson1State();
}

class _Lesson1State extends State<Lesson1> {
 
 final videoURL = "https://youtu.be/77IK9T45kiU";
 late YoutubePlayerController _controller ;
 @override
 void initeState(){
  super.initState();
  final videoID = YoutubePlayer.convertUrlToId(videoURL);
  _controller = YoutubePlayerController(initialVideoId: videoID!,
  flags: const YoutubePlayerFlags(
    autoPlay: false,
    isLive: false,
    enableCaption: false  ));
 }
  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(controller: _controller,
      ),
      builder: (context,player){
      return Scaffold(
      appBar: AppBar(
        title: Text("Lesson 1 - Adjectives"),
        backgroundColor: Color.fromARGB(255, 61, 105, 147),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                "Whate are Adjectives ?",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Divider(
                color: Colors.white,
              ),
             
          
            
                  ],
          )
    );
    }
    );
  }
}
