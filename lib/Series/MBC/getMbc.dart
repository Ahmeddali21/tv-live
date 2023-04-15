import 'package:flutter/cupertino.dart';
import 'package:tvlive/Series/Bein%20Series/beinseries1.dart';
import 'package:tvlive/Series/Bein%20Series/beinseries2.dart';
import 'package:tvlive/Series/MBC/mbbciraq.dart';
import 'package:tvlive/Series/MBC/mbc1.dart';
import 'package:tvlive/Series/MBC/mbc4.dart';
import 'package:tvlive/Series/MBC/mbcdrama.dart';
import 'package:tvlive/Series/MBC/mbcmasr.dart';
import 'package:tvlive/Series/MBC/mbcmasr2.dart';
import 'package:tvlive/Series/OSN/osnprime.dart';
import 'package:tvlive/Series/OSN/osnyahalla.dart';

import 'mbcdrama2.dart';

List<String> mbc = [
  'MBC 1',
  'MBC 4',
  'MBC Drama 1',
  'MBC Drama 2',
  'MBC Iraq',
  'MBC Masr 1',
  'MBC Masr 2',
];
Widget getMbc(int page) {
  switch (page) {
    case 0:
      return mbc1();
    case 1:
      return mbc4();
    case 2:
      return mbcdrama1();
    case 3:
      return mbcdrama2();
    case 4:
      return mbciraq();
    case 5:
      return mbcmasr1();
    case 6:
      return mbcmasr2();
    default:
      return mbc1();
  }
}
