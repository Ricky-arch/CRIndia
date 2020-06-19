import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PlayYoutube extends StatefulWidget {
  @override
  _PlayYoutubeState createState() => _PlayYoutubeState();
}

class _PlayYoutubeState extends State<PlayYoutube> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  YoutubePlayerController _controller;
  TextEditingController _idController;
  TextEditingController _seekToController;

  PlayerState _playerState;
  YoutubeMetaData _videoMetaData;
  double _volume = 100;
  bool _muted = false;
  bool _isPlayerReady = false;
//RLwx1-H8Jn8

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'RLwx1-H8Jn8',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          YoutubePlayerBuilder(
            onExitFullScreen: () {
              SystemChrome.setPreferredOrientations(DeviceOrientation.values);
            },
            player: YoutubePlayer(
              controller: _controller,
              liveUIColor: Colors.amber,
              bottomActions: [
                CurrentPosition(),
                ProgressBar(isExpanded: true),
              ],
            ),
            builder: (context, player) {
              return Column(
                children: [Wrap(children:[ player])],
              );
            },
          )
        ],
      ),
    );
  }
}
