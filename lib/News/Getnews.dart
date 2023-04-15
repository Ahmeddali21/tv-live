import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tvlive/Movies/Bein%20Movies/beinaction.dart';
import 'package:tvlive/Movies/OSN/osnaction.dart';
import 'package:tvlive/Movies/OSN/osncomedy.dart';
import 'package:tvlive/Movies/OSN/osnfamily.dart';
import 'package:tvlive/Movies/OSN/osnhollywood.dart';
import 'package:tvlive/Movies/OSN/osnpremiere.dart';
import 'package:tvlive/Movies/OSN/osnyahalaaflam.dart';
import 'package:tvlive/News/AlJazeera/aljazeera.dart';
import 'package:tvlive/News/AlJazeera/aljazeeradocs.dart';
import 'package:tvlive/News/AlJazeera/aljazeeralive.dart';
import 'package:tvlive/News/Alhadath%20+%20Alarabia/alarabia.dart';
import 'package:tvlive/News/Alhadath%20+%20Alarabia/alhadath.dart';
import 'package:tvlive/News/BBC%20+%20SKY%20+%20RT/bbc.dart';
import 'package:tvlive/News/BBC%20+%20SKY%20+%20RT/rtnews.dart';
import 'package:tvlive/News/BBC%20+%20SKY%20+%20RT/skynews.dart';
import 'package:tvlive/News/DW%20+%20CNBC%20+%20TRT/cnbc.dart';
import 'package:tvlive/News/DW%20+%20CNBC%20+%20TRT/dwarabia.dart';
import 'package:tvlive/News/DW%20+%20CNBC%20+%20TRT/trtarabic.dart';
import 'package:tvlive/News/Iraq/alforat.dart';
import 'package:tvlive/News/Iraq/alhurrairaq.dart';
import 'package:tvlive/News/Iraq/aliraqia.dart';
import 'package:tvlive/News/Iraq/alrafidain.dart';
import 'package:tvlive/News/Iraq/alrasheed.dart';
import 'package:tvlive/News/Iraq/alsharqyia.dart';
import 'package:tvlive/News/Iraq/alsharqyianews.dart';
import 'package:tvlive/News/Iraq/alsumaria.dart';
import 'package:tvlive/News/Iraq/dijlah.dart';
import 'package:tvlive/News/Iraq/honabaghdad.dart';
import 'package:tvlive/News/Iraq/imnnews.dart';
import 'package:tvlive/News/Iraq/utv.dart';

List<String> News = [
  'AlHadath',
  'AlArabia',
  'AlJazeera',
  'AlJazeera Docs',
  'AlJazeera Live',
  'BBC',
  'RT News',
  'DW',
  'CNBC',
  'TRT',
];
final List<String> imageNews = [
  'Images/had.png',
  'Images/arabia.png',
  'Images/aj.png',
  'Images/aj.png',
  'Images/aj.png',
  'Images/bbc.png',
  'Images/rt.png',
  'Images/dw.png',
  'Images/cnbc.png',
  'Images/trt.png',
];

Widget getNews(int page) {
  switch (page) {
    case 0:
      return alhadath();
    case 1:
      return alarabia();
    case 2:
      return aljazeera();
    case 3:
      return aljazeeradocs();
    case 4:
      return aljazeeralive();
    case 5:
      return bbc();
    case 6:
      return rt();
    case 7:
      return dw();
    case 8:
      return cnbc();
    case 9:
      return trt();
    default:
      return alhadath();
  }
}

List<String> iraqNews = [
  'AlHurra Iraq',
  'AlIraqia',
  'AlSharqiya',
  'AlSharqiya News',
  'AlRafidain',
  'AlRasheed',
  'AlSumaria',
  'Hona Baghdad',
  'UTV',
  'IMN News'
];
final List<String> imageIraq = [
  'Images/huraiq.png',
  'Images/ira.png',
  'Images/sha.png',
  'Images/shanews.png',
  'Images/raf.png',
  'Images/rash.png',
  'Images/sum.png',
  'Images/hona.png',
  'Images/utv.png',
  'Images/imn.png',
];

Widget getIraqnews(int page) {
  switch (page) {
    case 0:
      return alhurrairaq();
    case 1:
      return aliraqia();
    case 2:
      return alsharqiya();
    case 3:
      return alsharqiyanews();
    case 4:
      return alrafidain();
    case 5:
      return alrasheed();
    case 6:
      return alsumariya();
    case 7:
      return honabaghdad();
    case 8:
      return utv();
    case 9:
      return imnnews();
    default:
      return alhurrairaq();
  }
}

List<String> iraqNews2 = ['AlForat','Dijlah'];
final List<String> imageIraq2 = [
  'Images/forat.png',
  'Images/dij.png',
];

Widget getIraqnews2(int page) {
  switch (page) {
    case 0:
      return alforat();
    case 1:
      return dijlah();
    default:
      return alforat();
  }
}
