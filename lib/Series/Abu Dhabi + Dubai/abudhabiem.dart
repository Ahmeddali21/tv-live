import 'dart:math';

import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:keep_screen_on/keep_screen_on.dart';
import '../../home.dart';

bool check = true;
var abu_dhabiem = [""];
var urls = "";

class abudhabiem extends StatefulWidget {
  const abudhabiem({Key? key}) : super(key: key);

  @override
  State<abudhabiem> createState() => _abudhabiemState();
}

class _abudhabiemState extends State<abudhabiem> {
  late VideoPlayerController _videoPlayerController1, _videoPlayerController2;

  late CustomVideoPlayerController _customVideoPlayerController;

  final CustomVideoPlayerSettings _customVideoPlayerSettings =
      const CustomVideoPlayerSettings();

  Future getData() async {
    var url = Uri.parse("https://apptvlivee.herokuapp.com/abudhabiem2");
    Response response = await get(url);
    String body = response.body;
    List<dynamic> list1 = json.decode(body);
    abu_dhabiem.clear();
    print(list1);
    check = false;
    setState(() {
      for (int i = 0; i < list1.length; i++) {
        abu_dhabiem.add("${list1[i]["ad_sport1sd"]}");
        abu_dhabiem.add("${list1[i]["ad_sport1hd"]}");
      }
      urls = abu_dhabiem[0];

      _videoPlayerController1 = VideoPlayerController.network(
        urls,
      )..initialize().then((value) => setState(() {
            _videoPlayerController1.play();
          }));
      _videoPlayerController2 =
          VideoPlayerController.network(urls = abu_dhabiem[1])
            ..initialize().then((value) => setState(() {}));
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
  }

  @override
  void initState() {
    super.initState();
    getData();

    KeepScreenOn.turnOn();
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: CupertinoPageScaffold(
          navigationBar: const CupertinoNavigationBar(
            middle: Text("Abu Dhabi + Dubai Emirates"),
          ),
          child: SafeArea(
            child: check == false
                ? Center(
                    child: CustomVideoPlayer(
                      customVideoPlayerController: _customVideoPlayerController,
                    ),
                  )
                : const Center(
                    child: CircularProgressIndicator(
                    color: Color(0xff2980b9),
                  )),
          ),
        ),
        onWillPop: () async {
          _videoPlayerController1.pause();
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => const home()));
          return false;
        });
  }
}
