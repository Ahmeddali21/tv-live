import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tvlive/News/news.dart';
import 'package:tvlive/Series/series.dart';
import 'package:tvlive/Sports/sports.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:intl/intl.dart';
import 'package:tvlive/home.dart';
import 'Kids/kids.dart';
import 'Movies/movies.dart';
import 'const.dart';

class sechudle extends StatefulWidget {
  const sechudle({Key? key}) : super(key: key);
  @override
  _sechudleState createState() => _sechudleState();
}

class _sechudleState extends State<sechudle> {
  @override
  void initState() {
    super.initState();
    _forcePortrait();
  }

  var scaffoldKey = GlobalKey<ScaffoldState>();
  Future<void> _forceLandscape() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }

  Future<void> _forcePortrait() async {
    await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  }

  @override
  void dispose() {
    _forceLandscape();
    super.dispose();
  }

  DateTime now = DateTime.now();
  @override
  Widget build(BuildContext context) {
    int index = 3;
    var size = MediaQuery.of(context).size;
    return WillPopScope(child: FutureBuilder(
      builder: (context, snapshot) {
        return CupertinoPageScaffold(
            navigationBar: const CupertinoNavigationBar(
              middle: Text("Sehcudle"),
            ),
            child:Center(child: Text("الدوري الاسباني"),));
      },
    ), onWillPop: () async {
      Navigator.pop(context);
      return true;
    });
  }
}
