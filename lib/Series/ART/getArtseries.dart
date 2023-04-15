import 'package:flutter/cupertino.dart';
import 'package:tvlive/Series/ART/arthekayat1.dart';
import 'package:tvlive/Series/ART/arthekayat2.dart';

List<String> arthekayat = [
  'Art Hekayat 1',
  'Art Hekayat 2',
];
Widget getArthekayat(int page) {
  switch (page) {
    case 0:
      return const arthekayat1();
    case 1:
      return const arthekayat2();
    default:
      return const arthekayat1();
  }
}
