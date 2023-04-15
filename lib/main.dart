import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tvlive/Series/series.dart';
import 'package:tvlive/aa.dart';
import 'package:tvlive/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tvlive/sechudle.dart';
import 'package:tvlive/splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: splash()),
  );
}
