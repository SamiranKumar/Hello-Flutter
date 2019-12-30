import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(VideoPlayerApp());

class VideoPlayerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Skh Video Player",
      home: VideoPlayerUI(),
    );
  }
}

class VideoPlayerUI extends StatefulWidget {
  VideoPlayerUI({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _VideoPlayerUiState();
  }
}

class _VideoPlayerUiState extends State<VideoPlayerUI> {
  VideoPlayerController _videoPlayerController;
  Future<void> _initVideoPlayer;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    );

    _initVideoPlayer = _videoPlayerController
        .initialize(); //// initialize the controller and store the Future for later use.
    _videoPlayerController
        .setLooping(true); //Use the controller to loop the video.

    super.initState();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose(); //to free up resources
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Stack(
        children: <Widget>[

          getPlayerView(),

          getPlayerController(),
        ],
      ),
    );
  }





  getPlayerView() {
    return Center(
      child: FutureBuilder(
        future: _initVideoPlayer,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return AspectRatio(
              aspectRatio: _videoPlayerController.value.aspectRatio,
              child: VideoPlayer(_videoPlayerController),
            );
          } else {
            // If the _videoPlayerController is still initializing, show a
            // loading spinner.
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  getPlayerController() {
    return Center(
      child:  ButtonTheme(
        height: 100.00,
        minWidth: 200.00,

        child: RaisedButton(
          padding: EdgeInsets.all(30),
          color: Colors.white10,

          onPressed: (){
            setState(() {

              if (_videoPlayerController.value.isPlaying){
                _videoPlayerController.pause();
              }else{
                _videoPlayerController.play();
              }
            });
          },
          child: Icon(
            _videoPlayerController.value.isPlaying ? Icons.pause: Icons.play_arrow,
            color: Colors.white,
            size: 100.00,
          ),
        ),
      ),

    );
  }
}
