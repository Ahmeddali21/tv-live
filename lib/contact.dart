import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tvlive/home.dart';
import 'package:tvlive/sechudle.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class contact extends StatefulWidget {
  const contact({Key? key}) : super(key: key);
  @override
  _contactState createState() => _contactState();
}

bool _hasCallSupport = false;
Future<void>? _launched;
String _phone = '+9647832426887';
final TextEditingController _textController = TextEditingController();
final TextEditingController _textController2 = TextEditingController();

class _contactState extends State<contact> {
  @override
  void initState() {
    SystemChrome.restoreSystemUIOverlays();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _textController.dispose();
    _textController2.dispose();
  }

  final collectionReference =
      FirebaseFirestore.instance.collection('myCollection');

  Future<void> _launchEmail() async {
    String? encodeQueryParameters(Map<String, String> params) {
      return params.entries
          .map((MapEntry<String, String> e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
          .join('&');
    }

    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'eng.21ahmedali@gmail.com',
      query: encodeQueryParameters(<String, String>{
        'subject': 'Example Subject & Symbols are allowed!',
      }),
    );

    launchUrl(emailLaunchUri);
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  _launchFacebook() async {
    final url = 'https://www.facebook.com/ahmed16ali';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Dont found Facebook');
    }
  }

  _launchTelegram() async {
    final url =
        'https://t.me/a2h2m'; // Replace with your Telegram channel or user ID
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Dont found Telegram');
    }
  }

  _launchInsta() async {
    final url = 'https://www.instagram.com/e_ahmed_g';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Dont found Insta');
    }
  }

  void _submitData() {
    final String text = _textController.text;
    final String text2 = _textController2.text;
    // Create a reference to the "my_collection" collection
    CollectionReference documentRef =
        FirebaseFirestore.instance.collection('Feedback');
    // Set the document data with the retrieved text
    documentRef
        .add({'feed': text, 'user': text2})
        .then((value) => print("Data added successfully"))
        .catchError((error) => print("Failed to add data: $error"));
    // Clear the text field
    _textController.clear();
    _textController2.clear();
  }

  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      if (index == 0) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const home()));
      } else if (index == 1) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const sechudle()));
      }
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return WillPopScope(onWillPop: () async {
      return false;
    }, child: OrientationBuilder(builder: (context, orientation) {
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
                    label: 'contact',
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
                      'Contact',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Center(
                    child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 10,
                    ),
                    for (int i = 0; i <= 4; i++)
                      Card(
                        color: const Color(0xff2980b9),
                        child: ListTile(
                            title: i == 0
                                ? TextButton(
                                    onPressed: () async {
                                      _launchEmail();
                                    },
                                    child: Text(
                                      'Email',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: size.width * 0.072,
                                          fontWeight: FontWeight.w400),
                                    ))
                                : i == 1
                                    ? TextButton(
                                        onPressed: () async {
                                          _makePhoneCall(_phone);
                                        },
                                        child: Text(
                                          'Phone',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: size.width * 0.072,
                                              fontWeight: FontWeight.w400),
                                        ))
                                    : i == 2
                                        ? TextButton(
                                            onPressed: () async {
                                              _launchInsta();
                                            },
                                            child: Text(
                                              'Instagram',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: size.width * 0.072,
                                                  fontWeight: FontWeight.w400),
                                            ))
                                        : i == 3
                                            ? TextButton(
                                                onPressed: () async {
                                                  _launchFacebook();
                                                },
                                                child: Text(
                                                  'Facebook',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          size.width * 0.072,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ))
                                            : TextButton(
                                                onPressed: () async {
                                                  _launchTelegram();
                                                },
                                                child: Text(
                                                  'Telegram',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize:
                                                          size.width * 0.072,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              )),
                      ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Please Enter Your Feedback below',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: size.width * 0.042,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        color: const Color.fromRGBO(41, 128, 185, 1),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: TextField(
                            textAlign: TextAlign.start,
                            autocorrect: true,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            style: TextStyle(fontSize: size.height * 0.02),
                            controller: _textController,
                            decoration: InputDecoration(
                              hintText: 'Enter some text',
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: size.height * 0.07),
                            ),
                          ),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      color: const Color.fromRGBO(41, 128, 185, 1),
                      child: TextField(
                        controller: _textController2,
                        style: TextStyle(fontSize: size.height * 0.02),
                        decoration: InputDecoration(
                          hintText:
                              'Enter Your Email or Phone Number if you wnat',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: size.height * 0.03),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: size.width * 0.5,
                      height: size.height * 0.05,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _submitData();
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return const AlertDialog(
                                    title: Text('Feedback'),
                                    content: Text('Thanks '),
                                  );
                                });
                            const duration = Duration(seconds: 2);
                            Timer(duration, () {
                              Navigator.of(context).pop();
                            });
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromRGBO(41, 128, 185, 1),
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Submit',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: size.width * 0.072,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    )
                  ],
                )),
              )));
    }));
  }
}
