import 'package:flutter/material.dart';
import 'package:video_player_360/video_player_360.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flow 360 video'),
        ),
        body: Center(
            child: FlatButton(
                onPressed: () async {
                  await VideoPlayer360.playVideoURL(
                      //Video is in a private GitHub repo. I can make it public or use the video below.
                      "https://github.com/unnurThorisd/flow/blob/master/Focus2_Eng%20overunder.mp4?raw=true");
                  //"https://github.com/stephangopaul/video_samples/blob/master/gb.mp4?raw=true");
                },
                //padding: EdgeInsets.all(0.0),
                child: Image.asset('assets/focus.png'))),
      ),
    );
  }
}
