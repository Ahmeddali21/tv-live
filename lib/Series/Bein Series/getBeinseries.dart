import 'package:flutter/cupertino.dart';
import 'package:tvlive/Series/Bein%20Series/beinseries1.dart';
import 'package:tvlive/Series/Bein%20Series/beinseries2.dart';

import 'beinseriesdrama.dart';

List<String> beinseries = [
  'Bein Series 1',
  'Bein Series 2',
  'Bein Series\nDrama'
];
Widget getBeinseries(int page) {
  switch (page) {
    case 0:
      return beinseries1();
    case 1:
      return beinseries2();
    case 2:
      return beinseriesdrama();
    default:
      return beinseries1();
  }
}
