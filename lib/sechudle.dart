import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:tvlive/home.dart';
import 'package:tvlive/service.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import 'contact.dart';

class sechudle extends StatefulWidget {
  const sechudle({Key? key}) : super(key: key);
  @override
  _sechudleState createState() => _sechudleState();
}

class _sechudleState extends State<sechudle> {
  @override
  late Timer _timer;
  void initState() {
    SystemChrome.restoreSystemUIOverlays();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      load();
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      if (index == 0) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => home()));
      }
      if (index == 2) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => contact()));
      }
      _selectedIndex = index;
    });
  }

  List<dynamic> _name = [];
  List<dynamic> _league = [];
  List<dynamic> _date = [];
  List<dynamic> _time = [];
  List<double> _scorehome = [];
  List<double> _scoreaway = [];

  List<int> _inthome = [];
  List<int> _intaway = [];
  bool _loading = false;
  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return WillPopScope(onWillPop: () async {
      return false;
    }, child: OrientationBuilder(builder: (context, orientation) {
      orientation:
      DeviceOrientation.portraitUp;
      var time = DateFormat('HH:mm').format(now);
      return SafeArea(
          child: Scaffold(
              bottomNavigationBar: BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      CupertinoIcons.time,
                    ),
                    label: 'Sechudle',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      CupertinoIcons.phone,
                    ),
                    label: 'Contact',
                  ),
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: Colors.blue,
                onTap: _onItemTapped,
              ),
              appBar: AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: const Color.fromARGB(255, 243, 243, 247),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'Images/tv.png',
                      scale: 10,
                    ),
                    SizedBox(
                      width: size.width * 0.30,
                    ),
                    const Text(
                      'Schedule',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              body: Center(
                  child: _name.isNotEmpty
                      ? ListView.builder(
                          itemBuilder: (context, index) {
                            return Card(
                                color: Color.fromRGBO(41, 128, 185, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.network(
                                            'https://imagecache.365scores.com/image/upload/f_png,w_68,h_68,c_limit,q_auto:eco,dpr_2,d_Countries:Round:114.png/v3/Competitions/light/${_name[index]['competitionId']}',
                                            fit: BoxFit.cover,
                                            scale: 1.8,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            _name[index]
                                                ['competitionDisplayName'],
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: size.width * 0.05,
                                            ),
                                          ),
                                          Container(width: 5),
                                          if (_name[index]['roundNum'] != null)
                                            Text(
                                              'Round',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: size.width * 0.04,
                                              ),
                                            )
                                          else
                                            Text(''),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          if (_name[index]['roundNum'] != null)
                                            Text(
                                              '${_name[index]['roundNum']}',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: size.width * 0.04,
                                              ),
                                            )
                                          else
                                            Text(''),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: Column(
                                            children: [
                                              Image.network(
                                                'http://imagescache.scores-alt.com/image/upload/w_70,h_70,c_limit,f_webp,q_auto:eco,d_Competitors:default1.png/v2/Competitors/${_name[index]['homeCompetitor']['id']}',
                                                scale: 1.5,
                                              ),
                                              Text(
                                                '${_name[index]['homeCompetitor']['name']}',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: size.width * 0.06,
                                                ),
                                              ),
                                            ],
                                          )),
                                          Row(
                                            children: <Widget>[
                                              SizedBox(
                                                  height: size.height * 0.2),
                                              if (_name[index]['gameTime'] !=
                                                  -1)
                                                Text(
                                                  '${_inthome[index]}    -   ',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: size.width * 0.06,
                                                  ),
                                                )
                                              else
                                                Text(
                                                  '',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: size.width * 0.05,
                                                  ),
                                                ),
                                              SizedBox(
                                                  width: size.height * 0.006),
                                              if (_name[index]['gameTime'] !=
                                                  -1)
                                                Text(
                                                  '${_intaway[index]}',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: size.width * 0.06,
                                                  ),
                                                )
                                              else
                                                Text(
                                                  '',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: size.width * 0.05,
                                                  ),
                                                ),
                                            ],
                                          ),
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: <Widget>[
                                                Image.network(
                                                  'http://imagescache.scores-alt.com/image/upload/w_70,h_70,c_limit,f_webp,q_auto:eco,d_Competitors:default1.png/v2/Competitors/${_name[index]['awayCompetitor']['id']}',
                                                  scale: 1.5,
                                                ),
                                                Text(
                                                  '${_name[index]['awayCompetitor']['name']}',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: size.width * 0.06,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          if (_name[index]['gameTime'] != -1)
                                            Text(
                                              '${_name[index]['gameTimeDisplay']}',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: size.width * 0.05,
                                              ),
                                            )
                                          else
                                            Text(
                                              '${_date[index]}',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: size.width * 0.05,
                                              ),
                                            ),
                                          if (_name[index]['statusText'] ==
                                              'Final')
                                            Text(
                                              'Ended',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: size.width * 0.05,
                                              ),
                                            )
                                          else
                                            Text(
                                              '',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: size.width * 0.05,
                                              ),
                                            ),
                                        ],
                                      )
                                    ]));
                          },
                          itemCount: _name.length,
                        )
                      : Center(
                          child: LoadingAnimationWidget.staggeredDotsWave(
                            color: Colors.black,
                            size: size.height * 0.09,
                          ),
                        ))));
    }));
  }

  void load() async {
    setState(() {
      _loading = true;
    });
    var res = await http.get(Uri.parse(
        'https://webws.365scores.com/web/games/myscores/?appTypeId=5&langId=10&timezoneName=Asia/Baghdad&userCountryId=114&competitions=11,572,7,17,13,573,35,5421,25,5452,332,6822,8,9,5096,15,37,6196,472,595&competitors=131,132,105,5078,110,108,106,134,331,104,480,226,227,341,224,135,5050,5028,139,225,114,2372,234,5061,2378,11283,144,8248,5054,2379&startDate=$now&endDate=$now&withSuggested=true'));
    if (res.statusCode == 200) {
      var jsonData = jsonDecode(res.body);
      // print(jsonData);
      setState(() {
        _name = jsonData['games'];
        for (int i = 0; i < _name.length; i++) {
          String dateTimeString = _name[i]['startTime'];
          DateTime date = DateTime.parse(dateTimeString);
          String timeString = DateFormat('HH:mm').format(date.toLocal());
          _date.add(timeString);
          _scorehome.add(_name[i]['homeCompetitor']['score']);
          _scoreaway.add(_name[i]['awayCompetitor']['score']);
          List<int> myIntList =
              _scorehome.map((double value) => value.round()).toList();
          List<int> myIntList2 =
              _scoreaway.map((double value) => value.round()).toList();
          _inthome.add(myIntList[i]);
          _intaway.add(myIntList2[i]); // Output: [3, 3, 2]
        }
        _loading = false;
      });
    }
  }
}
