import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tvlive/sechudle.dart';
import 'package:tvlive/splash.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'firebase_option.dart';
import 'noti.dart';

  	Future<void> backgroundHandler(RemoteMessage message) async {
  	print(message.data.toString());
 	print(message.notification!.title);
	}
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp();
FirebaseMessaging.onBackgroundMessage(backgroundHandler);
LocalNotificationService.initialize();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: sechudle(),
    ),
  );
}
