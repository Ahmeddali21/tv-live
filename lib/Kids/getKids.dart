
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tvlive/Kids/baraeem.dart';
import 'package:tvlive/Kids/beeinjeem.dart';
import 'package:tvlive/Kids/cnarabia.dart';
import 'package:tvlive/Kids/disney.dart';
import 'package:tvlive/Kids/majid.dart';
import 'package:tvlive/Kids/mbc3.dart';
import 'package:tvlive/Kids/nickelodeon.dart';
import 'package:tvlive/Kids/osnkids.dart';
import 'package:tvlive/Kids/rotanakids.dart';
import 'package:tvlive/Kids/spacetoon.dart';
import 'package:tvlive/Kids/toyoraljana.dart';
import 'package:tvlive/News/Iraq/alforat.dart';
import 'package:tvlive/News/Iraq/dijlah.dart';


List<String> kidsnames = [
  'Bein Baraeem',
  'CN Arabia',
  'Disney',
  'MBC3',
  'Majid',
  'Nickelodeon',
  'OSN Kids',
  'Rotana Kids',
  'Spacetoon',
  'Toyor AlJana',
];
final List<String> imageKids = [
  'Images/baraem.png',
  'Images/cn.png',
  'Images/disnep.png',
  'Images/mbc3.png',
  'Images/majid.png',
  'Images/nick.png',
  'Images/osnkids.png',
  'Images/rotana.png',
  'Images/space.png',
  'Images/jana.png',
];

Widget getKids(int page) {
  switch (page) {
    case 0:
      return baraeem();
    case 1:
      return cnarabia();
    case 2:
      return disney();
    case 3:
      return mbc3();
    case 4:
      return majid();
    case 5:
      return nickelodeon();
    case 6:
      return osnkids();
    case 7:
      return rotanakids();
    case 8:
      return spacetoon();
    case 9:
      return toyor();
    default:
      return baraeem();
  }
}
