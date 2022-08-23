import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:video_player/video_player.dart';

import 'home.dart';


class ChewieDemo extends StatefulWidget {
  const ChewieDemo({
    Key? key,
    this.title = 'Chewie Demo',
  }) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _ChewieDemoState();
  }
}

class _ChewieDemoState extends State<ChewieDemo> {
  TargetPlatform? _platform;
  late VideoPlayerController _videoPlayerController1;
  late VideoPlayerController _videoPlayerController2;
  ChewieController? _chewieController;
  int? bufferDelay;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  @override
  void dispose() {
    _videoPlayerController1.dispose();
    _videoPlayerController2.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  // List<String> srcs = [
  //   "http://lionboxiptv.xyz:80/AhmetBerlin6565/x8JsqyEHQu/14442"
  // ];

  Future<void> initializePlayer() async {
    _videoPlayerController1 =
        VideoPlayerController.network('https://admdn5.cdn.mangomolo.com/adsports2/smil:adsports2.stream.smil/playlist.m3u8');
    // _videoPlayerController2 =
    //     VideoPlayerController.network(srcs[currPlayIndex]);
    await Future.wait([
      _videoPlayerController1.initialize(),
      // _videoPlayerController2.initialize()
    ]);
    _createChewieController();
    setState(() {});
  }

  void _createChewieController() {

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: true,
      looping: true,
      progressIndicatorDelay:
      bufferDelay != null ? Duration(milliseconds: bufferDelay!) : null,

      additionalOptions: (context) {
        return <OptionItem>[
          OptionItem(

            iconData: Icons.live_tv_sharp,
            title: 'Toggle Video Src', onTap: () { null; },
          ),
        ];
      },

      hideControlsTimer: const Duration(seconds: 1),

    );
  }

  int currPlayIndex = 0;



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: widget.title,
      home: Scaffold(

        drawer: SafeArea(child:Container(
          width: 250,
          child:  Drawer(
            backgroundColor: Colors.white,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.teal.shade400,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          //color of shadow
                          spreadRadius: 3,
                          //spread radius
                          blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    margin: EdgeInsets.zero, child: Row(
                  children: [
                    Image.asset('Images/tv.png'),
                    Text('  ')
                  ],
                )
                ),
                SizedBox(
                  height: 15,
                ),
                ListTile(

                  leading: const Icon(
                    Icons.sports_soccer,
                    color: Colors.teal,
                    size: 35,
                  ),
                  title: const Text('Sports', style: TextStyle(
                      color: Colors.teal,
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                  ),),
                  onTap: () {
                    {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => home()));
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.movie,
                    color: Colors.teal,
                    size: 35,
                  ),
                  title: const Text('Movies', style: TextStyle(
                      color: Colors.teal,
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                  ),),
                  onTap: () {
                    {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => home()));
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.live_tv,
                    color: Colors.teal,
                    size: 35,
                  ),
                  title: const Text('Series', style: TextStyle(
                      color: Colors.teal,
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                  ),),
                  onTap: () {
                    {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => home()));
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.newspaper,
                    color: Colors.teal,
                    size: 35,
                  ),
                  title: const Text('News', style: TextStyle(
                      color: Colors.teal,
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                  ),),
                  onTap: () {
                    {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => home()));
                    }
                  },
                ),
              ],
            ),
          ),
        )),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Center(
                  child: _chewieController != null &&
                      _chewieController!
                          .videoPlayerController.value.isInitialized ?
                  Chewie(
                    controller: _chewieController!,
                  )
                      : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircularProgressIndicator(),
                      SizedBox(height: 20),
                      Text('Loading'),
                    ],
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  _chewieController?.enterFullScreen();
                },
                child: const Text('Fullscreen'),
              ),


            ],
          ),
        )
      ),
    );
  }
}