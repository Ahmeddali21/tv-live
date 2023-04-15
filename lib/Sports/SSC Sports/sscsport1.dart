import 'dart:math';

import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:keep_screen_on/keep_screen_on.dart';
import 'package:tvlive/home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

bool check = true;

class sscsport1 extends StatefulWidget {
  const sscsport1({Key? key}) : super(key: key);

  @override
  State<sscsport1> createState() => _sscsport1State();
}

class _sscsport1State extends State<sscsport1> {
  late VideoPlayerController _videoPlayerController1,
      _videoPlayerController2,
      _videoPlayerController3,
      _videoPlayerController4,
      _videoPlayerController5,
      _videoPlayerController6;

  late CustomVideoPlayerController _customVideoPlayerController;

  final CustomVideoPlayerSettings _customVideoPlayerSettings =
      const CustomVideoPlayerSettings();

  List urls = [];
  var link;

  CollectionReference url = FirebaseFirestore.instance
      .collection("sports")
      .doc("sscsports")
      .collection("ssc1");

  getdata() async {
    var response = await url.get();
    response.docs.forEach((element) {
      setState(() {
        urls.add(element.data());
        link = urls[0]["sd"];
        _videoPlayerController1 = VideoPlayerController.network(
          link,
        )..initialize().then((value) => setState(() {
              _videoPlayerController1.play();
            }));
        _videoPlayerController2 =
            VideoPlayerController.network(link = urls[0]["hd"]);
        _customVideoPlayerController = CustomVideoPlayerController(
          context: context,
          videoPlayerController: _videoPlayerController1,
          customVideoPlayerSettings: _customVideoPlayerSettings,
          additionalVideoSources: {
            "SD": _videoPlayerController1,
            "HD": _videoPlayerController2,
          },
        );
      });
    });
    print(urls[0]["sd"]);
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
    _videoPlayerController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(child: FutureBuilder(
      builder: (context, snapshot) {
        return CupertinoPageScaffold(
            navigationBar: const CupertinoNavigationBar(
              middle: Text("SSC 1"),
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
      _videoPlayerController2.pause();

      Navigator.pop(context);
      return false;
    });
  }
}