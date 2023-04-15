import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tvlive/News/news.dart';
import 'package:tvlive/Series/series.dart';
import 'package:tvlive/Sports/sports.dart';
import 'Kids/kids.dart';
import 'Movies/movies.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
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
    var size = MediaQuery.of(context).size;
    return OrientationBuilder(builder: (context, orientation) {
      orientation: DeviceOrientation.portraitUp;
      return SafeArea(
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: Color.fromARGB(255, 243, 243, 247),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'Images/tv.png',
                          scale: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              backgroundColor: const Color(0xff2980b9),
              body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height / 75,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'Images/sp.png',
                          width: size.width / 7.5,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: size.width / 40,
                        ),
                        Text(
                          'Sports',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width * 0.072,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height / 75,
                    ),
                    const sports(),
                    Divider(
                        height: size.height / 50,
                        color: Colors.black,
                        thickness: size.height / 250),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'Images/mov.png',
                          width: size.width / 6,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: size.width / 40,
                        ),
                        Text(
                          'Movies',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width * 0.072,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height / 75,
                    ),
                    movies(),
                    Divider(
                        height: size.height / 50,
                        color: Colors.black,
                        thickness: size.height / 250),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'Images/ser.png',
                          width: size.width / 7,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: size.width / 40,
                        ),
                        Text(
                          'Series',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width * 0.072,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height / 75,
                    ),
                    series(),
                    Divider(
                        height: size.height / 50,
                        color: Colors.black,
                        thickness: size.height / 250),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'Images/new.png',
                          width: size.width / 7,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: size.width / 40,
                        ),
                        Text(
                          'News',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width * 0.072,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height / 75,
                    ),
                    news(),
                    Divider(
                        height: size.height / 50,
                        color: Colors.black,
                        thickness: size.height / 250),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'Images/dis.png',
                          width: size.width / 7,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: size.width / 40,
                        ),
                        Text(
                          'Kids',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width * 0.072,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height / 75,
                    ),
                    kids(),
                    SizedBox(
                      height: size.height / 75,
                    ),
                  ],
                ),
              )));
    });
  }
}
