import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class Player extends StatefulWidget {
  @override
  _PlayerState createState() => _PlayerState();
}
//RLwx1-H8Jn8

class _PlayerState extends State<Player> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'RLwx1-H8Jn8',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,

      ),
      builder: (context, player){
        return Column(
          children: [
            player
          ],
        );
      },
    );
  }
}
