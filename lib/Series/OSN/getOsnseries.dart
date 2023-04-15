import 'package:flutter/cupertino.dart';
import 'package:tvlive/Series/Bein%20Series/beinseries1.dart';
import 'package:tvlive/Series/Bein%20Series/beinseries2.dart';
import 'package:tvlive/Series/OSN/osnalfa1.dart';
import 'package:tvlive/Series/OSN/osnalfa2.dart';
import 'package:tvlive/Series/OSN/osnalfamusalslat.dart';
import 'package:tvlive/Series/OSN/osnalfasafwa.dart';
import 'package:tvlive/Series/OSN/osnalfayoum.dart';
import 'package:tvlive/Series/OSN/osnprime.dart';
import 'package:tvlive/Series/OSN/osnyahalla.dart';

import 'osnshowcase.dart';

List<String> osnseries = [
  'OSN Prime',
  'OSN Showcase',
  'OSN Alfa 1',
  'OSN Alfa 2',
  'OSN Alfa Musalsalat',
  'OSN Alfa Safwa',
  'OSN Alfa Youm',
  'OSN Yahlla Series',
];
Widget getOsnseries(int page) {
  switch (page) {
    case 0:
      return osnprime();
    case 1:
      return osnshowcase();
    case 2:
      return osnalfa1();
    case 3:
      return osnalfa2();
    case 4:
      return osnalfamusalslat();
    case 5:
      return osnalfasafwa();
    case 6:
      return osnalfayoum();
    case 7:
      return osnyahalla();
    default:
      return osnprime();
  }
}
