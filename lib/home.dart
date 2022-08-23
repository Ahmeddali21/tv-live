import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:tvlive/device_type/info_widget.dart';
import 'package:tvlive/vlc.dart';
import 'package:fullscreen/fullscreen.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';

import 'device_type/info_widget.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) =>
      OrientationBuilder(builder: (context, orientation) {
        var mediaQueryData = MediaQuery.of(context);
        double screenHeight = MediaQuery.of(context).size.height;
        double screenWidth = MediaQuery.of(context).size.width;
        return MaterialApp(
            home: MediaQuery.of(context).orientation == Orientation.portrait
                ? Scaffold(
                    backgroundColor: Color(0xff57f6c0),
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
                                  width: screenWidth / 35,
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
                    body: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 75,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.8),
                                    //color of shadow
                                    spreadRadius: 3,
                                    //spread radius
                                    blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                  ),
                                ],
                                color: Colors.white,
                              ),
                              width: MediaQuery.of(context).size.width * 5,
                              height: MediaQuery.of(context).size.height / 8,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Center(
                                      child: Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      'Sports',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                40,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Aboreto',
                                      ),
                                    ),
                                  )),
                                  Container(
                                      margin:
                                          EdgeInsets.all(screenHeight / 120),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    Navigator.pushReplacement(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              vlc()),
                                                    );
                                                    enterFullScreen(
                                                        FullScreenMode
                                                            .EMERSIVE_STICKY);
                                                    if(MediaQuery.of(context).orientation == Orientation.portrait){
                                                      setLandscape();
                                                    }
                                                    else{
                                                      setPortrait();
                                                      exitFullScreen();
                                                    }
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Container(
                                      margin:
                                          EdgeInsets.all(screenHeight / 120),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                    // final isPortrait =
                                                    //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                    //
                                                    // if (isPortrait) {
                                                    //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                    //   setLandscape();
                                                    //
                                                    // } else {
                                                    //   exitFullScreen();
                                                    //   setPortrait();
                                                    // }
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Container(
                                      margin:
                                          EdgeInsets.all(screenHeight / 120),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                    // final isPortrait =
                                                    //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                    //
                                                    // if (isPortrait) {
                                                    //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                    //   setLandscape();
                                                    //
                                                    // } else {
                                                    //   exitFullScreen();
                                                    //   setPortrait();
                                                    // }
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Container(
                                      margin:
                                          EdgeInsets.all(screenHeight / 120),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                    // final isPortrait =
                                                    //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                    //
                                                    // if (isPortrait) {
                                                    //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                    //   setLandscape();
                                                    //
                                                    // } else {
                                                    //   exitFullScreen();
                                                    //   setPortrait();
                                                    // }
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Container(
                                      margin:
                                          EdgeInsets.all(screenHeight / 120),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                    // final isPortrait =
                                                    //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                    //
                                                    // if (isPortrait) {
                                                    //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                    //   setLandscape();
                                                    //
                                                    // } else {
                                                    //   exitFullScreen();
                                                    //   setPortrait();
                                                    // }
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                ],
                              )),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 75,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.8),
                                    //color of shadow
                                    spreadRadius: 3,
                                    //spread radius
                                    blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                  ),
                                ],
                                color: Colors.white,
                              ),
                              width: MediaQuery.of(context).size.width * 5,
                              height: MediaQuery.of(context).size.height / 8,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Center(
                                      child: Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      'Sports',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                40,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Aboreto',
                                      ),
                                    ),
                                  )),
                                  Container(
                                      margin:
                                          EdgeInsets.all(screenHeight / 120),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    Navigator.pushReplacement(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              vlc()),
                                                    );
                                                    enterFullScreen(
                                                        FullScreenMode
                                                            .EMERSIVE_STICKY);
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Container(
                                      margin:
                                          EdgeInsets.all(screenHeight / 120),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                    // final isPortrait =
                                                    //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                    //
                                                    // if (isPortrait) {
                                                    //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                    //   setLandscape();
                                                    //
                                                    // } else {
                                                    //   exitFullScreen();
                                                    //   setPortrait();
                                                    // }
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Container(
                                      margin:
                                          EdgeInsets.all(screenHeight / 120),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                    // final isPortrait =
                                                    //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                    //
                                                    // if (isPortrait) {
                                                    //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                    //   setLandscape();
                                                    //
                                                    // } else {
                                                    //   exitFullScreen();
                                                    //   setPortrait();
                                                    // }
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Container(
                                      margin:
                                          EdgeInsets.all(screenHeight / 120),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                    // final isPortrait =
                                                    //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                    //
                                                    // if (isPortrait) {
                                                    //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                    //   setLandscape();
                                                    //
                                                    // } else {
                                                    //   exitFullScreen();
                                                    //   setPortrait();
                                                    // }
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Container(
                                      margin:
                                          EdgeInsets.all(screenHeight / 120),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                    // final isPortrait =
                                                    //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                    //
                                                    // if (isPortrait) {
                                                    //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                    //   setLandscape();
                                                    //
                                                    // } else {
                                                    //   exitFullScreen();
                                                    //   setPortrait();
                                                    // }
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                ],
                              )),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 75,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.8),
                                    //color of shadow
                                    spreadRadius: 3,
                                    //spread radius
                                    blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                  ),
                                ],
                                color: Colors.white,
                              ),
                              width: MediaQuery.of(context).size.width * 5,
                              height: MediaQuery.of(context).size.height / 8,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Center(
                                      child: Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      'Sports',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                40,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Aboreto',
                                      ),
                                    ),
                                  )),
                                  Container(
                                      margin:
                                          EdgeInsets.all(screenHeight / 120),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    Navigator.pushReplacement(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              vlc()),
                                                    );
                                                    enterFullScreen(
                                                        FullScreenMode
                                                            .EMERSIVE_STICKY);
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Container(
                                      margin:
                                          EdgeInsets.all(screenHeight / 120),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                    // final isPortrait =
                                                    //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                    //
                                                    // if (isPortrait) {
                                                    //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                    //   setLandscape();
                                                    //
                                                    // } else {
                                                    //   exitFullScreen();
                                                    //   setPortrait();
                                                    // }
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Container(
                                      margin:
                                          EdgeInsets.all(screenHeight / 120),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                    // final isPortrait =
                                                    //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                    //
                                                    // if (isPortrait) {
                                                    //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                    //   setLandscape();
                                                    //
                                                    // } else {
                                                    //   exitFullScreen();
                                                    //   setPortrait();
                                                    // }
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Container(
                                      margin:
                                          EdgeInsets.all(screenHeight / 120),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                    // final isPortrait =
                                                    //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                    //
                                                    // if (isPortrait) {
                                                    //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                    //   setLandscape();
                                                    //
                                                    // } else {
                                                    //   exitFullScreen();
                                                    //   setPortrait();
                                                    // }
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Container(
                                      margin:
                                          EdgeInsets.all(screenHeight / 120),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                    // final isPortrait =
                                                    //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                    //
                                                    // if (isPortrait) {
                                                    //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                    //   setLandscape();
                                                    //
                                                    // } else {
                                                    //   exitFullScreen();
                                                    //   setPortrait();
                                                    // }
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                ],
                              )),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 75,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.8),
                                    //color of shadow
                                    spreadRadius: 3,
                                    //spread radius
                                    blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                  ),
                                ],
                                color: Colors.white,
                              ),
                              width: MediaQuery.of(context).size.width * 5,
                              height: MediaQuery.of(context).size.height / 8,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Center(
                                      child: Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      'Sports',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                40,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Aboreto',
                                      ),
                                    ),
                                  )),
                                  Container(
                                      margin:
                                          EdgeInsets.all(screenHeight / 120),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    Navigator.pushReplacement(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              vlc()),
                                                    );
                                                    enterFullScreen(
                                                        FullScreenMode
                                                            .EMERSIVE_STICKY);
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Container(
                                      margin:
                                          EdgeInsets.all(screenHeight / 120),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                    // final isPortrait =
                                                    //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                    //
                                                    // if (isPortrait) {
                                                    //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                    //   setLandscape();
                                                    //
                                                    // } else {
                                                    //   exitFullScreen();
                                                    //   setPortrait();
                                                    // }
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Container(
                                      margin:
                                          EdgeInsets.all(screenHeight / 120),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                    // final isPortrait =
                                                    //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                    //
                                                    // if (isPortrait) {
                                                    //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                    //   setLandscape();
                                                    //
                                                    // } else {
                                                    //   exitFullScreen();
                                                    //   setPortrait();
                                                    // }
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Container(
                                      margin:
                                          EdgeInsets.all(screenHeight / 120),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                    // final isPortrait =
                                                    //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                    //
                                                    // if (isPortrait) {
                                                    //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                    //   setLandscape();
                                                    //
                                                    // } else {
                                                    //   exitFullScreen();
                                                    //   setPortrait();
                                                    // }
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Container(
                                      margin:
                                          EdgeInsets.all(screenHeight / 120),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                    // final isPortrait =
                                                    //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                    //
                                                    // if (isPortrait) {
                                                    //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                    //   setLandscape();
                                                    //
                                                    // } else {
                                                    //   exitFullScreen();
                                                    //   setPortrait();
                                                    // }
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                ],
                              )),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 75,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.8),
                                    //color of shadow
                                    spreadRadius: 3,
                                    //spread radius
                                    blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                  ),
                                ],
                                color: Colors.white,
                              ),
                              width: MediaQuery.of(context).size.width * 5,
                              height: MediaQuery.of(context).size.height / 8,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Center(
                                      child: Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      'Sports',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                40,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Aboreto',
                                      ),
                                    ),
                                  )),
                                  Container(
                                      margin:
                                          EdgeInsets.all(screenHeight / 120),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    Navigator.pushReplacement(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              vlc()),
                                                    );
                                                    enterFullScreen(
                                                        FullScreenMode
                                                            .EMERSIVE_STICKY);
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Container(
                                      margin:
                                          EdgeInsets.all(screenHeight / 120),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                    // final isPortrait =
                                                    //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                    //
                                                    // if (isPortrait) {
                                                    //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                    //   setLandscape();
                                                    //
                                                    // } else {
                                                    //   exitFullScreen();
                                                    //   setPortrait();
                                                    // }
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Container(
                                      margin:
                                          EdgeInsets.all(screenHeight / 120),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                    // final isPortrait =
                                                    //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                    //
                                                    // if (isPortrait) {
                                                    //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                    //   setLandscape();
                                                    //
                                                    // } else {
                                                    //   exitFullScreen();
                                                    //   setPortrait();
                                                    // }
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Container(
                                      margin:
                                          EdgeInsets.all(screenHeight / 120),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                    // final isPortrait =
                                                    //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                    //
                                                    // if (isPortrait) {
                                                    //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                    //   setLandscape();
                                                    //
                                                    // } else {
                                                    //   exitFullScreen();
                                                    //   setPortrait();
                                                    // }
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Container(
                                      margin:
                                          EdgeInsets.all(screenHeight / 120),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                    // final isPortrait =
                                                    //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                    //
                                                    // if (isPortrait) {
                                                    //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                    //   setLandscape();
                                                    //
                                                    // } else {
                                                    //   exitFullScreen();
                                                    //   setPortrait();
                                                    // }
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                ],
                              )),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 75,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.8),
                                    //color of shadow
                                    spreadRadius: 3,
                                    //spread radius
                                    blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                  ),
                                ],
                                color: Colors.white,
                              ),
                              width: MediaQuery.of(context).size.width * 5,
                              height: MediaQuery.of(context).size.height / 8,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Center(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Text(
                                          'Sports',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize:
                                            MediaQuery.of(context).size.height /
                                                40,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Aboreto',
                                          ),
                                        ),
                                      )),
                                  Container(
                                      margin:
                                      EdgeInsets.all(screenHeight / 120),
                                      height:
                                      MediaQuery.of(context).size.height /
                                          180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                .size
                                                .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                            Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                .size
                                                .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    Navigator.pushReplacement(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              vlc()),
                                                    );
                                                    enterFullScreen(
                                                        FullScreenMode
                                                            .EMERSIVE_STICKY);
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Container(
                                      margin:
                                      EdgeInsets.all(screenHeight / 120),
                                      height:
                                      MediaQuery.of(context).size.height /
                                          180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                .size
                                                .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                            Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                .size
                                                .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                    // final isPortrait =
                                                    //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                    //
                                                    // if (isPortrait) {
                                                    //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                    //   setLandscape();
                                                    //
                                                    // } else {
                                                    //   exitFullScreen();
                                                    //   setPortrait();
                                                    // }
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Container(
                                      margin:
                                      EdgeInsets.all(screenHeight / 120),
                                      height:
                                      MediaQuery.of(context).size.height /
                                          180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                .size
                                                .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                            Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                .size
                                                .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                    // final isPortrait =
                                                    //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                    //
                                                    // if (isPortrait) {
                                                    //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                    //   setLandscape();
                                                    //
                                                    // } else {
                                                    //   exitFullScreen();
                                                    //   setPortrait();
                                                    // }
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Container(
                                      margin:
                                      EdgeInsets.all(screenHeight / 120),
                                      height:
                                      MediaQuery.of(context).size.height /
                                          180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                .size
                                                .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                            Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                .size
                                                .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                    // final isPortrait =
                                                    //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                    //
                                                    // if (isPortrait) {
                                                    //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                    //   setLandscape();
                                                    //
                                                    // } else {
                                                    //   exitFullScreen();
                                                    //   setPortrait();
                                                    // }
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Container(
                                      margin:
                                      EdgeInsets.all(screenHeight / 120),
                                      height:
                                      MediaQuery.of(context).size.height /
                                          180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                .size
                                                .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                            Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                .size
                                                .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                    // final isPortrait =
                                                    //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                    //
                                                    // if (isPortrait) {
                                                    //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                    //   setLandscape();
                                                    //
                                                    // } else {
                                                    //   exitFullScreen();
                                                    //   setPortrait();
                                                    // }
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                ],
                              )),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 75,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.8),
                                    //color of shadow
                                    spreadRadius: 3,
                                    //spread radius
                                    blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                  ),
                                ],
                                color: Colors.white,
                              ),
                              width: MediaQuery.of(context).size.width * 5,
                              height: MediaQuery.of(context).size.height / 8,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Center(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Text(
                                          'Sports',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize:
                                            MediaQuery.of(context).size.height /
                                                40,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Aboreto',
                                          ),
                                        ),
                                      )),
                                  Container(
                                      margin:
                                      EdgeInsets.all(screenHeight / 120),
                                      height:
                                      MediaQuery.of(context).size.height /
                                          180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                .size
                                                .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                            Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                .size
                                                .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    Navigator.pushReplacement(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              vlc()),
                                                    );
                                                    enterFullScreen(
                                                        FullScreenMode
                                                            .EMERSIVE_STICKY);
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Container(
                                      margin:
                                      EdgeInsets.all(screenHeight / 120),
                                      height:
                                      MediaQuery.of(context).size.height /
                                          180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                .size
                                                .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                            Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                .size
                                                .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                    // final isPortrait =
                                                    //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                    //
                                                    // if (isPortrait) {
                                                    //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                    //   setLandscape();
                                                    //
                                                    // } else {
                                                    //   exitFullScreen();
                                                    //   setPortrait();
                                                    // }
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Container(
                                      margin:
                                      EdgeInsets.all(screenHeight / 120),
                                      height:
                                      MediaQuery.of(context).size.height /
                                          180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                .size
                                                .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                            Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                .size
                                                .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                    // final isPortrait =
                                                    //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                    //
                                                    // if (isPortrait) {
                                                    //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                    //   setLandscape();
                                                    //
                                                    // } else {
                                                    //   exitFullScreen();
                                                    //   setPortrait();
                                                    // }
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Container(
                                      margin:
                                      EdgeInsets.all(screenHeight / 120),
                                      height:
                                      MediaQuery.of(context).size.height /
                                          180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                .size
                                                .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                            Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                .size
                                                .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                    // final isPortrait =
                                                    //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                    //
                                                    // if (isPortrait) {
                                                    //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                    //   setLandscape();
                                                    //
                                                    // } else {
                                                    //   exitFullScreen();
                                                    //   setPortrait();
                                                    // }
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Container(
                                      margin:
                                      EdgeInsets.all(screenHeight / 120),
                                      height:
                                      MediaQuery.of(context).size.height /
                                          180,
                                      width: MediaQuery.of(context).size.width /
                                          2.75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MediaQuery.of(context).size.width /
                                                20),
                                        color: const Color(0xff57f6c0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'Images/be.png',
                                            ),
                                            alignment: Alignment.centerRight,
                                            scale: MediaQuery.of(context)
                                                .size
                                                .width /
                                                88),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                            Colors.black.withOpacity(0.5),
                                            //color of shadow
                                            spreadRadius: 3,
                                            //spread radius
                                            blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                .size
                                                .height /
                                                200,
                                          ),
                                          Text(
                                            'Bein Sport Premium 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                    65,
                                                fontFamily: 'Aboreto',
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                    // final isPortrait =
                                                    //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                    //
                                                    // if (isPortrait) {
                                                    //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                    //   setLandscape();
                                                    //
                                                    // } else {
                                                    //   exitFullScreen();
                                                    //   setPortrait();
                                                    // }
                                                  },
                                                  icon: Icon(
                                                    Icons.play_circle_outline,
                                                    size: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                        9,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                ],
                              )),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 75,
                          ),
              GestureDetector(
                  onTap: (){
                    print("Container clicked");
                  },
                  child: new Container(
                    width: 500.0,
                    padding: new EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
                    color: Colors.green,
                    child: new Column(
                        children: [
                          new Text("Ableitungen"),
                        ]
                    ),
                  )
              ),
                        ],
                      ),
                    ),
                  )
                : Scaffold(
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
                                      MediaQuery.of(context).size.height / 8.5,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.height / 32,
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
                    body: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.8),
//color of shadow
                              spreadRadius: 3,
//spread radius
                              blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                            ),
                          ],
                          color: Color(0xff57f6c0),
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InfoWidget(
                                builder: (context, deviceInfo) {
                                  return SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height / 38,
                                  );
                                },
                              ),
                              InfoWidget(
                                builder: (context, deviceInfo) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.8),
                                          //color of shadow
                                          spreadRadius: 3,
                                          //spread radius
                                          blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                        ),
                                      ],
                                      color: Colors.white,
                                    ),
                                    width: MediaQuery.of(context).size.width,
                                    height:
                                        MediaQuery.of(context).size.height / 3,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Center(
                                            child: Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  85),
                                          child: Text(
                                            'Sports',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  20,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Aboreto',
                                            ),
                                          ),
                                        )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          Navigator.pushReplacement(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    vlc()),
                                                          );
                                                          enterFullScreen(
                                                              FullScreenMode
                                                                  .EMERSIVE_STICKY);
                                                            setLandscape();
          },

                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                      ],
                                    ),
                                  );
                                },
                              ),
                              InfoWidget(
                                builder: (context, deviceInfo) {
                                  return SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height / 38,
                                  );
                                },
                              ),
                              InfoWidget(
                                builder: (context, deviceInfo) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.8),
                                          //color of shadow
                                          spreadRadius: 3,
                                          //spread radius
                                          blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                        ),
                                      ],
                                      color: Colors.white,
                                    ),
                                    width: MediaQuery.of(context).size.width,
                                    height:
                                        MediaQuery.of(context).size.height / 3,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Center(
                                            child: Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  85),
                                          child: Text(
                                            'Sports',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  20,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Aboreto',
                                            ),
                                          ),
                                        )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                      ],
                                    ),
                                  );
                                },
                              ),
                              InfoWidget(
                                builder: (context, deviceInfo) {
                                  return SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height / 38,
                                  );
                                },
                              ),
                              InfoWidget(
                                builder: (context, deviceInfo) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.8),
                                          //color of shadow
                                          spreadRadius: 3,
                                          //spread radius
                                          blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                        ),
                                      ],
                                      color: Colors.white,
                                    ),
                                    width: MediaQuery.of(context).size.width,
                                    height:
                                        MediaQuery.of(context).size.height / 3,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Center(
                                            child: Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  85),
                                          child: Text(
                                            'Sports',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  20,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Aboreto',
                                            ),
                                          ),
                                        )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                      ],
                                    ),
                                  );
                                },
                              ),
                              InfoWidget(
                                builder: (context, deviceInfo) {
                                  return SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height / 38,
                                  );
                                },
                              ),
                              InfoWidget(
                                builder: (context, deviceInfo) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.8),
                                          //color of shadow
                                          spreadRadius: 3,
                                          //spread radius
                                          blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                        ),
                                      ],
                                      color: Colors.white,
                                    ),
                                    width: MediaQuery.of(context).size.width,
                                    height:
                                        MediaQuery.of(context).size.height / 3,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Center(
                                            child: Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  85),
                                          child: Text(
                                            'Sports',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  20,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Aboreto',
                                            ),
                                          ),
                                        )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                      ],
                                    ),
                                  );
                                },
                              ),
                              InfoWidget(
                                builder: (context, deviceInfo) {
                                  return SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height / 38,
                                  );
                                },
                              ),
                              InfoWidget(
                                builder: (context, deviceInfo) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.8),
                                          //color of shadow
                                          spreadRadius: 3,
                                          //spread radius
                                          blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                        ),
                                      ],
                                      color: Colors.white,
                                    ),
                                    width: MediaQuery.of(context).size.width,
                                    height:
                                        MediaQuery.of(context).size.height / 3,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Center(
                                            child: Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  85),
                                          child: Text(
                                            'Sports',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  20,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Aboreto',
                                            ),
                                          ),
                                        )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                      ],
                                    ),
                                  );
                                },
                              ),
                              InfoWidget(
                                builder: (context, deviceInfo) {
                                  return SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height / 38,
                                  );
                                },
                              ),
                              InfoWidget(
                                builder: (context, deviceInfo) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.8),
                                          //color of shadow
                                          spreadRadius: 3,
                                          //spread radius
                                          blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                        ),
                                      ],
                                      color: Colors.white,
                                    ),
                                    width: MediaQuery.of(context).size.width,
                                    height:
                                        MediaQuery.of(context).size.height / 3,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Center(
                                            child: Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  85),
                                          child: Text(
                                            'Sports',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  20,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Aboreto',
                                            ),
                                          ),
                                        )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              85,
                                        ),
                                        Container(
                                            margin: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    150),
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          35),
                                              color: const Color(0xff57f6c0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    'Images/be.png',
                                                  ),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  scale: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      300),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  //color of shadow
                                                  spreadRadius: 3,
                                                  //spread radius
                                                  blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      120,
                                                ),
                                                Text(
                                                  'Bein Sport Premium 1',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              20,
                                                      fontFamily: 'Aboreto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bein1()),);
                                                          // final isPortrait =
                                                          //     MediaQuery.of(context).orientation == Orientation.portrait;
                                                          //
                                                          // if (isPortrait) {
                                                          //   enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
                                                          //   setLandscape();
                                                          //
                                                          // } else {
                                                          //   exitFullScreen();
                                                          //   setPortrait();
                                                          // }
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .play_circle_outline,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              18.4,
                                                          color: Colors.black,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            )),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        )),
                  ));
      });
}

void enterFullScreen(FullScreenMode fullScreenMode) async {
  await FullScreen.enterFullScreen(fullScreenMode);
}

void exitFullScreen() async {
  await FullScreen.exitFullScreen();
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
