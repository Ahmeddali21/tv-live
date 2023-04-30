import 'dart:async';
import 'dart:convert';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tvlive/News/news.dart';
import 'package:tvlive/Series/series.dart';
import 'package:tvlive/Sports/sports.dart';
import 'package:tvlive/contact.dart';
import 'package:tvlive/sechudle.dart';
import 'package:tvlive/service.dart';
import 'package:tvlive/splash.dart';
import 'Kids/kids.dart';
import 'Movies/movies.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:http/http.dart' as http;

import 'noti.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print('A message showed up :  ${message.messageId}');
}

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    
    FirebaseMessaging.instance.getInitialMessage().then(
      (message) {
        print("FirebaseMessaging.instance.getInitialMessage");
        if (message != null) {
          print("New Notification");
          // if (message.data['_id'] != null) {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (context) => DemoScreen(
          //         id: message.data['_id'],
          //       ),
          //     ),
          //   );
          // }
        }
      },
    );
    FirebaseMessaging.onMessage.listen(
      (message) {
        print("FirebaseMessaging.onMessage.listen");
        if (message.notification != null) {
          print(message.notification!.title);
          print(message.notification!.body);
          print("message.data11 ${message.data}");
           LocalNotificationService.createanddisplaynotification(message);

        }
      },
    );
        FirebaseMessaging.onMessageOpenedApp.listen(
      (message) {
        print("FirebaseMessaging.onMessageOpenedApp.listen");
        if (message.notification != null) {
          print(message.notification!.title);
          print(message.notification!.body);
          print("message.data22 ${message.data['_id']}");
        }
      },
    );
    	  Future<void> getDeviceTokenToSendNotification() async {
    		final FirebaseMessaging _fcm = FirebaseMessaging.instance;
    		final token = await _fcm.getToken();
    		var deviceTokenToSendPushNotification = token.toString();
    		print("Token Value $deviceTokenToSendPushNotification");
  	}
  }

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      if (index == 1) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => sechudle()));
      }
      if (index == 2) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => contact()));
      }
      _selectedIndex = index;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  DateTime now = DateTime.now();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return OrientationBuilder(builder: (context, orientation) {
      orientation:
      DeviceOrientation.portraitUp;
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
                      'Home',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
              backgroundColor: Color.fromRGBO(41, 128, 185, 1),
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
                    const movies(),
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
                    const series(),
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
                    const news(),
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
                    const kids(),
                    SizedBox(
                      height: size.height / 75,
                    ),
                  ],
                ),
              )));
    });
  }
}
