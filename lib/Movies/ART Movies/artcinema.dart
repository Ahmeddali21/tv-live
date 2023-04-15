import 'dart:math';

import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:keep_screen_on/keep_screen_on.dart';
import '../../home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class artcinema extends StatefulWidget {
  const artcinema({Key? key}) : super(key: key);

  @override
  State<artcinema> createState() => _artcinemaState();
}

class _artcinemaState extends State<artcinema> {
  late VideoPlayerController _videoPlayerController1, _videoPlayerController2;

  late CustomVideoPlayerController _customVideoPlayerController;

  final CustomVideoPlayerSettings _customVideoPlayerSettings =
      const CustomVideoPlayerSettings();
  List urls = [];
  var link;
  DocumentReference url =
      FirebaseFirestore.instance.collection("movies").doc("art");
  getdata() async {
    var response = await url.get();
    setState(() {
      urls.add(response.data());
      link = urls[0]["artcinema"];
      _videoPlayerController1 = VideoPlayerController.network(
        link,
      )..initialize().then((value) => setState(() {
            _videoPlayerController1.play();
          }));

      _customVideoPlayerController = CustomVideoPlayerController(
        context: context,
        videoPlayerController: _videoPlayerController1,
        customVideoPlayerSettings: _customVideoPlayerSettings,
        additionalVideoSources: {
          "SD": _videoPlayerController1,
        },
      );
    });
    print(urls);
  }

  @override
  void initState() {
    super.initState();
    getdata();

    KeepScreenOn.turnOn();
  }

  @override
  void dispose() {
    _videoPlayerController1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(child: FutureBuilder(
      builder: (context, snapshot) {
        return CupertinoPageScaffold(
            navigationBar: const CupertinoNavigationBar(
              middle: Text("ART Aflam Cinema"),
            ),
            child: urls.isEmpty || urls == null
                ? const Center(child: CircularProgressIndicator())
                : SafeArea(
                    child: Center(
                    child: CustomVideoPlayer(
                      customVideoPlayerController: _customVideoPlayerController,
                    ),
                  )));
      },
    ), onWillPop: () async {
      _videoPlayerController1.pause();
      Navigator.pop(context);
      return false;
    });
  }
}
