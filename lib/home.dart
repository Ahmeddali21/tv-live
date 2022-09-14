import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tvlive/Sports/sports.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';
import 'package:intl/intl.dart';

import 'movies.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  late VlcPlayerController controller;
  @override
  void initState() {
    super.initState();
    _forcePortrait();
  }

  Future<void> _forceLandscape() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);// t
  }

  Future<void> _forcePortrait() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  void dispose() {
    _forceLandscape();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.white,
              centerTitle: true,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'Images/tv.png',
                        width:
                        MediaQuery.of(context).size.height / 20,
                      ),
                      SizedBox(
                        width: size.width / 35,
                      ),
                      Text(
                        "${'Live TV'}",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  Text(
                    DateFormat.jm().format(DateTime.now()),
                    style: const TextStyle(color: Colors.black),
                  ),
                ],
              )),
          backgroundColor: Color(0xff2980b9),
          body:  SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              SizedBox(height: size.height/75,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Image.asset('Images/sp.png',width: size.width/7.5,color: Colors.white,),
                  SizedBox(width: size.width/40,),
                  Text(
                    'Sports',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: size.width * 0.072,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(height: size.height/75,),
              sports(),
              Divider(height: size.height/50, color: Colors.black, thickness: size.height/250),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('Images/mov.png',width: size.width/6,color: Colors.white,),
                  SizedBox(width: size.width/40,),
                  Text(
                    'Movies',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: size.width * 0.072,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(height: size.height/75,),
              movies(),
              Divider(height: size.height/50, color: Colors.black, thickness: size.height/250),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('Images/ser.png',width: size.width/7,color: Colors.white,),
                  SizedBox(width: size.width/40,),
                  Text(
                    'Series',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: size.width * 0.072,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(height: size.height/75,),
              sports(),
              Divider(height: size.height/50, color: Colors.black, thickness: size.height/250),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('Images/new.png',width: size.width/7,color: Colors.white,),
                  SizedBox(width: size.width/40,),
                  Text(
                    'News',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: size.width * 0.072,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(height: size.height/75,),
              sports(),
              Divider(height: size.height/50, color: Colors.black, thickness: size.height/250),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Image.asset('Images/dis.png',width: size.width/7,color: Colors.white,),
                  SizedBox(width: size.width/40,),
                  Text(
                    'Kids',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: size.width * 0.072,
                        fontWeight: FontWeight.w500),
                  ),

                ],
              ),
              SizedBox(height: size.height/75,),
              sports(),
              SizedBox(height: size.height/75,),
            ],),
          )


      ),
    );
  }
}


Future setPortrait() async => await SystemChrome.setPreferredOrientations([
  DeviceOrientation.portraitUp,
  DeviceOrientation.portraitDown,
]);

Future setLandscape() async => await SystemChrome.setPreferredOrientations([
  DeviceOrientation.landscapeLeft,
  DeviceOrientation.landscapeRight,
]);

Future setPortraitAndLandscape() =>
    SystemChrome.setPreferredOrientations(DeviceOrientation.values);