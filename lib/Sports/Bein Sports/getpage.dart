import 'package:flutter/material.dart';
import 'package:tvlive/Sports/Bein%20Sports/beinsportspremium1.dart';
import 'package:tvlive/Sports/Bein%20Sports/beinsportspremium2.dart';
import 'package:tvlive/Sports/Bein%20Sports/beinsportspremium3.dart';
import 'package:tvlive/Sports/Bein%20Sports/beinsportsxtra1.dart';
import 'package:tvlive/Sports/Bein%20Sports/beinsportsxtra2.dart';

import 'beinsport1.dart';
import 'beinsport2.dart';
import 'beinsport3.dart';
import 'beinsport4.dart';
import 'beinsport5.dart';
import 'beinsport6.dart';
import 'beinsport7.dart';

Widget getBeinsports(int page) {
  switch (page) {
    case 1:
      return beinsport1();
    case 2:
      return beinsport2();
    case 3:
      return beinsport3();
    case 4:
      return beinsport4();
    case 5:
      return beinsport5();
    case 6:
      return beinsport6();
    case 7:
      return beinsport7();
    default:
      return beinsport1();
  }
}
Widget getBeinsportspremium(int page) {
  switch (page) {
    case 1:
      return beinsportpremium1();
    case 2:
      return beinsportpremium2();
    case 3:
      return beinsportpremium3();
    default:
      return beinsportpremium1();
  }
}
Widget getBeinsportsxtra(int page) {
  switch (page) {
    case 1:
      return beinsportxtra1();
    case 2:
      return beinsportxtra2();
    default:
      return beinsportxtra1();
  }
}